GBCOnlyScreen:
	ldh a, [hCGB]
	and a
	ret nz
	ld de, Font
	ld hl, vTiles1
	lb bc, BANK(Font), $80
	call Get1bpp
	ld de, GBCOnlyString
	call ErrorScreen ; we're already in BANK(ErrorScreen)
.loop:
	halt
	jr .loop

GBCOnlyString:
	db 	 "This game requires"
	next "a GBC machine. You"
	next "are trying to play"
	next "on a DMG or SGB(2)."
	next "      -CRYSTALMOON@"
	