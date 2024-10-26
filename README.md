# NEC TK-80BSにSD-Cardとのロード、セーブ機能

![TK-80BS_SD](https://github.com/yanataka60/TK-80BS_SD/blob/main/JPEG/title.jpg)

　ARDUINO+SD-CARDをTK-80BSに接続することでNEC TK-80BS LEVEL2 BASICでSD-CARDとロード、セーブを実現するものです。(LEVEL1 BASICは未所有のため対応していません。)

　実現するためにTK-80BS MONITOR、BS MONITOR及びLEVEL2 BASUCへのパッチ当て、SDアクセスルーチンを合わせてROMに焼く必要があります。

　パッチを当てたROMを使うのでTK-80のROM D454(D464)×3個、TK-80BSのBS MONITOR 2個、LEVEL2BASIC 1個はすべて引き抜きます。

　EXT-BOARD上のSRAM 62256により、A000h～CFFFhまでのRAMが増設されます。また、GAL22V10へ書き込むプログラムを選択することで8000h～81FFhのRAMを増設することも可能です。

　9800h～9FFFhのRAMはTK-80BSボード上で増設してください。

　TK-80標準装備のRAM D5101-E×4個(8200h～83FFh)は7SegLEDをDMA表示する為に必要ですので引き抜いてはいけません。(SRAM 62256では代わりになりません。)

## 回路図
　KiCadフォルダ内のTK-80_EXT-BOARD.pdfを参照してください。

　ROMとRAMの状況によりGAL22V10への書込みプログラムが変わります。

[回路図](https://github.com/yanataka60/TK-80BS_SD/blob/main/KiCad/TK-80_EXT-BOARD.pdf)

![TK-80_SD](https://github.com/yanataka60/TK-80BS_SD/blob/main/KiCad/TK-80_EXT-BOARD_1.jpg)

|番号|品名|数量|備考|
| ------------ | ------------ | ------------ | ------------ |
||J1、J2のいずれか|||
|J1|Micro_SD_Card_Kit|1|秋月電子通商 AE-microSD-LLCNV (注1)|
|J2|MicroSD Card Adapter|1|Arduino等に使われる5V電源に対応したもの(注2)|
|U1|8080A|1|TK-80から引き抜いたもの|
|U3|8228|1|TK-80から引き抜いたもの|
|U8|8255|1|TK-80から引き抜いたもの|
|U5|GAL22V10|1||
|U6|ROM 27512|1||
|U7|SRAM 62256|1||
|U10|Arduino_Pro_Mini_5V|1|Atmega328版を使用 168版は不可。|
|U2、U4、U9|Pin Header|40Pin×4、14Pin×2|秋月電子通商 細ピンヘッダーPHA-1x40SG又は基板用リードフレームBQ04-SN(注3)|
|C1-C3|積層セラミックコンデンサ 0.1uF|3||
|S1-S3|ピンヘッダ3Pin|3|秋月電子通商 ピンヘッダーPH-1x40SGなど|
|LS1|小型スピーカー|1|秋月電子通商 マイクロスピーカーなど|
||ピンソケット(任意)|26Pin分|Arduino_Pro_Miniを取り外し可能としたい場合に調達します 秋月電子通商 FHU-1x42SGなど|

　　　注1)秋月電子通商　AE-microSD-LLCNVのJ1ジャンパはショートしてください。

　　　注2)MicroSD Card Adapterを使う場合

　　　　　J2に取り付けます。

MicroSD Card Adapterについているピンヘッダを除去してハンダ付けするのが一番確実ですが、J2の穴にMicroSD Card Adapterをぴったりと押しつけ、裏から多めにハンダを流し込むことでハンダ付けをする方法もあります。なお、この方法の時にはしっかりハンダ付けが出来たかテスターで導通を確認しておいた方が安心です。

ハンダ付けに自信のない方はJ1の秋月電子通商　AE-microSD-LLCNVをお使いください。AE-microSD-LLCNVならパワーLED、アクセスLEDが付いています。

![MicroSD Card Adapter1]https://github.com/yanataka60/TK-80BS_SD/blob/main/JPEG/MicroSD%20Card%20Adapter.jpg)

　　　注3)細ピンヘッダーと基板用リードフレームの選択
![Pin](https://github.com/yanataka60/TK-80BS_SD/blob/main/JPEG/PIN.jpg)

どちらでも大丈夫ですが、あえて言うなら

〇細ピンヘッダー

　ピンが固く曲がってしまうことは無いので嵌めるときに位置合わせだけ気を付ければ大丈夫。

　細ピンとはいえピンに厚みがあるので嵌めるのに結構力が必要です。ちゃんと嵌っていないと外れやすいです。

　リードフレームより外し易いです。(簡単に抜けてしまうわけではないです)

〇リードフレーム

　ピンがすぐ曲がってしまうため、嵌めるときに気を付けないとピンが折れ曲がってしまう危険があります。

　嵌ってしまうとかなり外し難いです。無理に外そうとするとピンが曲がってしまうため慎重に外す必要があります。

　外れ難いということは、使っている分には外れないという安心感があります。

## ROMへの書込み
　まず、MONITOR-ROM(0000h-02FFh)、BS MONITOR-ROM(F000h-FFFFh)、LEVEL2 BASIC-ROM(D000h-EFFFh)の内容をすべて読み出し、それぞれのアドレスに配置して0000h～FFFFhまでのバイナリファイルを作成し、バイナリエディタ等で以下の修正をします。

|ADDRESS|修正前|修正後|
| ------------ | ------------ | ------------ |
|003C|FF|F0|
|0052|FF|F0|
|0080|D5 00|00 03|
|0082|07 01|03 03|
|024B|EF|E0|
|0258|DF|D0|
|0265|BF|B0|
|E2C6|4C 4F 41 44 48|46 49 4C 45 53|
|E42C|4B E5|0603|
|E42E|EE E4|0903|
|E430|FC E4|0603|
|E432|E1 E4|0C03|
|F1F7|43 54|5344|
|F1FB|A2 F2|0F03|
|F21F|F1 F2|1203|
|F225|4D F3|1503|

　次にバイナリエディタでTK-80BS_SDリポジトリ8080フォルダ中のfile_trans_TK80BS.binの内容で0300h～0977hを書き換えます。

　ROMに焼き、EXT-BOARDに装着します。

## Arduinoへの書込み
　Arduino IDEを使ってArduinoフォルダTK-80_SDフォルダ内TK-80_SD.inoを書き込みます。

　SdFatライブラリを使用しているのでArduino IDEメニューのライブラリの管理からライブラリマネージャを立ち上げて「SdFat」をインストールしてください。

　「SdFat」で検索すれば見つかります。「SdFat」と「SdFat - Adafruit Fork」が見つかりますが「SdFat」のほうを使っています。

注)Arduinoを基板に直付けしている場合、Arduinoプログラムを書き込むときは、EXT-BOARDをTK-80本体から外し、GAL22V10を外したうえで書き込んでください。

## GAL22V10への書込み
　WINCUPLファルダに二通りのプログラムがあります。増設RAMの状況によりjedファイルを選択してROMライター(TL866II Plus等)を使ってGAL22V10に書き込んでください。

　(1)TK-80本体の増設RAM(8000h-81FFh)及びTK-80BSの増設RAM(9800h-9FFFh)を増設済みの場合

　TK80BS_1(ROM 0000-7BFF D000-FFFF,RAM A000-CFFF)フォルダのTK80.jed

　(2)TK-80本体の増設RAM(8000h-81FFh)は未装着、TK-80BSの増設RAM(9800h-9FFFh)は増設済みの場合

　TK80BS_2(ROM 0000-7BFF D000-FFFF,RAM 8000-81FF A000-CFFF)フォルダのTK80.jed

## SD-CARD
　出来れば8GB以下のSDカードを用意してください。

　ArduinoのSdFatライブラリは、SD規格(最大2GB)、SDHC規格(2GB～32GB)に対応していますが、SDXC規格(32GB～2TB)には対応していません。

　また、SDHC規格のSDカードであっても32GB、16GBは相性により動作しないものがあるようです。

　FAT16又はFAT32が認識できます。NTFSは認識できません。

## 操作方法
### TK-80
#### 扱えるファイル
　拡張子btkとなっているバイナリファイルです。

　ファイル名は0000～FFFFまでの16進数4桁を付けてください。(例:1000.btk)

　この16進数4桁がTK-80からSD-Card内のファイルを識別するファイルNoとなります。

　BTKファイルのフォーマットは、バイナリファイル本体データの先頭に開始アドレス、終了アドレスの4Byteのを付加した形になっています。

　パソコンのクロスアセンブラ等でTK-80用の実行binファイルを作成したらバイナリエディタ等で先頭に開始アドレス、終了アドレスの4Byteを付加し、ファイル名を変更したものをSD-Cardのルートディレクトリに保存すればTK-80から呼び出せるようになります。

#### Save
　4桁のファイルNo(xxxx)をデータ表示部のLEDに入力してSTORE DATAを押します。

　正常にSaveが完了するとアドレス部にスタートアドレス、データ部にエンドアドレスが表示されます。

　　　8000H～8390Hまでをxxxx.BTKとしてセーブします。セーブ範囲は固定となっていて指定はできません。

　「F0F0F0F0」と表示された場合はSD-Card未挿入です。確認してください。

#### Load
　4桁のファイルNo(xxxx)をデータ表示部のLEDに入力してLOAD DATAキーを押します。

　　　xxxx.BTKをBTKヘッダ情報で示されたアドレスにロードします。ただし、8391H～83FFHまでの範囲はライトプロテクトされます。

　正常にLoadが完了するとアドレス部にスタートアドレス、データ部にエンドアドレスが表示されます。スタートアドレスが実行開始アドレスであればそのままRUNキーを押すことでプログラムが実行できます。

　「F0F0F0F0F0」と表示された場合はSD-Card未挿入、「F1F1F1F1F1」と表示された場合はファイルNoのファイルが存在しない場合です。確認してください。

　異常が無いと思われるのにエラーとなってしまう場合にはTK-80をリセットしてからやり直してみてください。


### TK-80BSで扱えるファイル
　BS MONITOR、BS LEVEL2 BASIC共にルートに置かれた拡張子が「.CAS」ファイルのみ認識できます。(以外のファイル、フォルダも表示されますがLOAD実行の対象になりません)

　ファイル名は拡張子を除いて32文字まで、ただし半角カタカナ、及び一部の記号はArduinoが認識しないので使えません。パソコンでファイル名を付けるときはアルファベット、数字および空白でファイル名をつけてください。

　TK-80BSでのCASファイルとは、インテルHEX形式のファイルです。BIN2HEX等の変換プログラムでHEXファイルを作成した場合には拡張子をHEXからCASに変更して使ってください。

### TK-80BS MONITOR
#### SD[復改]又はSD,文字列[復改]
文字列を入力せずにSD[復改]のみ入力するとSD-CARDルートディレクトリにあるファイルの一覧を表示します。

文字列を付けて入力すればSD-CARDルートディレクトリにあるその文字列から始まるファイルの一覧を表示します。

10件表示したところで指示待ちになるので打ち切るなら!を入力、Bキーで前の10件に戻ります。それ以外のキーで次の10件を表示します。

　行頭に0から9の数字を付加して表示してあるのでロードしたいファイルの頭についている数字を入力するとロードが実行されます。

　BASICプログラム、機械語プログラムのどちらもロード対象となり、8802hから始まるCASファイルがBASICプログラムとして認識され、それ以外のアドレスから始まるCASファイルは機械語プログラムとして認識します。

　BASICプログラムと認識した場合にはBASICテキスト終了ポインタもセットされます。

　表示される順番は、登録順となりファイル名アルファベッド順などのソートした順で表示することはできません。

##### 例)
　　SD[復改]

　　SD,SPACE[復改]

#### LT,DOSファイル名[復改]
　指定したDOSファイル名のファイルをSD-CARDからLOADします。

拡張子「CAS」は入力してもしなくても構いません。

　BASICプログラム、機械語プログラムのどちらもロード対象となり、8802hから始まるCASファイルがBASICプログラムとして認識され、それ以外のアドレスから始まるCASファイルは機械語プログラムとして認識します。

　BASICプログラムと認識した場合にはBASICテキスト終了ポインタもセットされます。

##### 例)
　　LT,SPACE[復改]

#### LT[復改]
　複数のCASファイルを連結してまとめて一つのCASファイルとなっている場合、SDコマンド又はLT,DOSファイル名[復改]で一つ目のプログラムをロードしていた場合に限り二つ目以降のプログラムはLT[復改]のみでロード出来ます。

　複数のCASファイルの連結については後述します。

　BASICプログラム、機械語プログラムのどちらもロード対象となり、8802hから始まるCASファイルがBASICプログラムとして認識され、それ以外のアドレスから始まるCASファイルは機械語プログラムとして認識します。

　BASICプログラムと認識した場合にはBASICテキスト終了ポインタもセットされます。

#### ST,開始アドレス,終了アドレス,DOSファイル名[復改]
　開始アドレスから終了アドレスまでの機械語プログラムをDOSファイル名でSAVEします。

　拡張子「CAS」は自動的に付加されます。

##### 例)
　　ST,9000,93FF,SPACE[復改]

### TK-80BS LEVEL2 BASIC
#### FILES[復改]又はFILES 文字列[復改]
文字列を入力せずにFILES[復改]のみ入力するとSD-CARDルートディレクトリにあるファイルの一覧を表示します。

文字列を付けて入力すればSD-CARDルートディレクトリにあるその文字列から始まるファイルの一覧を表示します。

文字列はダブルコーテーションで括っても括らなくてもどちらでも構いません。

10件表示したところで指示待ちになるので打ち切るなら!を入力、Bキーで前の10件に戻ります。それ以外のキーで次の10件を表示します。

　行頭に0から9の数字を付加して表示してあるのでロードしたいファイルの頭についている数字を入力するとロードが実行されます。

　BASICプログラム、機械語プログラムのどちらもロード対象となり、8802hから始まるCASファイルがBASICプログラムとして認識され、それ以外のアドレスから始まるCASファイルは機械語プログラムとして認識します。

　BASICプログラムと認識した場合にはBASICテキスト終了ポインタもセットされます。

　表示される順番は、登録順となりファイル名アルファベッド順などのソートした順で表示することはできません。

##### 例)
　　FILES[復改]

　　FILES SPACE[復改]

　　FILES "SPACE"[復改]

#### LOAD DOSファイル名[復改]
　指定したDOSファイル名のファイルをSD-CARDからLOADします。

拡張子「CAS」は入力してもしなくても構いません。

DOSファイル名はダブルコーテーションで括っても括らなくてもどちらでも構いません。

　BASICプログラム、機械語プログラムのどちらもロード対象となり、8802hから始まるCASファイルがBASICプログラムとして認識され、それ以外のアドレスから始まるCASファイルは機械語プログラムとして認識します。

　BASICプログラムと認識した場合にはBASICテキスト終了ポインタもセットされます。

##### 例)
　　LOAD SPACE[復改]

　　LOAD "SPACE"[復改]

#### LOAD[復改]
　複数のCASファイルを連結してまとめて一つのCASファイルとなっている場合、FILESコマンド又はLOAD DOSファイル名[復改]で一つ目のプログラムをロードしていた場合に限り二つ目以降のプログラムはLOAD[復改]のみでロード出来ます。

　複数のCASファイルの連結については後述します。

　BASICプログラム、機械語プログラムのどちらもロード対象となり、8802hから始まるCASファイルがBASICプログラムとして認識され、それ以外のアドレスから始まるCASファイルは機械語プログラムとして認識します。

　BASICプログラムと認識した場合にはBASICテキスト終了ポインタもセットされます。

#### SAVE DOSファイル名[復改]
　BASICプログラムをDOSファイル名でSAVEします。

　拡張子「CAS」は自動的に付加されます。

DOSファイル名はダブルコーテーションで括っても括らなくてもどちらでも構いません。

##### 例)
　　SAVE SPACE[復改]

　　SAVE "SPACE"[復改]

## CASファイルの連結
BASICプログラムから機械語プログラムを呼び出して動くアプリケーションの場合、それぞれ別のDOSファイル名で保存して別々にLOADしても良いのですが、１本のCASファイルにまとめて扱うことも可能です。

例えば「TESTBAS.CAS」と「TESTBIN.CAS」をまとめる場合にはテキストエディタで「TESTBAS.CAS」の後ろに「TESTBIN.CAS」をコピーし別名で保存します。例として「TESTBASBIN.CAS」とします。

「TESTBAS.CAS」

![TESTBAS](https://github.com/yanataka60/TK-80BS_SD/blob/main/JPEG/TESTBAS.jpg)

「TESTBIN.CAS」

![TESTBIN](https://github.com/yanataka60/TK-80BS_SD/blob/main/JPEG/TESTBIN.jpg)

「TESTBASBIN.CAS」

![TESTBASBIN](https://github.com/yanataka60/TK-80BS_SD/blob/main/JPEG/TESTBASBIN.jpg)

このファイルは「LOAD TESTBASBIN[復改]」としてBASICプログラムをLOADし、次に「LOAD[復改]」とすることで機械語プログラムが読み込まれるCASファイルとなります。

また、「TESTBAS.CAS」の最終行を削除してから「TESTBIN.CAS」をコピーし別名で保存すれば、「LOAD TESTBASBIN[復改]」でBASICプログラムと機械語プログラムをまとめてLOADすることも可能です。

![TESTBASBIN2](https://github.com/yanataka60/TK-80BS_SD/blob/main/JPEG/TESTBASBIN2.jpg)

BASICプログラムと機械語プログラムの連結を例にあげましたが、BASICプログラムとBASICプログラム、機械語プログラムと機械語プログラムでも同じです。

また、３つ以上のプログラムをまとめてしまうことも可能です。
