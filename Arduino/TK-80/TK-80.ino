#include "SdFat.h"
#include <SPI.h>
SdFat SD;
#define CABLESELECTPIN  (10)
unsigned long r_count=0;
unsigned long f_length=0;
char f_name[40];
char c_name[40];
char sdir[10][40];
File file,w_file,file_r,file_w;
unsigned int s_adrs,e_adrs,w_length,w_len1,w_len2,s_adrs1,s_adrs2,b_length;
boolean eflg;

void sdinit(void){
  // SD初期化
  if( !SD.begin(CABLESELECTPIN,8) )
  {
////    Serial.println("Failed : SD.begin");
    eflg = true;
  } else {
////    Serial.println("OK : SD.begin");
    eflg = false;
  }
////    Serial.println("START");
}

void setup()
{
////  Serial.begin(9600);
// CS=pin10
// pin10 output
  pinMode(10,OUTPUT);
  pinMode( 6,INPUT);  //受信データ
  pinMode( 7,INPUT);  //CHK
  pinMode( 8,OUTPUT); //送信データ
  pinMode( 9,OUTPUT); //FLG
  digitalWrite(8,LOW);
  digitalWrite(9,LOW);
//LOWになるまでループ
  while(digitalRead(7) == HIGH){
  }

  sdinit();
}

//1BIT受信
//受信ビットをリターン
byte rcv1bit(void)
{
//HIGHになるまでループ
  while(digitalRead(7) != HIGH){
  }
//受信
  byte j_data = digitalRead(6);
//FLGをセット
  digitalWrite(9,HIGH);
//LOWになるまでループ
  while(digitalRead(7) == HIGH){
  }
//FLGをリセット
  digitalWrite(9,LOW);
  return(j_data);
}

//1BYTE受信
//受信データをリターン
byte rcv1byte(void)
{
  byte i_data = 0;
//8回ループ
  for(int i=0;i<=7;i++){
    i_data=i_data+(rcv1bit()<<i);
  }
  return(i_data);
}

//1BIT送信
void snd1bit(byte j_data)
{
  if(j_data==1){
    digitalWrite(8,HIGH);
    }else{
    digitalWrite(8,LOW);
    }
  digitalWrite(9,HIGH);
//HIGHになるまでループ
  while(digitalRead(7) != HIGH){
  }
  digitalWrite(9,LOW);
//LOWになるまでループ
  while(digitalRead(7) == HIGH){
  }
}

//1BYTE送信
void snd1byte(byte i_data)
{
//下位ビットから送信
  for(int i=0;i<=7;i++){
    snd1bit((i_data>>i)&0x01);
  }
}

//小文字->大文字
char upper(char c){
  if('a' <= c && c <= 'z'){
    c = c - ('a' - 'A');
  }
  return c;
}

//ファイル名の最後が「.cas」でなければ付加
void addcas(char *f_name){
  unsigned int lp1=0;
  while (f_name[lp1] != 0x0D && f_name[lp1] != 0x00){
    lp1++;
  }
  if (f_name[lp1-4]!='.' ||
    ( f_name[lp1-3]!='C' &&
      f_name[lp1-3]!='c' ) ||
    ( f_name[lp1-2]!='A' &&
      f_name[lp1-2]!='a' ) ||
    ( f_name[lp1-1]!='S' &&
      f_name[lp1-1]!='s' ) ){
         f_name[lp1++] = '.';
         f_name[lp1++] = 'c';
         f_name[lp1++] = 'a';
         f_name[lp1++] = 's';
  }
  f_name[lp1] = 0x00;
}

//比較文字列取得 32+1文字まで取得、ただしダブルコーテーションは無視する
void receive_name(char *f_name){
char r_data;
  unsigned int lp2 = 0;
  for (unsigned int lp1 = 0;lp1 <= 32;lp1++){
    r_data = rcv1byte();
    if (r_data != 0x22){
      f_name[lp2] = r_data;
      lp2++;
    }
  }
}

//SDカードにSAVE
void f_save(void){
char fs_name[9];
byte s_data[256];
//ファイルネーム取得
  unsigned int ff_name = rcv1byte()+rcv1byte()*256;
//xxxx.btkに変換
  sprintf(fs_name, "%04x.btk", ff_name);
//スタートアドレス取得
  int s_adrs1 = rcv1byte();
  int s_adrs2 = rcv1byte();
//スタートアドレス算出
  unsigned int s_adrs = s_adrs1+s_adrs2*256;
//エンドアドレス取得
  int e_adrs1 = rcv1byte();
  int e_adrs2 = rcv1byte();
//エンドアドレス算出
  unsigned int e_adrs = e_adrs1+e_adrs2*256;
//ファイルサイズ算出
  unsigned int f_length = e_adrs - s_adrs;
//ファイルが存在すればERROR
  if (SD.exists(fs_name) == false){
//ファイルオープン
    File p_file = SD.open( fs_name, FILE_WRITE );
    if( true == p_file ){
//状態コード送信(OK)
      snd1byte(0x00);
      p_file.write(s_adrs2);
      p_file.write(s_adrs1);
      p_file.write(e_adrs2);
      p_file.write(e_adrs1);

      long lp1 = 0;
      while (lp1 <= f_length){
        int i=0;
        while(i<=255 && lp1<=f_length){
          s_data[i]=rcv1byte();
          i++;
          lp1++;
        }
        p_file.write(s_data,i);
      }
      
      p_file.close();
    } else {
//状態コード送信(ERROR)
      snd1byte(0xFF);
    }
  } else {
//状態コード送信(ERROR)
    snd1byte(0xF1);
  }
}

//SDカードから読込
void f_load(void){
char fs_name[9];
//ファイルネーム取得
  unsigned int ff_name = rcv1byte()+rcv1byte()*256;
//xxxx.btkに変換
  sprintf(fs_name, "%04x.btk", ff_name);
//ファイルが存在しなければERROR
  if (SD.exists(fs_name) == true){
//ファイルオープン
    File q_file = SD.open( fs_name, FILE_READ );
    if( true == q_file ){
//状態コード送信(OK)
      snd1byte(0x00);
//スタートアドレス取得
      int s_adrs1 = q_file.read();
      snd1byte(s_adrs1);
      int s_adrs2 = q_file.read();
      snd1byte(s_adrs2);
      unsigned int s_adrs = s_adrs1*256+s_adrs2;
//エンドアドレス取得
      int e_adrs1 = q_file.read();
      snd1byte(e_adrs1);
      int e_adrs2 = q_file.read();
      snd1byte(e_adrs2);
      unsigned int e_adrs = e_adrs1*256+e_adrs2;
//ファイルサイズ算出
      unsigned int f_length = e_adrs - s_adrs;
//データ送信
      for (unsigned int lp1 = 0;lp1 <= f_length;lp1++){
        byte i_data = q_file.read();
        snd1byte(i_data);
      }
      q_file.close();
    } else {
//状態コード送信(ERROR)
      snd1byte(0xFF);
    }  
  } else {
//状態コード送信(ERROR)
    snd1byte(0xF1);
  }
}

int str2hex(int str1){
  int wrk1 = str1 - 48;
  if (wrk1 > 10){
    wrk1 = wrk1 - 7;
  }
  if (wrk1 < 0){
    wrk1=0;
  }else{
    if (wrk1>15){
      wrk1=0;
    }
  }
  return wrk1;
}

int hex2strh(int data){
  int wrk = data / 16;
  if (wrk <10){
    wrk = wrk + 48;
  } else {
    wrk = wrk + 55;
  }
  return wrk;
}
int hex2strl(int data){
  int wrk = data % 16;
  if (wrk <10){
    wrk = wrk + 48;
  } else {
    wrk = wrk + 55;
  }
  return wrk;
}

// BS形式LOAD
void bs_load(void){
  boolean flg = false;
  boolean eeflg = false;
  int rdata=0;
  int rdata2=0;
//DOSファイル名取得
  receive_name(f_name);
//ファイル名の指定があるか
  if (f_name[0]!=0x00){
    addcas(f_name);
  
//指定があった場合
//ファイルが存在しなければERROR
    if (SD.exists(f_name) == true){
//ファイルオープン
      file = SD.open( f_name, FILE_READ );

      if( true == file ){
//f_length設定、r_count初期化
        f_length = file.size();
        r_count = 0;
//状態コード送信(OK)
        snd1byte(0x00);
        flg = true;
      } else {
        snd1byte(0xf0);
        sdinit();
        flg = false;
      }
    }else{
      snd1byte(0xf1);
      sdinit();
      flg = false;
    }
  }else{
//ファイル名の指定がなかった場合
//ファイルエンドになっていないか
    if (f_length > r_count){
      snd1byte(0x00);
      flg = true;
    }else{
      snd1byte(0xf1);
      flg = false;
    }
  }

//良ければファイルエンドまで読み込みを続行する
  if (flg == true) {
    rdata = 0;
    rdata2 = 0;
    eeflg = false;
      
    while (eeflg == false){
//ヘッダーが出てくるまで読み飛ばし
      while (rdata != 0x3a && f_length >= r_count) {
        rdata = file.read();
        r_count++;
        if (f_length == r_count){
          eeflg =true;
        }
      }

      if (eeflg == false){
//データ長を送信
        rdata = file.read();
        r_count++;
        rdata2 = file.read();
        r_count++;
        b_length=str2hex(rdata)*16+str2hex(rdata2);
        snd1byte(b_length);
        if (b_length !=0){
//ADDRESS HIを送信
          rdata = file.read();
          r_count++;
          rdata2 = file.read();
          r_count++;
          s_adrs1=str2hex(rdata)*16+str2hex(rdata2);
          snd1byte(s_adrs1);
//ADDRESS LOを送信
          rdata = file.read();
          r_count++;
          rdata2 = file.read();
          r_count++;
          s_adrs2=str2hex(rdata)*16+str2hex(rdata2);
          snd1byte(s_adrs2);
          s_adrs = s_adrs1*256+s_adrs2;
//レコードタイプを読み飛ばし
          rdata = file.read();
          r_count++;
          rdata = file.read();
          r_count++;
//データ長分を読み込んで送信
          for (unsigned int lp1 = 1;lp1 <= b_length;lp1++){
//実データを読み込んで送信
            rdata = file.read();
            r_count++;
            rdata2 = file.read();
            r_count++;
            snd1byte(str2hex(rdata)*16+str2hex(rdata2));
          }
//CHECK SUMを読み飛ばし
          rdata = file.read();
          r_count++;
          rdata = file.read();
          r_count++;
        } else {
//ADDRESS HIを読み飛ばし
          rdata = file.read();
          r_count++;
          rdata2 = file.read();
          r_count++;
//ADDRESS LOを読み飛ばし
          rdata = file.read();
          r_count++;
          rdata2 = file.read();
          r_count++;
//レコードタイプを読み飛ばし
          rdata = file.read();
          r_count++;
          rdata = file.read();
          r_count++;
//CHECK SUMを読み飛ばし
          rdata = file.read();
          r_count++;
          rdata = file.read();
          r_count++;
          eeflg = true;
        }
      }
    }
//ファイルエンドに達していたらFILE CLOSE
    if (f_length == r_count){
      file.close();
    }
  }        
}

void w_body(void){
byte r_data,r_data2,s_dara,csum;

//スタートアドレス取得、書き込み
  s_adrs1 = rcv1byte();
  s_adrs2 = rcv1byte();
//スタートアドレス算出
  s_adrs = s_adrs1+s_adrs2*256;
//エンドアドレス取得
  s_adrs1 = rcv1byte();
  s_adrs2 = rcv1byte();
//エンドアドレス算出
  e_adrs = s_adrs1+s_adrs2*256;
//ファイル長算出、ブロック数算出
  w_length = e_adrs - s_adrs + 1;
  w_len1 = w_length / 16;
  w_len2 = w_length % 16;

    w_file.write(char(0x0D));
    w_file.write(char(0x0A));
//実データ受信、書き込み
//0x10ブロック
  while (w_len1 > 0){
//ヘッダー 0x3A書き込み
    w_file.write(char(0x3A));
    w_file.write(char(0x31));
    w_file.write(char(0x30));
    csum = 0x10;
    csum = csum +(s_adrs / 256);
    csum = csum +(s_adrs % 256);
    w_file.write(hex2strh(s_adrs / 256));
    w_file.write(hex2strl(s_adrs / 256));
    w_file.write(hex2strh(s_adrs % 256));
    w_file.write(hex2strl(s_adrs % 256));
    w_file.write(char(0x30));
    w_file.write(char(0x30));
    for (unsigned int lp1 = 1;lp1 <= 16;lp1++){
      r_data = rcv1byte();
      csum = csum + r_data;
      w_file.write(hex2strh(r_data));
      w_file.write(hex2strl(r_data));
      s_adrs = s_adrs + 1;
    }
//CHECK SUM計算、書き込み
    csum = 0 - csum;
    w_file.write(hex2strh(csum));
    w_file.write(hex2strl(csum));
    w_len1--;
    w_file.write(char(0x0D));
    w_file.write(char(0x0A));
  }
//端数ブロック処理
  if (w_len2 > 0){
//ヘッダー 0x3A書き込み
    w_file.write(char(0x3A));
    w_file.write(hex2strh(w_len2));
    w_file.write(hex2strl(w_len2));
    csum = w_len2;
    csum = csum +(s_adrs / 256);
    csum = csum +(s_adrs % 256);
    w_file.write(hex2strh(s_adrs / 256));
    w_file.write(hex2strl(s_adrs / 256));
    w_file.write(hex2strh(s_adrs % 256));
    w_file.write(hex2strl(s_adrs % 256));
    w_file.write(char(0x30));
    w_file.write(char(0x30));
    for (unsigned int lp1 = 1;lp1 <= w_len2;lp1++){
      r_data = rcv1byte();
        csum = csum + r_data;
      w_file.write(hex2strh(r_data));
      w_file.write(hex2strl(r_data));
      s_adrs = s_adrs + 1;
      }
    csum = 0 - csum;
    w_file.write(hex2strh(csum));
    w_file.write(hex2strl(csum));
    w_file.write(char(0x0D));
    w_file.write(char(0x0A));
    }
//0x00ブロック
    w_file.write(char(0x3A));
    w_file.write(char(0x30));
    w_file.write(char(0x30));
    w_file.write(char(0x30));
    w_file.write(char(0x30));
    w_file.write(char(0x30));
    w_file.write(char(0x30));
    w_file.write(char(0x30));
    w_file.write(char(0x31));
    w_file.write(char(0x0D));
    w_file.write(char(0x0A));
  
}

// BS形式SAVE
void bs_save(void){
byte r_data,csum;
//DOSファイル名取得
  receive_name(f_name);
//ファイル名の指定が無ければエラー
  if (f_name[0]!=0x00){
    addcas(f_name);
  
    if( true == w_file ){
      w_file.close();
    }
//ファイルが存在すればdelete
    if (SD.exists(f_name) == true){
      SD.remove(f_name);
    }
//ファイルオープン
    w_file = SD.open( f_name, FILE_WRITE );
    if( true == w_file ){
//状態コード送信(OK)
      snd1byte(0x00);
      w_body();
      w_file.close();
    }else{
      snd1byte(0xf0);
      sdinit();
    }
  }else{
    snd1byte(0xf6);
    sdinit();
  }
}



//f_nameとc_nameをc_nameに0x00が出るまで比較
//FILENAME COMPARE
boolean f_match(char *f_name,char *c_name){
  boolean flg1 = true;
  unsigned int lp1 = 0;
  while (lp1 <=32 && c_name[0] != 0x00 && flg1 == true){
    if (upper(f_name[lp1]) != c_name[lp1]){
      flg1 = false;
    }
    lp1++;
    if (c_name[lp1]==0x00){
      break;
    }
  }
  return flg1;
}

// SD-CARDのFILELIST
void dirlist(void){
//比較文字列取得 32+1文字まで
  receive_name(c_name);
  File file2 = SD.open( "/" );
  if( file2 == true ){
//状態コード送信(OK)
    snd1byte(0x00);

    File entry =  file2.openNextFile();
    int cntl2 = 0;
    unsigned int br_chk =0;
    int page = 1;
//全件出力の場合には10件出力したところで一時停止、キー入力により継続、打ち切りを選択
    while (br_chk == 0) {
      if(entry){
        entry.getName(f_name,36);
        unsigned int lp1=0;
//一件送信
//比較文字列でファイルネームを先頭から比較して一致するものだけを出力
        if (f_match(f_name,c_name)){
//sdir[]にf_nameを保存
          strcpy(sdir[cntl2],f_name);
          snd1byte(0x30+cntl2);
          snd1byte(0x20);
          while (lp1<=36 && f_name[lp1]!=0x00){
            snd1byte(upper(f_name[lp1]));
            lp1++;
          }
          snd1byte(0x00);
          cntl2++;
        }
      }
// CNTL2 > 表示件数-1
      if (!entry || cntl2 > 9){
//継続・打ち切り選択指示要求
        snd1byte(0xfe);

//選択指示受信(0:継続 B:前ページ 以外:打ち切り)
        br_chk = rcv1byte();
//前ページ処理
        if (br_chk==0x42){
//先頭ファイルへ
          file2.rewindDirectory();
//entry値更新
          entry =  file2.openNextFile();
//もう一度先頭ファイルへ
          file2.rewindDirectory();
          if(page <= 2){
//現在ページが1ページ又は2ページなら1ページ目に戻る処理
            page = 0;
          } else {
//現在ページが3ページ以降なら前々ページまでのファイルを読み飛ばす
            page = page -2;
            cntl2=0;
//page*表示件数
            while(cntl2 < page*10){
                entry =  file2.openNextFile();
                if (f_match(f_name,c_name)){
                  cntl2++;
                }
            }
         }
          br_chk=0;
        }
//1～0までの数字キーが押されたらsdir[]から該当するファイル名を送信
        if(br_chk>=0x30 && br_chk<=0x39){
          file_r = SD.open( sdir[br_chk-0x30], FILE_READ );
          if( file_r == true ){
//f_length設定、r_count初期化
            f_length = file_r.size();
            r_count = 0;
            unsigned int lp2=0;
            snd1byte(0xFD);
            while (lp2<=36 && sdir[br_chk-0x30][lp2]!=0x00){
              snd1byte(upper(sdir[br_chk-0x30][lp2]));
              lp2++;
            }
            snd1byte(0x0D);
            snd1byte(0x00);
          }
        }
        page++;
        cntl2 = 0;
      }
//ファイルがまだあるなら次読み込み、なければ打ち切り指示
      if (entry){
        entry =  file2.openNextFile();
      }else{
        br_chk=1;
      }
    }
//処理終了指示
    snd1byte(0xFF);
    snd1byte(0x00);
  }else{
    snd1byte(0xf1);
  }
}



void loop()
{
  digitalWrite(8,LOW);
  digitalWrite(9,LOW);
////  Serial.println("START");
//コマンド取得待ち
  byte cmd = rcv1byte();
////  Serial.print("CMD:");
////  Serial.println(cmd,HEX);
  if (eflg == false){
    switch(cmd) {
//80hでSDカードにsave
      case 0x80:
////  Serial.println("SAVE START");
//状態コード送信(OK)
        snd1byte(0x00);
        f_save();
        break;
//81hでSDカードからload
      case 0x81:
////  Serial.println("LOAD START");
//状態コード送信(OK)
        snd1byte(0x00);
        f_load();
        break;
//30hでBS形式でSDカードにsave
      case 0x30:
////  Serial.println("BS SAVE START");
//状態コード送信(OK)
        snd1byte(0x00);
        bs_save();
        break;
//31hでSDカードからBS形式をload
      case 0x31:
////  Serial.println("BS LOAD START");
//状態コード送信(OK)
        snd1byte(0x00);
        bs_load();
        break;
//32hでファイルリスト出力
      case 0x32:
////    Serial.println("FILE LIST START");
//状態コード送信(OK)
        snd1byte(0x00);
        sdinit();
        dirlist();
        break;
      default:
//状態コード送信(CMD ERROR)
        snd1byte(0xF4);
    }
  } else {
//状態コード送信(ERROR)
    snd1byte(0xF0);
    sdinit();
  }
}
