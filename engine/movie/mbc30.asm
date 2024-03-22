MBC30Screen::
	ld c, 11
	ld hl, MBC30Data
	ld de, MBC30DataMirror
.loop:
	ld a, BANK(MBC30Data)
	call GetFarByte
	push af
	ld a, [de]
	ld b, a
	pop af
	cp b
	jr nz, .mismatch
	inc hl
	inc de
	dec c
	ret z
	jr .loop
.mismatch:
	ld de, MBC30ErrorText
	call ErrorScreen
	; jr InfiniteLoop
	; ldh a, [rLCDC]
	; set rLCDC_ENABLE, a
	; ldh [rLCDC], a

InfiniteLoop:
	halt
	jr InfiniteLoop
	
ErrorScreen::
	push de
	call LoadStandardFont
	ld de, MUSIC_MYSTERY1
	call PlayMusic
	pop de
	hlcoord 1, 1
	jp PlaceString
	
MBC30ErrorText:
	db 	 "This game requires"
	next "an emulator that"
	next "supports the MBC30"
	next "mapper chip."
	next "      -"
	
MBC30DataMirror:
	db "CRYSTALMOON@" ; terminator byte is not checked
