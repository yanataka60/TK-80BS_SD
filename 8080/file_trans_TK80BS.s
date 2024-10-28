LEDREG		EQU		83ECH      ;TK80 MONITOR
RGDSP		EQU		01A1H      ;TK80 MONITOR
MONST		EQU		0051H      ;TK80 MONITOR
MIN			EQU		7C6FH      ;TK80 WORK -(8391H)
MAX			EQU		7C00H      ;TK80 WORK -(83FFH+1)

FNAME		EQU		83E6H      ;DEレジスタセーブエリアを流用
SADRS		EQU		83E8H      ;BCレジスタセーブエリアを流用
EADRS		EQU		83EAH      ;AFレジスタセーブエリアを流用

;BS MONITOR PARAMETER
PARA1		EQU		8416H		;2Byte
PARA2		EQU		8418H		;2Byte
PARA3		EQU		841AH		;2Byte
LENINPUT	EQU		841CH		;1Byte
LBUF		EQU		841DH		;80Byte 841DH～846CH
CHR2		EQU		8473H		;2Byte
DSPCHR		EQU		8479H		;1Byte
STRLEN		EQU		847AH		;1Byte
STRPRN		EQU		847BH		;2Byte
CSRX		EQU		847DH		;1Byte
CSRY		EQU		847EH		;1Byte
VADRS		EQU		847FH		;2Byte

;BS MONITOR SUBROUTINE
MONSTART	EQU		0F109H
CHAR2BIN	EQU		0F6A6H		;(HL)から4文字以内のキャラクタコードを16進数にして(DE)に格納,文字数+1目には2CH等の16進数以外のASCIIコードが必須
CHR2BIN		EQU		0F72DH		;Aレジスタの16進数を表すキャラクタコードを16進数に変換
BIN2CHR		EQU		0F74CH		;Aレジスタの16進数を2Byteの16進数を表すキャラクタコードに変換 8473H:上位4ビットのキャラクタコード 8474H:下位4ビットのキャラクタコード
ERRCHK		EQU		0F77FH
ERRCODE		EQU		0F804H		;Aレジスタのエラーコードによりエラーメッセージを表示
								;	00	ｺﾏﾝﾄﾞ ﾒｲ ｱﾔﾏﾘ
								;	01	ﾊﾟﾗﾒｰﾀ ｱﾔﾏﾘ
								;	02	ｱﾄﾞﾚｽ ｼﾃｲ ｱﾔﾏﾘ
								;	03	ﾃﾞｰﾀ ﾌｫｰﾏｯﾄ ｱﾔﾏﾘ
								;	04	ﾃﾞｰﾀ ﾆｭｰﾒﾘｯｸ ｱﾔﾏﾘ
								;	05	ﾃｰﾌﾟ ﾘｰﾄﾞ ｴﾗｰ
								;	06	ﾃｰﾌﾟ ﾁｪｯｸ ｻﾑ ｴﾗｰ
								;	07	ﾆｭｳﾘｮｸ ｱﾔﾏﾘ
								;	08	ｴﾝｻﾞﾝ ｴﾗｰ
								;	09	ﾍﾝｽｳ ｵｰﾊﾞｰ
								;	0A	ｽﾃｰﾄﾒﾝﾄ ｱﾔﾏﾘ
								;	0B	ﾒﾓﾘ ｵｰﾊﾞｰﾌﾛｰ
								;	0C	ﾊﾞｲﾄ ﾋｶｸ ｴﾗｰ
LINEIN		EQU		0F946H		;キーボードからの文字列読込
								;	841CH:入力された文字数
								;	841DH～846EH:入力文字列バッファ
CHRPR2		EQU		0F9A0H		;(DSPCHR)の1文字を出力
;*****KEYIN		EQU		0FA44H		;一文字入力 -> Aレジスタ
TVEX2		EQU		0FA44H		;カーソル移動 CSRX:1～32 CSRY:1～16の範囲に設定
STRPR		EQU		0FA52h		;文字列表示,文字数を(STRLEN)にセット,文字列を(STRPRN)にセット
CLS			EQU		0FA6CH		;画面消去
VRAM		EQU		0FAB9H		;CSRX、CSRYからVRAMアドレスを計算してVADRSへ格納
;***CHRPR3		EQU		0FC4FH		;AレジスタをCMTに出力、ASCIIコードとして表示

;GETCH							;LP1:	LD		A,(7DFEH)
								;		AND		20H
								;		JP		LP1
								;		LD		A,(7DFCH)
								;		RET
								
;KEYSCAN						;		LD		A,(7DFEH)
								;		SUB		20H
								;		CCF
								;		RET

;LEVEL2 BASIC PARAMETER
TXTENDPNT	EQU		8800H		;BASICテキスト終了アドレスポインタ
TEXTSTART	EQU		8802H		;BASICテキスト開始アドレス

;LEVEL2 BASIC SUBROUTINE
;***SPCPR		EQU		0D021H		;空白1文字表示:Aレジスタ破壊
;***CHRPR		EQU		0D023H		;Aレジスタのキャラクタコード表示
;***STRPRT		EQU		0DF04H		;(HL)の文字列を表示:(HL)の先頭1Byteは文字数、0Dh0Ahも有効
BASCMD		EQU		0E052H		;コマンドプロンプト


;F9H PORTB Bit(INPUT)
;7 IN			A37
;6 IN			A36
;5 IN			A35
;4 IN			A34
;3 IN			A33
;2 IN CHK		A32		9(FLG)
;1 IN			A31
;0 IN 受信データ	A30		8(OUT)

;FAH PORTC Bit(OUTPUT)
;7 OUT
;6 OUT
;5 OUT
;4 OUT
;3 OUT 			A41
;2 OUT	FLG		A40		7(CHK)
;1 OUT			A39
;0 OUT 送信データ	A38		6(IN)

		ORG		0300H

JP1:	JP		SDSAVE		;TK-80 SDSAVE
JP2:	JP		SDLOAD		;TK-80 SDLOAD
JP3:	JP		BSBDIR		;TK-80BS BASIC LEVEL2 SDファイル名一覧
JP4:	JP		BSBLOAD		;TK-80BS BASIC LEVEL2 SDLOAD
JP5:	JP		BSBSAVE		;TK-80BS BASIC LEVEL2 SDSAVE
JP6:	JP		BSMDIR		;TK-80BS MONITOR SDファイル名一覧
JP7:	JP		BSMSAVE		;TK-80BS MONITOR SDSAVE
JP8:	JP		BSMLOAD		;TK-80BS MONITOR SDSAVE

;TK-80 受信ヘッダ情報をセットし、SDカードからLOAD実行
;FNAME <- 0000H～FFFFHを入力。
;         ファイルネームは「xxxx.BTK」となる。
SDLOAD:	CALL	INIT
		LD		A,81H
		CALL	SNDBYTE    ;LOADコマンド81Hを送信
		CALL	RCVBYTE    ;状態取得(00H=OK)
		AND		A          ;00以外ならERROR
		JP		NZ,SVERR
		LD		HL,FNAME   ;FNAME <- LEDREG
TKMODE5:LD		DE,LEDREG
TKMD5:	LD		A,(DE)     ;FNAME取得
		LD		(HL),A
		INC		HL
		INC		DE
		LD		A,(DE)
		LD		(HL),A
		LD		HL,FNAME   ;FNAME送信
		LD		A,(HL)
		CALL	SNDBYTE
		INC		HL
		LD		A,(HL)
		CALL	SNDBYTE
		CALL	RCVBYTE    ;状態取得(00H=OK)
		AND		A          ;00以外ならERROR
		JP		NZ,SVERR
		CALL	HDRCV      ;ヘッダ情報受信
		CALL	DBRCV      ;データ受信
		JP		SDSV3      ;LOAD情報表示

;TK-80 送信ヘッダ情報をセットし、SDカードへSAVE実行
;FNAME <- 0000H～FFFFHを入力。
;         ファイルネームは「xxxx.BTK」となる。
;SADRS <- 保存開始アドレス(8000H固定)
;EADRS <- 保存終了アドレス(8390H固定)

SDSAVE:	LD		HL,SADRS
		LD		(HL),00H
		INC		HL
		LD		(HL),80H   ;SADRS <- 8000H
		INC		HL         ;HL <- EADRS
		LD		(HL),090H
		INC		HL
		LD		(HL),083H  ;EADRS <- 8390H
		CALL	INIT
SDSAVE2:
		LD		A,80H
		CALL	SNDBYTE    ;SAVEコマンド80Hを送信
		CALL	RCVBYTE    ;状態取得(00H=OK)
		AND		A          ;00以外ならERROR
		JP		NZ,SVERR
		LD		HL,FNAME   ;FNAME <- LEDREG
TKMODE4:LD		DE,LEDREG
TKMD4:	LD		A,(DE)     ;FNAME取得
		LD		(HL),A
		INC		HL
		INC		DE
		LD		A,(DE)
		LD		(HL),A
		CALL	HDSEND     ;ヘッダ情報送信
		CALL	RCVBYTE    ;状態取得(00H=OK)
		AND		A          ;00以外ならERROR
		JP		NZ,SVERR
		CALL	DBSEND     ;データ送信
SDSV3:	CALL	OKDSP      ;SAVE情報表示
MONRET:	JP		MONST;MONITOR復帰(TK85)

SVERR:	CALL	ERRDSP     ;FFH:FILE OPEN ERROR F0H:SDカード初期化ERROR
		JP		MONRET     ;F1H;FILE存在ERROR

;ヘッダ送信
HDSEND:	LD		B,06H
		LD		HL,FNAME   ;FNAME送信、SADRS送信、EADRS送信
HDSD1:	LD		A,(HL)
		CALL	SNDBYTE
		INC		HL
		DEC		B
		JP		NZ,HDSD1
		RET

;データ送信
;SADRSからEADRSまでを送信
DBSEND:	LD		HL,(EADRS)
		EX		DE,HL
		LD		HL,(SADRS)
DBSLOP:	LD		A,(HL)
		CALL	ADRSDSP
		CALL	SNDBYTE
		LD		A,H
		CP		D
		JP		NZ,DBSLP1
		LD		A,L
		CP		E
		JP		Z,DBSLP2   ;HL = DE までLOOP
DBSLP1:	INC		HL
		JP		DBSLOP
DBSLP2:	RET

;SAVE、LOAD中経過表示
ADRSDSP:
		PUSH	HL
		PUSH	DE
		PUSH	AF
		EX		DE,HL      ;LEDREG <- 現在ADRS
		LD		HL,LEDREG
		LD		A,(DE)
		LD		(HL),A
		INC		DE
		INC		HL
		LD		A,(DE)
		LD		(HL),A
		INC		HL
		LD		DE,SADRS   ;LEDREG+2 <- SADRS
		LD		A,(DE)
		LD		(HL),A
		INC		DE
		INC		HL
		LD		A,(DE)
		LD		(HL),A
		CALL	RGDSP
		POP		AF
		POP		DE
		POP		HL
		RET

;SAVE、LOAD正常終了ならSADRS、EADRSをLEDに表示
OKDSP:
TKMODE6:LD		HL,LEDREG
TKMD6:	LD		DE,EADRS  ;LEDREG <- EADRS
		LD		A,(DE)
		LD		(HL),A
		INC		DE
		INC		HL
		LD		A,(DE)
		LD		(HL),A
		INC		HL
		LD		DE,SADRS  ;LEDREG+2 <- SADRS
		LD		A,(DE)
		LD		(HL),A
		INC		DE
		INC		HL
		LD		A,(DE)
		LD		(HL),A
OKDSP2:	
TKMODE2:CALL	RGDSP
		RET

;ヘッダ受信(スタートアドレス、終了アドレス)
HDRCV:	LD		HL,SADRS+1 ;SADRS取得
		CALL	RCVBYTE
		LD		(HL),A
		DEC		HL
		CALL	RCVBYTE
		LD		(HL),A
		LD		HL,EADRS+1 ;EADRS取得
		CALL	RCVBYTE
		LD		(HL),A
		DEC		HL
		CALL	RCVBYTE
		LD		(HL),A
		RET

;データ受信
DBRCV:	LD		HL,(EADRS)
		EX		DE,HL
		LD		HL,(SADRS)
DBRLOP:
		CALL	ADRSDSP
		CALL	RCVBYTE
		LD		B,A
		CALL	JOGAI     ;WORKエリアを識別してSKIP
		AND		A
		JP		NZ,SKIP
		LD		A,B
		LD		(HL),A
SKIP:	LD		A,H
		CP		D
		JP		NZ,DBRLP1
		LD		A,L
		CP		E
		JP		Z,DBRLP2   ;HL = DE までLOOP
DBRLP1:	INC		HL
		JP		DBRLOP
DBRLP2:	RET
		
;SAVE、LOADエラー終了処理(F0H又はFFHをLEDに表示)
ERRDSP: PUSH	AF
TKMODE7:LD		HL,LEDREG
TKMD7:	POP		AF
		LD		(HL),A
		INC		HL
		LD		(HL),A
		INC		HL
		LD		(HL),A
		INC		HL
		LD		(HL),A
		JP		OKDSP2

;1BYTE送信
;Aレジスタの内容を下位BITから送信
SNDBYTE:PUSH 	BC
		LD		B,08H
SBLOP1:	RRCA               ;最下位BITをCフラグへ
		PUSH	AF
		JP		NC,SBRES   ;Cフラグ = 0
SBSET:	LD		A,01H      ;Cフラグ = 1
		JP		SBSND
SBRES:	LD		A,00H
SBSND:	CALL	SND1BIT    ;1BIT送信
		POP		AF
		DEC		B
		JP		NZ,SBLOP1  ;8BIT分LOOP
		POP		BC
		RET
		
;1BIT送信
;Aレジスタ(00Hor01H)を送信する
SND1BIT:
		OUT		(0FBH),A    ;PORTC BIT0 <- A(00H or 01H)
		LD		A,05H
		OUT		(0FBH),A    ;PORTC BIT2 <- 1
		CALL	F1CHK      ;PORTB BIT2が1になるまでLOOP
		LD		A,04H
		OUT		(0FBH),A    ;PORTC BIT2 <- 0
		CALL	F2CHK      ;PORTB BIT2が0になるまでLOOP
		RET
		
;1BYTE受信
;受信DATAをAレジスタにセットしてリターン
RCVBYTE:PUSH 	BC
		LD		C,00H
		LD		B,08H
RBLOP1:	CALL	RCV1BIT    ;1BIT受信
		AND		A          ;A=0?
		LD		A,C
		JP		Z,RBRES    ;0
RBSET:	INC		A          ;1
RBRES:	RRCA               ;Aレジスタ右SHIFT
		LD		C,A
		DEC		B
		JP		NZ,RBLOP1  ;8BIT分LOOP
		LD		A,C        ;受信DATAをAレジスタへ
		POP		BC
		RET
		
;1BIT受信
;受信BITをAレジスタに保存してリターン
RCV1BIT:CALL	F1CHK      ;PORTB BIT2が1になるまでLOOP
		IN		A,(0F9H)    ;PORTB BIT0
		AND		01H
		PUSH	AF
		LD		A,05H
		OUT		(0FBH),A    ;PORTC BIT2 <- 1
		CALL	F2CHK      ;PORTB BIT2が0になるまでLOOP
		LD		A,04H
		OUT		(0FBH),A    ;PORTC BIT2 <- 0
		POP		AF         ;受信DATAセット
		RET
		
;BUSYをCHECK(1)
; 81H BIT2が1になるまでLOP
F1CHK:	IN		A,(0F9H)
		AND		04H        ;PORTB BIT2 = 1?
		JP		Z,F1CHK
		RET

;BUSYをCHECK(0)
; 81H BIT2が0になるまでLOOP
F2CHK:	IN		A,(0F9H)
		AND		04H        ;PORTB BIT2 = 0?
		JP		NZ,F2CHK
		RET

;WORKエリアを識別
;8391H～83FFHはLOADをSKIP
JOGAI:		PUSH	HL
			PUSH	DE
			EX		DE,HL
JOGAI_TK:	LD		HL,MIN
			ADD		HL,DE
			JP		NC,JGOK    ;MIN未満ならOK
			LD		HL,MAX
			ADD		HL,DE
			JP		NC,JGERR   ;MAX未満ならSKIP
JGOK:		XOR		A          ;OKならAレジスタ=0
			JP		JGRTN
JGERR:		LD		A,01H      ;SKIP範囲ならAレジスタ=1
			JP		JGRTN
JGRTN:		POP		DE
			POP		HL
			RET

;8255初期化
INIT:
;出力BITをリセット
INIT2:	LD		A,92H
		OUT		(0FBH),A
		LD		A,80H      ;PORTC <- 80H
		OUT		(0FAH),A
		RET
		
			ORG		0500H

;************** BS MONITOR STコマンド ************************
BSMSAVE:CALL	INIT
		LD		HL,LBUF-1	;LBUFからファイル名取り出し
BSM1:	INC		HL
		LD		A,(HL)
		CP		0DH			;0DHならファイル名無し
		JP		Z,BSM41
		CP		2CH			;一つめ「,」
		JP		NZ,BSM1
BSM2:	INC		HL
		LD		A,(HL)
		CP		0DH			;0DHならファイル名無し
		JP		Z,BSM41
		CP		2CH			;二つめ「,」
		JP		NZ,BSM2
BSM3:	INC		HL
		LD		A,(HL)
		CP		0DH			;0DHならファイル名無し
		JP		Z,BSM41
		CP		2CH			;三つめ「,」
		JP		NZ,BSM3
		INC		HL
BSM4:	PUSH	HL
		LD		HL,(PARA1)
		EX		DE,HL
		LD		HL,(PARA2)
		CALL	ERRCHK		;パラメータ大小チェック
		JP		NC,BSM5
BSM41:	LD		A,02H
		CALL	ERRCODE		;パラメータERROR
		POP		HL
		JP		MONSTART
BSM5:	POP		HL
		LD		A,30H		;コマンド30H(BS形式でSAVE)
		CALL	STCMD
		JP		NZ,SDERR2

		LD		HL,MSG2
		CALL	STRPRT

		LD		HL,(PARA1)	;SAVE開始アドレス
		LD		A,L
		CALL	SNDBYTE		;SAVE START LO
		INC		HL
		LD		A,H
		CALL	SNDBYTE		;SAVE START HI
		LD		HL,(PARA2)	;SAVE終了アドレス
		LD		A,L
		CALL	SNDBYTE		;SAVE END LO
		LD		A,H
		CALL	SNDBYTE		;SAVE END HI
			
		LD		HL,(PARA2)
		LD		A,H
		CPL
		LD		H,A
		LD		A,L
		CPL
		LD		L,A
		LD		(PARA3),HL
			
		LD		HL,(PARA1)
BSM6:	LD		A,(HL)		;実データ送信
		CALL	SNDBYTE
		INC		HL
		EX		DE,HL
		LD		HL,(PARA3)
		ADD		HL,DE
		EX		DE,HL
		JP		NC,BSM6
		JP		MONSTART

;**** コマンド、ファイル名送信 (IN:A コマンドコード HL:ファイルネームの先頭)****
STCMD:	PUSH	HL
		CALL	STCD             ;コマンドコード送信
		POP		HL
		AND		A                ;00以外ならERROR
		RET		NZ
		CALL	STFS             ;ファイルネーム送信
		AND		A                ;00以外ならERROR
		RET

;**** コマンド送信 (IN:A コマンドコード)****
STCD:	CALL	SNDBYTE          ;Aレジスタのコマンドコードを送信
		CALL	RCVBYTE          ;状態取得(00H=OK)
		RET

;**** ファイルネーム送信(IN:HL ファイルネームの先頭) ******
STFS:	LD		B,20H
STFS1:	LD		A,(HL)           ;FNAME送信
		CP		0DH
		JP		NZ,STFS2
		XOR		A
STFS2:	CALL	SNDBYTE
		INC		HL
		DEC		B
		JP		NZ,STFS1
		LD		A,00H
		CALL	SNDBYTE
		CALL	RCVBYTE          ;状態取得(00H=OK)
		RET

;************** エラー内容表示 *****************************
SDERR:	PUSH	AF
		CALL	ERRPR
		POP		AF
		RET

SDERR2:	PUSH	AF
		CALL	ERRPR
		POP		AF
		JP		MONSTART
		
SDERR3:	PUSH	AF
		CALL	ERRPR
		POP		AF
		JP		BASCMD
		
;***************** BS MONITOR LTコマンド ************************
BSMLOAD:
		CALL	INIT
		LD		HL,LBUF-1	;LBUFからファイル名取り出し
BSML1:	INC		HL
		LD		A,(HL)
		CP		0DH			;0DHならファイル名無し
		JP		Z,BSML4
		CP		2CH			;一つめ「,」
		JP		NZ,BSML1
		INC		HL
BSML4:	LD		A,31H		;コマンド31H(BS形式をLOAD)
		CALL	STCMD
		JP		NZ,SDERR2

		CALL	BSLOAD		;LOAD処理

		JP		MONSTART

;********************* BS形式LOAD処理サブルーチン ************************
BSLOAD:
		LD		HL,MSG1		;「LOADING」表示
		CALL	STRPRT
		CALL	RCVBYTE     ;DATA長受信
		OR		A
		JP		Z,BSML99
		LD		B,A			;B <- DATA長
		CALL	RCVBYTE		;書込開始アドレス(H)を取得
		LD		H,A
		CALL	HEX1PR		;開始アドレス表示(H)
		CALL	RCVBYTE		;書込開始アドレス(L)を取得
		LD		L,A
		CALL	HEX1PR		;開始アドレス表示(L)
		CALL	BASIC		;BASICプログラム判定
BSML6:	CALL	RCVBYTE		;データ受信
		LD		(HL),A
		INC		HL
		DEC		B			;DATA長分ループ
		JP		NZ,BSML6

		LD		D,H
		LD		E,L

BSML55:
		LD		A,2EH		;以降は一行ごとにドット表示
		CALL	CHRPR
		CALL	RCVBYTE		;DATA長受信
		OR		A
		JP		Z,BSML99
		LD		B,A			;B <- DATA長
		CALL	RCVBYTE		;書込開始アドレス(H)を取得
		LD		H,A
		CALL	RCVBYTE		;書込開始アドレス(L)を取得
		LD		L,A
		LD		A,H
		CP		D
		JP		NZ,BSML56	;読込途中でアドレスが飛んでいたらアドレス表示
		LD		A,L
		CP		E
		JP		Z,BSML66
BSML56:
		LD		A,D
		CALL	HEX1PR		;終了アドレス表示(H)
		LD		A,E
		CALL	HEX1PR		;終了アドレス表示(L)
		LD		A,0DH		;改行
		CALL	CHRPR
		PUSH	HL
		EX		DE,HL
		DEC		HL
		CALL	TENDPNT		;BASICプログラムならBASICテキスト終了アドレスポインタ更新
		POP		HL
		LD		A,H
		CALL	HEX1PR		;開始アドレス表示(H)
		LD		A,L
		CALL	HEX1PR		;開始アドレス表示(L)
		CALL	BASIC		;BASICプログラム判定

BSML66:	CALL	RCVBYTE		;データ受信
		LD		(HL),A
		INC		HL
		DEC		B			;DATA長分ループ
		JP		NZ,BSML66
		
		LD		D,H
		LD		E,L

		JP		BSML55
BSML99:	
		LD		A,0DH		;改行
		CALL	CHRPR
		DEC		HL
		LD		A,H
		CALL	HEX1PR		;終了アドレス表示(H)
		LD		A,L
		CALL	HEX1PR		;終了アドレス表示(L)
		LD		A,0DH		;改行
		CALL	CHRPR
		CALL	TENDPNT		;BASICプログラムならBASICテキスト終了アドレスポインタ更新
		RET

BASIC:
		PUSH	HL
		LD		A,H
		CP		88H
		JP		NZ,BASIC1
		LD		A,L
		CP		02H
		JP		NZ,BASIC1
		LD		A,01H
		JP		BASIC2
BASIC1:	XOR		A
BASIC2:	LD		(PARA1),A
		POP		HL
		RET

TENDPNT:
;BASICテキスト終了アドレスポインタを更新
		LD		A,(PARA1)
		CP		01H
		JP		NZ,TPNT1
		LD		(TXTENDPNT),HL	;BASICテキスト終了アドレスポインタを更新
		LD		HL,MSG3		;「BASIC PROGRAM LOAD END」表示
		JP		TPNT2
TPNT1:	LD		HL,MSG4		;「BINARY LOAD END」表示
TPNT2:	CALL	STRPRT
		RET

;************ Aレジスタを16進数表記で画面に表示
HEX1PR:
		PUSH	HL
		PUSH	AF
		CALL	BIN2CHR
		LD		HL,CHR2
		LD		A,(HL)
		CALL	CHRPR
		INC		HL
		LD		A,(HL)
		CALL	CHRPR
		POP		AF
		POP		HL
		RET

;************ Aレジスタのキャラクタコードを画面に表示
CHRPR:
		PUSH	DE
		PUSH	HL
		PUSH	AF
		LD		(DSPCHR),A
		CALL	CHRPR2
		POP		AF
		POP		HL
		POP		DE
		RET

;************ (HL)からの文字列を00Hまで画面出力
STRPRT:
		PUSH	AF
		PUSH	HL
		PUSH	BC
		LD		B,00H
		LD		(STRPRN),HL
SPRT1:	LD		A,(HL)
		CP		00H
		JP		Z,SPRT2
		INC		B
		INC		HL
		JP		SPRT1
SPRT2:	LD		A,B
		LD		(STRLEN),A
		CALL	STRPR			;MSG表示
		POP		BC
		POP		HL
		POP		AF
		RET

;************* KEY SCAN ***********************
KYSC:		LD		A,(7DFEH)
			AND		20H
			JP		Z,KY1
			LD		A,(7DFCH)
KY1:		RET

BSMDIR:
;************ BS MONITOR SDコマンド DIRLIST **********************
STLT:
		CALL	INIT
		LD		HL,LBUF-1	;LBUFからファイル名取り出し
BSMD1:	INC		HL
		LD		A,(HL)
		CP		0DH			;0DHならファイル名無し
		JP		Z,BSMD4
		CP		2CH			;一つめ「,」
		JP		NZ,BSMD1
		INC		HL
BSMD4:
		EX		DE,HL
		CALL	DIRLIST				;DIRLIST本体をコール
		AND		A					;00以外ならERROR
		JP		Z,BSML4				;00ならHLにセットされているファイル名でBS MONITOR LTコマンドを実行
		CP		01H					;01なら通常リターン
		CALL	NZ,SDERR
		JP		MONSTART

;**** DIRLIST本体 (HL=行頭に付加する文字列の先頭アドレス BC=行頭に付加する文字列の長さ) ****
;****              戻り値 A=エラーコード ****
DIRLIST:
		LD		A,32H				;DIRLISTコマンド32Hを送信
		CALL	STCD				;コマンドコード送信
		AND		A					;00以外ならERROR
		JP		NZ,DLRET
		
		PUSH	BC
		LD		B,21H				;ファイルネーム検索文字列33文字分を送信
STLT1:	LD		A,(DE)
		AND		A
		JP		NZ,STLT2
		XOR		A
STLT2:
		CP		22H					;ダブルコーテーション読み飛ばし
		JP		Z,STLT22
		CP		28H					;カッコ(読み飛ばし
		JP		Z,STLT22
		CP		29H					;カッコ)読み飛ばし
		JP		Z,STLT22
		CP		0DH					;0DH -> 00H
		JP		Z,STLT21
		CP		3AH
		JP		NZ,STLT3			;「:」であればマルチステートメント、00Hに置き換え
STLT21:	XOR		A
		JP		STLT3				;1文字送信へ
		
STLT22:	INC		DE					;DEをインクリメントして読み飛ばし処理
		JP		STLT1
STLT3:	PUSH	AF
		CALL	SNDBYTE				;ファイルネーム検索文字列を送信
		POP		AF
		CP		00H					;00H以外ならDEをインクリメント
		JP		Z,STLT4
		INC		DE
STLT4:	DEC		B
		JP		NZ,STLT1					;33文字分ループ
		POP		BC
		CALL	RCVBYTE				;状態取得(00H=OK)
		AND		A					;00以外ならERROR
		JP		NZ,SDERR

DL1:	LD		HL,LBUF
DL2:	CALL	RCVBYTE				;'00H'を受信するまでを一行とする
		AND		A
		JP		Z,DL3
		CP		0FFH				;'0FFH'を受信したら終了
		JP		Z,DL4
		CP		0FDH				;'0FDH'受信で文字列を取得してSETLしたことを表示
		JP		Z,DL9
		CP		0FEH				;'0FEH'を受信したら一時停止して一文字入力待ち
		JP		Z,DL5
		LD		(HL),A
		INC		HL
		JP		DL2
DL3:	LD		(HL),00H
		LD		HL,LBUF				;'00H'を受信したら一行分を表示して改行
		CALL	STRPRT
DL33:
		LD		A,0DH
		CALL	CHRPR				;改行
		JP		DL1
DL4:	CALL	RCVBYTE				;状態取得(00H=OK)
		LD		A,01H
		JP		DLRET

DL9:	LD		A,0DH		;改行
		CALL	CHRPR
		
		LD		HL,LBUF				;選択したファイルネームを再度取得
DL91:	CALL	RCVBYTE
		LD		(HL),A
		CP		00H
		INC		HL
		JP		NZ,DL91

		LD		HL,LBUF				;取得したファイルネームを表示
		CALL	STRPRT
		CALL	RCVBYTE				;状態取得(00H=OK)読み飛ばし
		CALL	RCVBYTE				;状態取得(00H=OK)読み飛ばし

		LD		HL,LBUF				;取得したファイルネーム
		JP		DLRET

DL5:
		LD		HL,MSG_KEY1			;HIT ANT KEY表示
		CALL	STRPRT
DL6:
		CALL	KYSC				;KEY SCAN
		
		PUSH	AF					;WAIT
		PUSH	DE
        LD      A,20H
LOP1:   LD      D,0FFH
LOP2:   DEC     D       
        JP      NZ,LOP2    
        DEC     A       
        JP      NZ,LOP1
		POP		DE
		POP		AF

		JP		Z,DL6
		CP		21H					;!で打ち切り
		JP		Z,DL7
		CP		30H					;数字0～9ならそのままArduinoへ送信してSETL処理へ
		JP		C,DL61
		CP		3AH
		JP		C,DL8
DL61:
		CP		42H					;「B」で前ページ
		JP		Z,DL8
		XOR		A					;それ以外で継続
		JP		DL8
DL7:	LD		A,0FFH				;0FFH中断コードを送信
DL8:	CALL	SNDBYTE
		JP		DL1
		
DLRET:	RET


;*************** BS LEVEL2 BASIC LOADコマンド ***********************
; 機械語プログラムのLOADも可
BSBLOAD:
		CALL	INIT
		LD		HL,LBUF-1	;LBUFからファイル名取り出し
BSBL1:	INC		HL
		LD		A,(HL)
		CP		0DH			;0DHならファイル名無し
		JP		Z,BSBL4
		CP		20H			;SPACE
		JP		Z,BSBL3
		CP		2CH			;「,」
		JP		NZ,BSBL1
BSBL3:	INC		HL
BSBL4:	LD		A,31H		;コマンド31H(BS形式をLOAD)
		CALL	STCMD
		JP		NZ,SDERR3

		CALL	BSLOAD

		JP		BASCMD

;******************** BS LEVEL2 BASIC SAVEコマンド **************************
BSBSAVE:
		CALL	INIT
		LD		HL,LBUF-1	;LBUFからファイル名取り出し
BSB1:	INC		HL
		LD		A,(HL)
		CP		0DH			;0DHならファイル名無し
		JP		Z,BSB41
		CP		20H			;SPACE
		JP		Z,BSB3
		CP		2CH			;「,」
		JP		NZ,BSB1
BSB3:	INC		HL
BSB4:	LD		A,30H		;コマンド30H(BS形式でSAVE)
		CALL	STCMD
		JP		NZ,SDERR3

		LD		HL,MSG2
		CALL	STRPRT

		LD		HL,TEXTSTART	;SAVE開始アドレス
		LD		A,L
		CALL	SNDBYTE		;SAVE START LO
		INC		HL
		LD		A,H
		CALL	SNDBYTE		;SAVE START HI
		LD		HL,(TXTENDPNT)	;SAVE終了アドレス
		LD		A,L
		CALL	SNDBYTE		;SAVE END LO
		LD		A,H
		CALL	SNDBYTE		;SAVE END HI
			
		LD		HL,(TXTENDPNT)
		LD		A,H
		CPL
		LD		H,A
		LD		A,L
		CPL
		LD		L,A
		LD		(PARA3),HL
			
		LD		HL,TEXTSTART
BSB6:	LD		A,(HL)		;実データ送信
		CALL	SNDBYTE
		INC		HL
		EX		DE,HL
		LD		HL,(PARA3)
		ADD		HL,DE
		EX		DE,HL
		JP		NC,BSB6
		JP		BASCMD

BSB41:	LD		A,02H
		CALL	ERRCODE		;パラメータERROR
		JP		BASCMD

;***************** BS LEVEL2 BASIC FILESコマンド ************************
BSBDIR:
		CALL	INIT
		LD		HL,LBUF-1	;LBUFからファイル名取り出し
BSBD1:	INC		HL
		LD		A,(HL)
		CP		0DH			;0DHならファイル名無し
		JP		Z,BSBD4
		CP		20H			;SPACE
		JP		Z,BSBD3
		CP		2CH			;「,」
		JP		NZ,BSBD1
BSBD3:	INC		HL
BSBD4:
		EX		DE,HL
		CALL	DIRLIST				;DIRLIST本体をコール
		AND		A					;00以外ならERROR
		JP		Z,BSBL4				;00ならHLにセットされているファイル名でLEVEL2 BASIC LOADコマンドを実行
		CP		01H					;01なら通常リターン
		CALL	NZ,SDERR
		LD		A,0DH
		CALL	CHRPR				;改行
		JP		BASCMD

;************** エラー内容表示 *****************************
ERRPR:
		PUSH	AF
		CP		0F0H
		JP		NZ,ERR3
		LD		HL,MSG_F0			;SD-CARD INITIALIZE ERROR
		JP		ERRMSG
ERR3:	CP		0F1H
		JP		NZ,ERR4
		LD		HL,MSG_F1			;NOT FIND FILE
		JP		ERRMSG
ERR4:	CP		0F3H
		JP		NZ,ERR99
		LD		HL,MSG_F3			;FILE EXIST
		JP		ERRMSG
ERR99:
		CALL	HEX1PR
		LD		HL,MSG99			;その他ERROR
ERRMSG:	CALL	STRPRT
		POP		AF
		RET

MSG1:
		DB		'LOADING',0DH,0AH,00H
MSG2:
		DB		'SAVING',0DH,0AH,00H
MSG3:
		DB		'BASIC PROGRAM LOAD END',0DH,0AH,00H
MSG4:
		DB		'BINARY LOAD END',0DH,0AH,00H
MSG_KEY1:
		DB		'SEL:0-9 NXT:ANY BCK:B BRK:!',0DH,0AH,00H

MSG_F0:
		DB		'SD-CARD INITIALIZE ERROR',0DH,0AH,00H
		
MSG_F1:
		DB		'NOT FIND FILE',0DH,0AH,00H
		
MSG_F3:
		DB		'FILE EXIST',0DH,0AH,00H
	
MSG99:
		DB		' ERROR',0DH,0AH,00H
			
		END
