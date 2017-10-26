
			LIST				p=18f452		
			INCLUDE				<p18f452.inc>
				
			GLOBAL				getMapChar,PopulateMapName
			GLOBAL				MapName	
			
grp0			UDATA				0x85
MapName			RES				8
			CBLOCK				0x85
			MapIndex1
			MapIndex2
			MapIndex3
			MapIndex4
			MapIndex5
			MapIndex6
			MapIndex7
			ENDC
			
			EXTERN				MapIndex
RST			CODE				0x80			
			pagesel				getMapChar		
			goto 				getMapChar
PGM			CODE
						

PopulateMapName		
			movlw				0x54
			movwf				MapIndex1
			movlw				0x41
			movwf				MapIndex2
			movlw				0x50
			movwf				MapIndex3
			movlw				0x4F
			movwf				MapIndex4
			movlw				0x55
			movwf				MapIndex5
			movlw				0x54
			movwf				MapIndex6
			movlw				0x21
			movwf				MapIndex7
			return
			
			
getMapChar			
			lfsr				0,MapName		
			movf				MapIndex,W		
			addwf				FSR0L,F			
			movf				INDF0,W			
			return
		
			END


