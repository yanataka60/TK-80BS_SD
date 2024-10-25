JP1		EQU		0300H		;TK-80 SDSAVE
JP2:	EQU		0303H		;TK-80 SDLOAD

;********************** TK-80 MONITOR 修正 *********************
		ORG		003CH
		DB		0F0H		;TK-80初期化ルーチンではPORTCを0FFhに初期化しているので0F0hに変更
		
		ORG		0052H
		DB		0F0H		;TK-80初期化ルーチンではPORTCを0FFhに初期化しているので0F0hに変更
		

		ORG		0080H
		DW		JP1			;TK-80 CMTSAVEジャンプテーブル
		DW		JP2			;TK-80 CMTLOADジャンプテーブル

		ORG		024BH
		DB		0E0H		;TK-80キーボードスキャン1 PORTCを0EFh -> 0E0

		ORG		0258H
		DB		0D0H		;TK-80キーボードスキャン2 PORTCを0DFh -> 0D0

		ORG		0265H
		DB		0B0H		;TK-80キーボードスキャン3 PORTCを0BFh -> 0B0
			
		END
