;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.6 #12439 (MINGW32)
;--------------------------------------------------------
	.module main
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _animatesprite
	.globl _canplayermove
	.globl _triggerTile
	.globl _checkWin
	.globl _uncover
	.globl _explodeMines
	.globl _generateMines
	.globl _resetmap
	.globl _surround
	.globl _performantdelay
	.globl _wait_vlb_done_two
	.globl _rand
	.globl _initrand
	.globl _set_sprite_palette
	.globl _set_bkg_palette
	.globl _set_sprite_data
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _wait_vbl_done
	.globl _waitpad
	.globl _joypad
	.globl _beginning
	.globl _dead
	.globl _tilesFlagged
	.globl _mineAnimationTimer
	.globl _minesExploding
	.globl _playerSprite
	.globl _lastAnimation
	.globl _mineIndexes
	.globl _flagIndexes
	.globl _mineLocationsY
	.globl _mineLocationsX
	.globl _surrounding
	.globl _mines
	.globl _playerlocation
	.globl _spritepalette
	.globl _backgroundPalette
	.globl _coveredTile
	.globl _flagTile
	.globl _edgeTile
	.globl _splash_map
	.globl _splash_data
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$playerlocation$0_0$0==.
_playerlocation::
	.ds 2
G$mines$0_0$0==.
_mines::
	.ds 270
G$surrounding$0_0$0==.
_surrounding::
	.ds 270
G$mineLocationsX$0_0$0==.
_mineLocationsX::
	.ds 40
G$mineLocationsY$0_0$0==.
_mineLocationsY::
	.ds 40
G$flagIndexes$0_0$0==.
_flagIndexes::
	.ds 70
G$mineIndexes$0_0$0==.
_mineIndexes::
	.ds 70
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
G$lastAnimation$0_0$0==.
_lastAnimation::
	.ds 1
G$playerSprite$0_0$0==.
_playerSprite::
	.ds 1
G$minesExploding$0_0$0==.
_minesExploding::
	.ds 1
G$mineAnimationTimer$0_0$0==.
_mineAnimationTimer::
	.ds 1
G$tilesFlagged$0_0$0==.
_tilesFlagged::
	.ds 1
G$dead$0_0$0==.
_dead::
	.ds 1
G$beginning$0_0$0==.
_beginning::
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	G$wait_vlb_done_two$0$0	= .
	.globl	G$wait_vlb_done_two$0$0
	C$main.c$36$0_0$109	= .
	.globl	C$main.c$36$0_0$109
;main.c:36: void wait_vlb_done_two(){
;	---------------------------------
; Function wait_vlb_done_two
; ---------------------------------
_wait_vlb_done_two::
	C$main.c$37$1_0$109	= .
	.globl	C$main.c$37$1_0$109
;main.c:37: lastAnimation ++;
;setupPair	HL
	ld	hl, #_lastAnimation
	inc	(hl)
	C$main.c$38$1_0$109	= .
	.globl	C$main.c$38$1_0$109
;main.c:38: wait_vbl_done();
	C$main.c$39$1_0$109	= .
	.globl	C$main.c$39$1_0$109
;main.c:39: }
	C$main.c$39$1_0$109	= .
	.globl	C$main.c$39$1_0$109
	XG$wait_vlb_done_two$0$0	= .
	.globl	XG$wait_vlb_done_two$0$0
	jp	_wait_vbl_done
G$splash_data$0_0$0 == .
_splash_data:
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x37	; 55	'7'
	.db #0xcf	; 207
	.db #0x34	; 52	'4'
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0x34	; 52	'4'
	.db #0xcc	; 204
	.db #0x34	; 52	'4'
	.db #0x34	; 52	'4'
	.db #0xcc	; 204
	.db #0x34	; 52	'4'
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xb7	; 183
	.db #0xcf	; 207
	.db #0x78	; 120	'x'
	.db #0x48	; 72	'H'
	.db #0x68	; 104	'h'
	.db #0x78	; 120	'x'
	.db #0x68	; 104	'h'
	.db #0x78	; 120	'x'
	.db #0x78	; 120	'x'
	.db #0x78	; 120	'x'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xbf	; 191
	.db #0xcf	; 207
	.db #0xf8	; 248
	.db #0xc8	; 200
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xff	; 255
	.db #0xfc	; 252
	.db #0xc7	; 199
	.db #0xc6	; 198
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0x47	; 71	'G'
	.db #0x47	; 71	'G'
	.db #0x47	; 71	'G'
	.db #0x47	; 71	'G'
	.db #0x47	; 71	'G'
	.db #0x47	; 71	'G'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc7	; 199
	.db #0x47	; 71	'G'
	.db #0x47	; 71	'G'
	.db #0xc7	; 199
	.db #0x47	; 71	'G'
	.db #0xc7	; 199
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xb7	; 183
	.db #0xcf	; 207
	.db #0xfc	; 252
	.db #0xcc	; 204
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xf3	; 243
	.db #0xfc	; 252
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xc6	; 198
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x46	; 70	'F'
	.db #0xc6	; 198
	.db #0xc6	; 198
	.db #0x46	; 70	'F'
	.db #0xc6	; 198
	.db #0x46	; 70	'F'
	.db #0x46	; 70	'F'
	.db #0xc6	; 198
	.db #0x46	; 70	'F'
	.db #0xc6	; 198
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x3f	; 63
	.db #0xdf	; 223
	.db #0xb0	; 176
	.db #0xd0	; 208
	.db #0xd0	; 208
	.db #0xf0	; 240
	.db #0xd1	; 209
	.db #0xf1	; 241
	.db #0xf1	; 241
	.db #0xd1	; 209
	.db #0xf1	; 241
	.db #0xd1	; 209
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xf3	; 243
	.db #0xef	; 239
	.db #0x32	; 50	'2'
	.db #0x3e	; 62
	.db #0x3e	; 62
	.db #0x3a	; 58
	.db #0xfe	; 254
	.db #0xfa	; 250
	.db #0xfa	; 250
	.db #0xfe	; 254
	.db #0xfa	; 250
	.db #0xfe	; 254
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xff	; 255
	.db #0xfc	; 252
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc6	; 198
	.db #0x46	; 70	'F'
	.db #0x46	; 70	'F'
	.db #0xc6	; 198
	.db #0x46	; 70	'F'
	.db #0xc6	; 198
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xb3	; 179
	.db #0xcf	; 207
	.db #0x72	; 114	'r'
	.db #0x4e	; 78	'N'
	.db #0x2e	; 46
	.db #0x32	; 50	'2'
	.db #0x3e	; 62
	.db #0x32	; 50	'2'
	.db #0x3a	; 58
	.db #0x3e	; 62
	.db #0x3a	; 58
	.db #0x3e	; 62
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xb3	; 179
	.db #0xcc	; 204
	.db #0x73	; 115	's'
	.db #0x4c	; 76	'L'
	.db #0x2c	; 44
	.db #0x33	; 51	'3'
	.db #0x3c	; 60
	.db #0x33	; 51	'3'
	.db #0x3b	; 59
	.db #0x3c	; 60
	.db #0x3b	; 59
	.db #0x3c	; 60
	.db #0xcc	; 204
	.db #0x34	; 52	'4'
	.db #0xcc	; 204
	.db #0x34	; 52	'4'
	.db #0x34	; 52	'4'
	.db #0xcc	; 204
	.db #0x34	; 52	'4'
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0x34	; 52	'4'
	.db #0xcc	; 204
	.db #0x34	; 52	'4'
	.db #0x34	; 52	'4'
	.db #0xcc	; 204
	.db #0x34	; 52	'4'
	.db #0xcc	; 204
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xf9	; 249
	.db #0xe9	; 233
	.db #0xf9	; 249
	.db #0xe9	; 233
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0x47	; 71	'G'
	.db #0x47	; 71	'G'
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x87	; 135
	.db #0x87	; 135
	.db #0x87	; 135
	.db #0x87	; 135
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0x47	; 71	'G'
	.db #0xc7	; 199
	.db #0x47	; 71	'G'
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc7	; 199
	.db #0x47	; 71	'G'
	.db #0x47	; 71	'G'
	.db #0xc7	; 199
	.db #0x47	; 71	'G'
	.db #0xc7	; 199
	.db #0xc8	; 200
	.db #0x38	; 56	'8'
	.db #0xc8	; 200
	.db #0x38	; 56	'8'
	.db #0xb8	; 184
	.db #0xc8	; 200
	.db #0xf4	; 244
	.db #0xcc	; 204
	.db #0xee	; 238
	.db #0xf6	; 246
	.db #0xef	; 239
	.db #0xf3	; 243
	.db #0xf3	; 243
	.db #0xec	; 236
	.db #0xf3	; 243
	.db #0xec	; 236
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x33	; 51	'3'
	.db #0x2c	; 44
	.db #0x1c	; 28
	.db #0x13	; 19
	.db #0x0c	; 12
	.db #0x0b	; 11
	.db #0x87	; 135
	.db #0x84	; 132
	.db #0x47	; 71	'G'
	.db #0xc6	; 198
	.db #0xc6	; 198
	.db #0x46	; 70	'F'
	.db #0xc6	; 198
	.db #0x46	; 70	'F'
	.db #0x46	; 70	'F'
	.db #0xc6	; 198
	.db #0x46	; 70	'F'
	.db #0xc6	; 198
	.db #0xc6	; 198
	.db #0x46	; 70	'F'
	.db #0xc6	; 198
	.db #0x46	; 70	'F'
	.db #0x46	; 70	'F'
	.db #0xc6	; 198
	.db #0x44	; 68	'D'
	.db #0xc4	; 196
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0xd1	; 209
	.db #0xf1	; 241
	.db #0xd1	; 209
	.db #0xf1	; 241
	.db #0xf0	; 240
	.db #0xd0	; 208
	.db #0xf0	; 240
	.db #0xd0	; 208
	.db #0xd0	; 208
	.db #0xf0	; 240
	.db #0xd1	; 209
	.db #0xf1	; 241
	.db #0xf1	; 241
	.db #0xd1	; 209
	.db #0xf1	; 241
	.db #0xd1	; 209
	.db #0xce	; 206
	.db #0xf2	; 242
	.db #0xce	; 206
	.db #0xf2	; 242
	.db #0x32	; 50	'2'
	.db #0x2e	; 46
	.db #0x32	; 50	'2'
	.db #0x3e	; 62
	.db #0x3e	; 62
	.db #0x3a	; 58
	.db #0xfe	; 254
	.db #0xfa	; 250
	.db #0xfa	; 250
	.db #0xfe	; 254
	.db #0xfa	; 250
	.db #0xfe	; 254
	.db #0x3c	; 60
	.db #0x3b	; 59
	.db #0x3c	; 60
	.db #0x3b	; 59
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0xc6	; 198
	.db #0x46	; 70	'F'
	.db #0xc6	; 198
	.db #0x46	; 70	'F'
	.db #0x46	; 70	'F'
	.db #0xc6	; 198
	.db #0x46	; 70	'F'
	.db #0xc6	; 198
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x47	; 71	'G'
	.db #0xc7	; 199
	.db #0x3e	; 62
	.db #0x3a	; 58
	.db #0x3e	; 62
	.db #0x3a	; 58
	.db #0x3a	; 58
	.db #0x3e	; 62
	.db #0x3a	; 58
	.db #0x3e	; 62
	.db #0x3e	; 62
	.db #0x3a	; 58
	.db #0x3e	; 62
	.db #0x3a	; 58
	.db #0x7a	; 122	'z'
	.db #0x7e	; 126
	.db #0xfa	; 250
	.db #0xfe	; 254
	.db #0xc6	; 198
	.db #0x46	; 70	'F'
	.db #0xc6	; 198
	.db #0x46	; 70	'F'
	.db #0x46	; 70	'F'
	.db #0xc6	; 198
	.db #0x46	; 70	'F'
	.db #0xc6	; 198
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x48	; 72	'H'
	.db #0xc8	; 200
	.db #0x3c	; 60
	.db #0x3b	; 59
	.db #0x3c	; 60
	.db #0x3b	; 59
	.db #0x3b	; 59
	.db #0x3c	; 60
	.db #0x3b	; 59
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x3b	; 59
	.db #0x3c	; 60
	.db #0x3b	; 59
	.db #0x7b	; 123
	.db #0x7c	; 124
	.db #0xfb	; 251
	.db #0xfc	; 252
	.db #0xcc	; 204
	.db #0x34	; 52	'4'
	.db #0xcc	; 204
	.db #0x34	; 52	'4'
	.db #0x34	; 52	'4'
	.db #0xcc	; 204
	.db #0x34	; 52	'4'
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0x34	; 52	'4'
	.db #0xcc	; 204
	.db #0x34	; 52	'4'
	.db #0x37	; 55	'7'
	.db #0xcf	; 207
	.db #0x33	; 51	'3'
	.db #0xcf	; 207
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x78	; 120	'x'
	.db #0x78	; 120	'x'
	.db #0x78	; 120	'x'
	.db #0x78	; 120	'x'
	.db #0x78	; 120	'x'
	.db #0x78	; 120	'x'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xf7	; 247
	.db #0xef	; 239
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc7	; 199
	.db #0x47	; 71	'G'
	.db #0xc7	; 199
	.db #0x47	; 71	'G'
	.db #0x47	; 71	'G'
	.db #0xc7	; 199
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x3f	; 63
	.db #0xff	; 255
	.db #0xcf	; 207
	.db #0x3f	; 63
	.db #0xc8	; 200
	.db #0x38	; 56	'8'
	.db #0xb8	; 184
	.db #0xc8	; 200
	.db #0xf8	; 248
	.db #0xc8	; 200
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xec	; 236
	.db #0xf4	; 244
	.db #0xf3	; 243
	.db #0xef	; 239
	.db #0xf3	; 243
	.db #0xed	; 237
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xe4	; 228
	.db #0x24	; 36
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x21	; 33
	.db #0xe1	; 225
	.db #0xd0	; 208
	.db #0x30	; 48	'0'
	.db #0xd1	; 209
	.db #0x31	; 49	'1'
	.db #0x3f	; 63
	.db #0xcf	; 207
	.db #0x37	; 55	'7'
	.db #0xcf	; 207
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x87	; 135
	.db #0x87	; 135
	.db #0x87	; 135
	.db #0x87	; 135
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xd1	; 209
	.db #0xf1	; 241
	.db #0xd1	; 209
	.db #0xf1	; 241
	.db #0xb1	; 177
	.db #0xd1	; 209
	.db #0xb0	; 176
	.db #0xd0	; 208
	.db #0xd0	; 208
	.db #0xb0	; 176
	.db #0xd0	; 208
	.db #0xb0	; 176
	.db #0x3f	; 63
	.db #0xdf	; 223
	.db #0x3f	; 63
	.db #0xcf	; 207
	.db #0xce	; 206
	.db #0xf2	; 242
	.db #0xce	; 206
	.db #0xf2	; 242
	.db #0xf2	; 242
	.db #0xee	; 238
	.db #0x32	; 50	'2'
	.db #0x3e	; 62
	.db #0x3e	; 62
	.db #0x3a	; 58
	.db #0x3e	; 62
	.db #0x3a	; 58
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xfd	; 253
	.db #0x3c	; 60
	.db #0x3b	; 59
	.db #0x3c	; 60
	.db #0x3b	; 59
	.db #0x3f	; 63
	.db #0x3c	; 60
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc7	; 199
	.db #0x47	; 71	'G'
	.db #0xc7	; 199
	.db #0x47	; 71	'G'
	.db #0x47	; 71	'G'
	.db #0xc7	; 199
	.db #0x47	; 71	'G'
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0x47	; 71	'G'
	.db #0xc7	; 199
	.db #0x47	; 71	'G'
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x3f	; 63
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xfa	; 250
	.db #0xfe	; 254
	.db #0xf2	; 242
	.db #0x32	; 50	'2'
	.db #0xce	; 206
	.db #0x32	; 50	'2'
	.db #0xce	; 206
	.db #0xce	; 206
	.db #0x32	; 50	'2'
	.db #0xce	; 206
	.db #0x32	; 50	'2'
	.db #0x33	; 51	'3'
	.db #0xcf	; 207
	.db #0x33	; 51	'3'
	.db #0xcd	; 205
	.db #0xc4	; 196
	.db #0x44	; 68	'D'
	.db #0xc4	; 196
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0xc4	; 196
	.db #0x44	; 68	'D'
	.db #0xc4	; 196
	.db #0xc6	; 198
	.db #0x46	; 70	'F'
	.db #0xc6	; 198
	.db #0x46	; 70	'F'
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x3f	; 63
	.db #0xff	; 255
	.db #0x7c	; 124
	.db #0x7b	; 123
	.db #0x7c	; 124
	.db #0x73	; 115	's'
	.db #0x73	; 115	's'
	.db #0x7c	; 124
	.db #0x73	; 115	's'
	.db #0x7c	; 124
	.db #0x3c	; 60
	.db #0x33	; 51	'3'
	.db #0x3c	; 60
	.db #0x33	; 51	'3'
	.db #0xfb	; 251
	.db #0xfc	; 252
	.db #0xfb	; 251
	.db #0xfc	; 252
	.db #0xcd	; 205
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0xfd	; 253
	.db #0xf7	; 247
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0xef	; 239
	.db #0xf3	; 243
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x3f	; 63
	.db #0xcf	; 207
	.db #0x3f	; 63
	.db #0xdf	; 223
	.db #0xef	; 239
	.db #0xf3	; 243
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0xf3	; 243
	.db #0xcc	; 204
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcf	; 207
	.db #0x3f	; 63
	.db #0x38	; 56	'8'
	.db #0xc8	; 200
	.db #0x39	; 57	'9'
	.db #0xc9	; 201
	.db #0xdf	; 223
	.db #0x3f	; 63
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcf	; 207
	.db #0xf7	; 247
	.db #0x34	; 52	'4'
	.db #0x2c	; 44
	.db #0x34	; 52	'4'
	.db #0x3c	; 60
	.db #0xec	; 236
	.db #0xf3	; 243
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xef	; 239
	.db #0xf3	; 243
	.db #0x12	; 18
	.db #0x1e	; 30
	.db #0x9a	; 154
	.db #0x9e	; 158
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xfd	; 253
	.db #0xf3	; 243
	.db #0x1a	; 26
	.db #0x1e	; 30
	.db #0xfa	; 250
	.db #0xfe	; 254
	.db #0xcf	; 207
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xfc	; 252
	.db #0xf3	; 243
	.db #0x0b	; 11
	.db #0x0d	; 13
	.db #0x4f	; 79	'O'
	.db #0x4d	; 77	'M'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xfc	; 252
	.db #0xfb	; 251
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x27	; 39
	.db #0x26	; 38
	.db #0xcf	; 207
	.db #0x37	; 55	'7'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcf	; 207
	.db #0x3f	; 63
	.db #0x30	; 48	'0'
	.db #0xd0	; 208
	.db #0x32	; 50	'2'
	.db #0xd2	; 210
	.db #0xfc	; 252
	.db #0xfb	; 251
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcf	; 207
	.db #0xbf	; 191
	.db #0x78	; 120	'x'
	.db #0x48	; 72	'H'
	.db #0x7c	; 124
	.db #0x6c	; 108	'l'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcf	; 207
	.db #0xf7	; 247
	.db #0x78	; 120	'x'
	.db #0x68	; 104	'h'
	.db #0xf9	; 249
	.db #0xe9	; 233
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xef	; 239
	.db #0xf3	; 243
	.db #0x12	; 18
	.db #0x1e	; 30
	.db #0x9b	; 155
	.db #0x9f	; 159
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xfc	; 252
	.db #0xf3	; 243
	.db #0x1b	; 27
	.db #0x1c	; 28
	.db #0x3b	; 59
	.db #0x3c	; 60
	.db #0xdf	; 223
	.db #0x3f	; 63
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0xfc	; 252
	.db #0xfb	; 251
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0xd8	; 216
	.db #0x38	; 56	'8'
	.db #0xd8	; 216
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0xd8	; 216
	.db #0x38	; 56	'8'
	.db #0xd8	; 216
	.db #0xd8	; 216
	.db #0x38	; 56	'8'
	.db #0xd8	; 216
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0xd8	; 216
	.db #0x38	; 56	'8'
	.db #0xd8	; 216
	.db #0xfc	; 252
	.db #0xf3	; 243
	.db #0x3c	; 60
	.db #0x3f	; 63
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x3f	; 63
	.db #0x3c	; 60
	.db #0xf3	; 243
	.db #0xfc	; 252
	.db #0xc9	; 201
	.db #0x39	; 57	'9'
	.db #0xc9	; 201
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0xc9	; 201
	.db #0xb9	; 185
	.db #0xc9	; 201
	.db #0xc8	; 200
	.db #0xb8	; 184
	.db #0xc8	; 200
	.db #0x38	; 56	'8'
	.db #0x39	; 57	'9'
	.db #0xc9	; 201
	.db #0x39	; 57	'9'
	.db #0xc9	; 201
	.db #0x3c	; 60
	.db #0x34	; 52	'4'
	.db #0x3c	; 60
	.db #0x34	; 52	'4'
	.db #0x34	; 52	'4'
	.db #0x3c	; 60
	.db #0x34	; 52	'4'
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x34	; 52	'4'
	.db #0x7d	; 125
	.db #0x75	; 117	'u'
	.db #0xf5	; 245
	.db #0xfd	; 253
	.db #0xf4	; 244
	.db #0xec	; 236
	.db #0x9e	; 158
	.db #0x9a	; 154
	.db #0x9e	; 158
	.db #0x9a	; 154
	.db #0x9a	; 154
	.db #0x9e	; 158
	.db #0x9a	; 154
	.db #0x9e	; 158
	.db #0x1e	; 30
	.db #0x1a	; 26
	.db #0x3e	; 62
	.db #0x3a	; 58
	.db #0x3a	; 58
	.db #0x3e	; 62
	.db #0xb2	; 178
	.db #0xbe	; 190
	.db #0xfe	; 254
	.db #0xfa	; 250
	.db #0xce	; 206
	.db #0xf2	; 242
	.db #0x32	; 50	'2'
	.db #0x2e	; 46
	.db #0x33	; 51	'3'
	.db #0x3d	; 61
	.db #0xfc	; 252
	.db #0xf3	; 243
	.db #0xfc	; 252
	.db #0xf3	; 243
	.db #0xf3	; 243
	.db #0xcf	; 207
	.db #0xf2	; 242
	.db #0xce	; 206
	.db #0x4d	; 77	'M'
	.db #0x4f	; 79	'O'
	.db #0x7d	; 125
	.db #0x7f	; 127
	.db #0x3f	; 63
	.db #0x3d	; 61
	.db #0x33	; 51	'3'
	.db #0x2c	; 44
	.db #0x9c	; 156
	.db #0x93	; 147
	.db #0xcc	; 204
	.db #0x4b	; 75	'K'
	.db #0xcf	; 207
	.db #0xcd	; 205
	.db #0x4f	; 79	'O'
	.db #0x4d	; 77	'M'
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x3e	; 62
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x93	; 147
	.db #0x9c	; 156
	.db #0xcc	; 204
	.db #0x4b	; 75	'K'
	.db #0xe4	; 228
	.db #0x27	; 39
	.db #0xe7	; 231
	.db #0xe6	; 230
	.db #0x27	; 39
	.db #0x26	; 38
	.db #0xd2	; 210
	.db #0x32	; 50	'2'
	.db #0xd3	; 211
	.db #0x33	; 51	'3'
	.db #0x31	; 49	'1'
	.db #0xd1	; 209
	.db #0x39	; 57	'9'
	.db #0xc9	; 201
	.db #0xcc	; 204
	.db #0x34	; 52	'4'
	.db #0xce	; 206
	.db #0x32	; 50	'2'
	.db #0x3e	; 62
	.db #0xde	; 222
	.db #0x32	; 50	'2'
	.db #0xd2	; 210
	.db #0x6c	; 108	'l'
	.db #0x74	; 116	't'
	.db #0xec	; 236
	.db #0xf4	; 244
	.db #0xf4	; 244
	.db #0xec	; 236
	.db #0x34	; 52	'4'
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0xb4	; 180
	.db #0x4c	; 76	'L'
	.db #0x74	; 116	't'
	.db #0x74	; 116	't'
	.db #0x6c	; 108	'l'
	.db #0x74	; 116	't'
	.db #0x6c	; 108	'l'
	.db #0xe9	; 233
	.db #0xf9	; 249
	.db #0xc9	; 201
	.db #0xf9	; 249
	.db #0xf9	; 249
	.db #0xc9	; 201
	.db #0xf9	; 249
	.db #0xc9	; 201
	.db #0xc8	; 200
	.db #0xf8	; 248
	.db #0xc9	; 201
	.db #0xf9	; 249
	.db #0xf9	; 249
	.db #0xc9	; 201
	.db #0xf9	; 249
	.db #0xc9	; 201
	.db #0x3c	; 60
	.db #0x34	; 52	'4'
	.db #0x3c	; 60
	.db #0x34	; 52	'4'
	.db #0x34	; 52	'4'
	.db #0x3c	; 60
	.db #0x34	; 52	'4'
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x34	; 52	'4'
	.db #0x3d	; 61
	.db #0x35	; 53	'5'
	.db #0x35	; 53	'5'
	.db #0x3d	; 61
	.db #0x34	; 52	'4'
	.db #0x3c	; 60
	.db #0x9d	; 157
	.db #0x9b	; 155
	.db #0x9d	; 157
	.db #0x9b	; 155
	.db #0x9b	; 155
	.db #0x9d	; 157
	.db #0x9b	; 155
	.db #0x9d	; 157
	.db #0x1d	; 29
	.db #0x1b	; 27
	.db #0x3d	; 61
	.db #0x3b	; 59
	.db #0x3b	; 59
	.db #0x3d	; 61
	.db #0xb3	; 179
	.db #0xbd	; 189
	.db #0x3c	; 60
	.db #0x3b	; 59
	.db #0x3c	; 60
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x3c	; 60
	.db #0x33	; 51	'3'
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x33	; 51	'3'
	.db #0x3c	; 60
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x3c	; 60
	.db #0x33	; 51	'3'
	.db #0x3c	; 60
	.db #0xdf	; 223
	.db #0x3f	; 63
	.db #0xcf	; 207
	.db #0x3f	; 63
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0xf3	; 243
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0xc9	; 201
	.db #0x39	; 57	'9'
	.db #0xc9	; 201
	.db #0x39	; 57	'9'
	.db #0x3f	; 63
	.db #0xcf	; 207
	.db #0x37	; 55	'7'
	.db #0xcf	; 207
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0xb4	; 180
	.db #0xcc	; 204
	.db #0xb4	; 180
	.db #0xb7	; 183
	.db #0xcf	; 207
	.db #0xb3	; 179
	.db #0xcf	; 207
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x9e	; 158
	.db #0x92	; 146
	.db #0x9e	; 158
	.db #0x9a	; 154
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xfd	; 253
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x3e	; 62
	.db #0x32	; 50	'2'
	.db #0x1e	; 30
	.db #0x1a	; 26
	.db #0xfb	; 251
	.db #0xfd	; 253
	.db #0xfb	; 251
	.db #0xfc	; 252
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x0d	; 13
	.db #0x0f	; 15
	.db #0x0d	; 13
	.db #0x0f	; 15
	.db #0xff	; 255
	.db #0xfc	; 252
	.db #0xfb	; 251
	.db #0xfc	; 252
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0x7f	; 127
	.db #0xfc	; 252
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0xd0	; 208
	.db #0x30	; 48	'0'
	.db #0xd0	; 208
	.db #0x30	; 48	'0'
	.db #0x3f	; 63
	.db #0xcf	; 207
	.db #0x37	; 55	'7'
	.db #0xcf	; 207
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x6c	; 108	'l'
	.db #0x74	; 116	't'
	.db #0x6c	; 108	'l'
	.db #0x74	; 116	't'
	.db #0xf7	; 247
	.db #0xef	; 239
	.db #0xf3	; 243
	.db #0xcf	; 207
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0xc9	; 201
	.db #0xf9	; 249
	.db #0xc9	; 201
	.db #0xf9	; 249
	.db #0xff	; 255
	.db #0xcf	; 207
	.db #0xf7	; 247
	.db #0xcf	; 207
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x3c	; 60
	.db #0x34	; 52	'4'
	.db #0x3c	; 60
	.db #0x34	; 52	'4'
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf3	; 243
	.db #0xff	; 255
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x9d	; 157
	.db #0x93	; 147
	.db #0x9d	; 157
	.db #0x9b	; 155
	.db #0xfb	; 251
	.db #0xfd	; 253
	.db #0xfb	; 251
	.db #0xfc	; 252
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x3c	; 60
	.db #0x33	; 51	'3'
	.db #0x3c	; 60
	.db #0x33	; 51	'3'
	.db #0xf3	; 243
	.db #0xfc	; 252
	.db #0xf3	; 243
	.db #0xfc	; 252
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
	.db #0x33	; 51	'3'
	.db #0xcc	; 204
G$splash_map$0_0$0 == .
_splash_map:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x0d	; 13
	.db #0x0e	; 14
	.db #0x0c	; 12
	.db #0x0d	; 13
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x19	; 25
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1c	; 28
	.db #0x1d	; 29
	.db #0x1e	; 30
	.db #0x1c	; 28
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x22	; 34
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x24	; 36
	.db #0x25	; 37
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x28	; 40
	.db #0x29	; 41
	.db #0x2a	; 42
	.db #0x2b	; 43
	.db #0x2c	; 44
	.db #0x2d	; 45
	.db #0x2e	; 46
	.db #0x2c	; 44
	.db #0x2f	; 47
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x31	; 49	'1'
	.db #0x32	; 50	'2'
	.db #0x33	; 51	'3'
	.db #0x34	; 52	'4'
	.db #0x35	; 53	'5'
	.db #0x36	; 54	'6'
	.db #0x37	; 55	'7'
	.db #0x38	; 56	'8'
	.db #0x39	; 57	'9'
	.db #0x3a	; 58
	.db #0x3b	; 59
	.db #0x3c	; 60
	.db #0x3d	; 61
	.db #0x36	; 54	'6'
	.db #0x3e	; 62
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x43	; 67	'C'
	.db #0x44	; 68	'D'
	.db #0x45	; 69	'E'
	.db #0x46	; 70	'F'
	.db #0x47	; 71	'G'
	.db #0x48	; 72	'H'
	.db #0x49	; 73	'I'
	.db #0x4a	; 74	'J'
	.db #0x4b	; 75	'K'
	.db #0x4c	; 76	'L'
	.db #0x4d	; 77	'M'
	.db #0x4e	; 78	'N'
	.db #0x4f	; 79	'O'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x51	; 81	'Q'
	.db #0x52	; 82	'R'
	.db #0x53	; 83	'S'
	.db #0x54	; 84	'T'
	.db #0x55	; 85	'U'
	.db #0x56	; 86	'V'
	.db #0x57	; 87	'W'
	.db #0x58	; 88	'X'
	.db #0x59	; 89	'Y'
	.db #0x5a	; 90	'Z'
	.db #0x5b	; 91
	.db #0x5c	; 92
	.db #0x5d	; 93
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
G$edgeTile$0_0$0 == .
_edgeTile:
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x19	; 25
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1c	; 28
G$flagTile$0_0$0 == .
_flagTile:
	.db #0x04	; 4
G$coveredTile$0_0$0 == .
_coveredTile:
	.db #0x01	; 1
	G$performantdelay$0$0	= .
	.globl	G$performantdelay$0$0
	C$main.c$41$1_0$112	= .
	.globl	C$main.c$41$1_0$112
;main.c:41: void performantdelay(UINT8 numloops){
;	---------------------------------
; Function performantdelay
; ---------------------------------
_performantdelay::
	C$main.c$43$2_0$112	= .
	.globl	C$main.c$43$2_0$112
;main.c:43: for(i = 0; i < numloops; i++){
	ld	c, #0x00
00103$:
	ld	a, c
	ldhl	sp,	#2
	sub	a, (hl)
	ret	NC
	C$main.c$44$3_0$113	= .
	.globl	C$main.c$44$3_0$113
;main.c:44: wait_vlb_done_two();
	push	bc
	call	_wait_vlb_done_two
	pop	bc
	C$main.c$43$2_0$112	= .
	.globl	C$main.c$43$2_0$112
;main.c:43: for(i = 0; i < numloops; i++){
	inc	c
	C$main.c$46$2_0$112	= .
	.globl	C$main.c$46$2_0$112
;main.c:46: }
	C$main.c$46$2_0$112	= .
	.globl	C$main.c$46$2_0$112
	XG$performantdelay$0$0	= .
	.globl	XG$performantdelay$0$0
	jr	00103$
	G$surround$0$0	= .
	.globl	G$surround$0$0
	C$main.c$48$2_0$115	= .
	.globl	C$main.c$48$2_0$115
;main.c:48: int surround(UINT8 x, UINT8 y) {
;	---------------------------------
; Function surround
; ---------------------------------
_surround::
	add	sp, #-4
	C$main.c$50$2_0$115	= .
	.globl	C$main.c$50$2_0$115
;main.c:50: UINT8 surround = 0;
	ld	c, #0x00
	C$main.c$52$7_0$121	= .
	.globl	C$main.c$52$7_0$121
;main.c:52: for (INT8 i = -1; i <= +1; i++) {
	ldhl	sp,	#2
	ld	(hl), #0xff
00117$:
	ldhl	sp,	#2
	ld	e, (hl)
	ld	a,#0x01
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00173$
	bit	7, d
	jr	NZ, 00174$
	cp	a, a
	jr	00174$
00173$:
	bit	7, d
	jr	Z, 00174$
	scf
00174$:
	jp	C, 00110$
	C$main.c$53$1_0$115	= .
	.globl	C$main.c$53$1_0$115
;main.c:53: for (INT8 j = -1; j <= +1; j++) {
	ldhl	sp,	#3
	ld	(hl), #0xff
00114$:
	ldhl	sp,	#3
	ld	e, (hl)
	ld	a,#0x01
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00175$
	bit	7, d
	jr	NZ, 00176$
	cp	a, a
	jr	00176$
00175$:
	bit	7, d
	jr	Z, 00176$
	scf
00176$:
	jp	C, 00118$
	C$main.c$54$5_0$119	= .
	.globl	C$main.c$54$5_0$119
;main.c:54: if (i+x >= 0 && i+x <= 17) {
	ldhl	sp,	#2
	ld	a, (hl)
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
	ldhl	sp,	#6
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
	inc	sp
	inc	sp
	push	hl
	ldhl	sp,	#1
	bit	7, (hl)
	jr	NZ, 00115$
	dec	hl
	ld	a, #0x11
	sub	a, (hl)
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
	ld	a, #0x00
	ld	d, a
	bit	7, (hl)
	jr	Z, 00177$
	bit	7, d
	jr	NZ, 00178$
	cp	a, a
	jr	00178$
00177$:
	bit	7, d
	jr	Z, 00178$
	scf
00178$:
	jr	C, 00115$
	C$main.c$55$6_0$120	= .
	.globl	C$main.c$55$6_0$120
;main.c:55: if (j+y >= 0 && j+y <= 14) {
	ldhl	sp,	#3
	ld	a, (hl)
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
	ldhl	sp,	#7
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	bit	7, h
	jr	NZ, 00115$
	ld	e, h
	ld	d, #0x00
	ld	a, #0x0e
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	bit	7, e
	jr	Z, 00179$
	bit	7, d
	jr	NZ, 00180$
	cp	a, a
	jr	00180$
00179$:
	bit	7, d
	jr	Z, 00180$
	scf
00180$:
	jr	C, 00115$
	C$main.c$57$7_0$121	= .
	.globl	C$main.c$57$7_0$121
;main.c:57: if (mines[i+x][j+y] == 1) {
	pop	de
	push	de
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	ld	a, l
	add	a, #<(_mines)
	ld	e, a
	ld	a, h
	adc	a, #>(_mines)
	ld	d, a
	ldhl	sp,	#7
	ld	a, (hl)
	ldhl	sp,	#3
	add	a, (hl)
	ld	l, a
	ld	h, #0x00
	add	hl, de
	ld	a, (hl)
	dec	a
	jr	NZ, 00115$
	C$main.c$58$8_0$122	= .
	.globl	C$main.c$58$8_0$122
;main.c:58: surround += 1;
	inc	c
00115$:
	C$main.c$53$4_0$118	= .
	.globl	C$main.c$53$4_0$118
;main.c:53: for (INT8 j = -1; j <= +1; j++) {
	ldhl	sp,	#3
	inc	(hl)
	jp	00114$
00118$:
	C$main.c$52$2_0$116	= .
	.globl	C$main.c$52$2_0$116
;main.c:52: for (INT8 i = -1; i <= +1; i++) {
	ldhl	sp,	#2
	inc	(hl)
	jp	00117$
00110$:
	C$main.c$65$1_0$115	= .
	.globl	C$main.c$65$1_0$115
;main.c:65: if (mines[x][y] == 1) {
	ldhl	sp,	#6
	ld	e, (hl)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl), a
	ld	de, #_mines
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	add	hl, de
	ld	e, l
	ld	d, h
	ldhl	sp,	#7
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	ld	a, (hl)
	dec	a
	jr	NZ, 00112$
	C$main.c$66$2_0$123	= .
	.globl	C$main.c$66$2_0$123
;main.c:66: surround = 20;
	ld	c, #0x14
00112$:
	C$main.c$68$1_0$115	= .
	.globl	C$main.c$68$1_0$115
;main.c:68: return surround;
	ld	d, #0x00
	ld	e, c
	C$main.c$69$1_0$115	= .
	.globl	C$main.c$69$1_0$115
;main.c:69: }
	add	sp, #4
	C$main.c$69$1_0$115	= .
	.globl	C$main.c$69$1_0$115
	XG$surround$0$0	= .
	.globl	XG$surround$0$0
	ret
	G$resetmap$0$0	= .
	.globl	G$resetmap$0$0
	C$main.c$71$1_0$124	= .
	.globl	C$main.c$71$1_0$124
;main.c:71: void resetmap(){
;	---------------------------------
; Function resetmap
; ---------------------------------
_resetmap::
	add	sp, #-4
	C$main.c$72$5_0$128	= .
	.globl	C$main.c$72$5_0$128
;main.c:72: for (UINT8 y = 0; y <= GameBackgroundHeight; y++) {
	ldhl	sp,	#2
	ld	(hl), #0x00
00109$:
	ld	a, #0x12
	ldhl	sp,	#2
	sub	a, (hl)
	jr	C, 00102$
	C$main.c$73$2_0$124	= .
	.globl	C$main.c$73$2_0$124
;main.c:73: for (UINT8 x = 0; x <= GameBackgroundWidth; x++) {
	inc	hl
	ld	(hl), #0x00
00106$:
	ld	a, #0x14
	ldhl	sp,	#3
	sub	a, (hl)
	jr	C, 00110$
	C$main.c$74$5_0$128	= .
	.globl	C$main.c$74$5_0$128
;main.c:74: UINT16 index = 20 * y + x;
	dec	hl
	ld	a, (hl-)
	dec	hl
	ld	(hl+), a
	ld	(hl), #0x00
	pop	bc
	push	bc
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	inc	sp
	inc	sp
	push	hl
	ldhl	sp,	#3
	ld	c, (hl)
	ld	b, #0x00
	pop	hl
	push	hl
	add	hl, bc
	C$main.c$75$5_0$128	= .
	.globl	C$main.c$75$5_0$128
;main.c:75: GameBackgroundPLN1[index] = 0x05; // Pal
	ld	bc,#_GameBackgroundPLN1
	add	hl,bc
	ld	(hl), #0x05
	C$main.c$73$4_0$127	= .
	.globl	C$main.c$73$4_0$127
;main.c:73: for (UINT8 x = 0; x <= GameBackgroundWidth; x++) {
	ldhl	sp,	#3
	inc	(hl)
	jr	00106$
00110$:
	C$main.c$72$2_0$125	= .
	.globl	C$main.c$72$2_0$125
;main.c:72: for (UINT8 y = 0; y <= GameBackgroundHeight; y++) {
	ldhl	sp,	#2
	inc	(hl)
	jr	00109$
00102$:
	C$main.c$78$5_0$132	= .
	.globl	C$main.c$78$5_0$132
;main.c:78: for (UINT8 y = 2; y <= GameBackgroundHeight-2; y++) {
	ld	c, #0x02
00115$:
	ld	a, #0x10
	sub	a, c
	jr	C, 00117$
	C$main.c$79$2_0$124	= .
	.globl	C$main.c$79$2_0$124
;main.c:79: for (UINT8 x = 1; x <= GameBackgroundWidth-2; x++) {
	ld	b, #0x01
00112$:
	ld	a, #0x12
	sub	a, b
	jr	C, 00116$
	C$main.c$80$5_0$132	= .
	.globl	C$main.c$80$5_0$132
;main.c:80: UINT16 index = 20 * y + x;
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl), a
	ld	e, b
	ld	d, #0x00
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	e, l
	ld	d, h
	C$main.c$81$5_0$132	= .
	.globl	C$main.c$81$5_0$132
;main.c:81: GameBackgroundPLN1[index] = 0x00; // Pal
	ld	hl, #_GameBackgroundPLN1
	add	hl, de
	ld	(hl), #0x00
	C$main.c$82$5_0$132	= .
	.globl	C$main.c$82$5_0$132
;main.c:82: GameBackgroundPLN0[index] = 0x01; // Tile
	ld	hl, #_GameBackgroundPLN0
	add	hl, de
	ld	(hl), #0x01
	C$main.c$79$4_0$131	= .
	.globl	C$main.c$79$4_0$131
;main.c:79: for (UINT8 x = 1; x <= GameBackgroundWidth-2; x++) {
	inc	b
	jr	00112$
00116$:
	C$main.c$78$2_0$129	= .
	.globl	C$main.c$78$2_0$129
;main.c:78: for (UINT8 y = 2; y <= GameBackgroundHeight-2; y++) {
	inc	c
	jr	00115$
00117$:
	C$main.c$85$2_0$124	= .
	.globl	C$main.c$85$2_0$124
;main.c:85: }
	add	sp, #4
	C$main.c$85$2_0$124	= .
	.globl	C$main.c$85$2_0$124
	XG$resetmap$0$0	= .
	.globl	XG$resetmap$0$0
	ret
	G$generateMines$0$0	= .
	.globl	G$generateMines$0$0
	C$main.c$87$2_0$134	= .
	.globl	C$main.c$87$2_0$134
;main.c:87: void generateMines(UINT8 w, UINT8 h, UINT8 mineAmount){
;	---------------------------------
; Function generateMines
; ---------------------------------
_generateMines::
	add	sp, #-9
	C$main.c$89$5_0$138	= .
	.globl	C$main.c$89$5_0$138
;main.c:89: for (UINT8 i = 0; i <= w; i++) {
	ldhl	sp,	#7
	ld	(hl), #0x00
00118$:
	ldhl	sp,	#11
	ld	a, (hl)
	ldhl	sp,	#7
	sub	a, (hl)
	jr	C, 00102$
	C$main.c$90$5_0$138	= .
	.globl	C$main.c$90$5_0$138
;main.c:90: for (UINT8 j = 0; j <= h; j++) {
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	bc,#_mines
	add	hl,bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#8
	ld	(hl), #0x00
00115$:
	ldhl	sp,	#12
	ld	a, (hl)
	ldhl	sp,	#8
	sub	a, (hl)
	jr	C, 00119$
	C$main.c$91$5_0$138	= .
	.globl	C$main.c$91$5_0$138
;main.c:91: mines[i][j] = 0;
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
	ld	e, l
	ld	d, h
	xor	a, a
	ld	(de), a
	C$main.c$90$4_0$137	= .
	.globl	C$main.c$90$4_0$137
;main.c:90: for (UINT8 j = 0; j <= h; j++) {
	ldhl	sp,	#8
	inc	(hl)
	jr	00115$
00119$:
	C$main.c$89$2_0$135	= .
	.globl	C$main.c$89$2_0$135
;main.c:89: for (UINT8 i = 0; i <= w; i++) {
	ldhl	sp,	#7
	inc	(hl)
	jr	00118$
00102$:
	C$main.c$97$2_0$139	= .
	.globl	C$main.c$97$2_0$139
;main.c:97: UBYTE allGenerated = 0;
	ldhl	sp,	#2
	ld	(hl), #0x00
	C$main.c$99$2_1$140	= .
	.globl	C$main.c$99$2_1$140
;main.c:99: while (!allGenerated) {
	ldhl	sp,	#13
	ld	a, (hl)
	ldhl	sp,	#7
	ld	(hl+), a
	ld	(hl), #0x00
00109$:
	ldhl	sp,	#2
	ld	a, (hl)
	or	a, a
	jp	NZ, 00111$
	C$main.c$100$2_1$140	= .
	.globl	C$main.c$100$2_1$140
;main.c:100: UINT8 tryX = rand()%18;//1+mineNo;//rand()/(255/w);
	call	_rand
	ld	a, e
	rlca
	sbc	a, a
	ld	bc, #0x0012
	push	bc
	ld	d, a
	push	de
	call	__modsint
	add	sp, #4
	ldhl	sp,	#3
	ld	(hl), e
	C$main.c$101$2_1$140	= .
	.globl	C$main.c$101$2_1$140
;main.c:101: UINT8 tryY = rand()%15;//1+mineNo;//rand()/(255/h);
	call	_rand
	ld	a, e
	rlca
	sbc	a, a
	ld	bc, #0x000f
	push	bc
	ld	d, a
	push	de
	call	__modsint
	add	sp, #4
	ldhl	sp,	#4
	C$main.c$102$2_1$140	= .
	.globl	C$main.c$102$2_1$140
;main.c:102: if (mines[tryX][tryY] == 0 && tryX >= 0 && tryY >= 0 && tryX < 18 && tryY < 15) {
	ld	a, e
	ld	(hl-), a
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	bc,#_mines
	add	hl,bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#4
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#7
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#6
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	or	a, a
	jr	NZ, 00109$
	ldhl	sp,	#3
	ld	a, (hl)
	sub	a, #0x12
	jr	NC, 00109$
	inc	hl
	ld	a, (hl)
	sub	a, #0x0f
	jr	NC, 00109$
	C$main.c$103$3_1$141	= .
	.globl	C$main.c$103$3_1$141
;main.c:103: mines[tryX][tryY] = 1;
	inc	hl
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x01
	C$main.c$104$3_1$141	= .
	.globl	C$main.c$104$3_1$141
;main.c:104: mineLocationsX[mineNo] = tryX;
	ld	de, #_mineLocationsX
	ldhl	sp,	#8
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	ld	c, l
	ld	b, h
	ldhl	sp,	#3
	ld	a, (hl)
	ld	(bc), a
	C$main.c$105$3_1$141	= .
	.globl	C$main.c$105$3_1$141
;main.c:105: mineLocationsY[mineNo] = tryY;
	ld	de, #_mineLocationsY
	ldhl	sp,	#8
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	ld	c, l
	ld	b, h
	ldhl	sp,	#4
	ld	a, (hl)
	ld	(bc), a
	C$main.c$107$3_2$142	= .
	.globl	C$main.c$107$3_2$142
;main.c:107: UINT16 mineIndex = tryY*20+tryX;
	ld	a, (hl+)
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	push	hl
	ld	a, l
	ldhl	sp,	#7
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#6
	ld	(hl), a
	ldhl	sp,	#3
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl+), a
	ld	(hl), #0x00
	ldhl	sp,#5
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	pop	hl
	push	hl
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#5
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#4
	ld	(hl-), a
	ld	a, (hl+)
	inc	hl
	ld	(hl-), a
	ld	a, (hl+)
	inc	hl
	C$main.c$108$3_2$142	= .
	.globl	C$main.c$108$3_2$142
;main.c:108: mineIndexes[mineNo] = mineIndex; // Lagre index til mine
	ld	(hl+), a
	inc	hl
	ld	a, (hl)
	ldhl	sp,	#3
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	ld	a, (hl-)
	dec	hl
	ld	(hl), a
	ldhl	sp,	#4
	ld	a, (hl-)
	dec	hl
	ld	(hl-), a
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_mineIndexes
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#5
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#4
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl+)
	ld	(de), a
	inc	de
	C$main.c$110$3_2$142	= .
	.globl	C$main.c$110$3_2$142
;main.c:110: mineAmount --;
	ld	a, (hl+)
	ld	(de), a
	dec	(hl)
	C$main.c$111$3_2$142	= .
	.globl	C$main.c$111$3_2$142
;main.c:111: mineNo ++;
	inc	hl
	inc	(hl)
	C$main.c$112$3_2$142	= .
	.globl	C$main.c$112$3_2$142
;main.c:112: allGenerated = (mineAmount == 0); 
	dec	hl
	ld	a, (hl)
	or	a, a
	ld	a, #0x01
	jr	Z, 00200$
	xor	a, a
00200$:
	ldhl	sp,	#2
	ld	(hl), a
	jp	00109$
00111$:
	C$main.c$116$5_1$146	= .
	.globl	C$main.c$116$5_1$146
;main.c:116: for (UINT8 x = 0; x <= w; x++) {
	ldhl	sp,	#7
	ld	(hl), #0x00
00124$:
	ldhl	sp,	#11
	ld	a, (hl)
	ldhl	sp,	#7
	sub	a, (hl)
	jr	C, 00126$
	C$main.c$117$5_1$146	= .
	.globl	C$main.c$117$5_1$146
;main.c:117: for (UINT8 y = 0; y <= h; y++) {
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	bc,#_surrounding
	add	hl,bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#8
	ld	(hl), #0x00
00121$:
	ldhl	sp,	#12
	ld	a, (hl)
	ldhl	sp,	#8
	sub	a, (hl)
	jr	C, 00125$
	C$main.c$118$5_1$146	= .
	.globl	C$main.c$118$5_1$146
;main.c:118: surrounding[x][y] = surround(x, y);
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#7
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#6
	ld	(hl+), a
	inc	hl
	push	bc
	ld	a, (hl-)
	ld	d, a
	ld	e, (hl)
	push	de
	call	_surround
	pop	hl
	pop	bc
	ld	a, e
	ldhl	sp,	#5
	push	af
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	pop	af
	ld	(hl), a
	C$main.c$117$4_1$145	= .
	.globl	C$main.c$117$4_1$145
;main.c:117: for (UINT8 y = 0; y <= h; y++) {
	ldhl	sp,	#8
	inc	(hl)
	jr	00121$
00125$:
	C$main.c$116$2_1$143	= .
	.globl	C$main.c$116$2_1$143
;main.c:116: for (UINT8 x = 0; x <= w; x++) {
	ldhl	sp,	#7
	inc	(hl)
	jr	00124$
00126$:
	C$main.c$121$2_1$134	= .
	.globl	C$main.c$121$2_1$134
;main.c:121: }
	add	sp, #9
	C$main.c$121$2_1$134	= .
	.globl	C$main.c$121$2_1$134
	XG$generateMines$0$0	= .
	.globl	XG$generateMines$0$0
	ret
	G$explodeMines$0$0	= .
	.globl	G$explodeMines$0$0
	C$main.c$123$2_1$147	= .
	.globl	C$main.c$123$2_1$147
;main.c:123: void explodeMines(){
;	---------------------------------
; Function explodeMines
; ---------------------------------
_explodeMines::
	add	sp, #-13
	C$main.c$124$2_0$147	= .
	.globl	C$main.c$124$2_0$147
;main.c:124: unsigned char pal[1] = {0x03};
	ldhl	sp,	#0
	ld	a, l
	ld	d, h
	ldhl	sp,	#2
	ld	(hl+), a
	ld	a, d
	ld	(hl-), a
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x03
	C$main.c$127$4_0$150	= .
	.globl	C$main.c$127$4_0$150
;main.c:127: while(ex != 4){
	ldhl	sp,	#11
	ld	(hl), #0x00
00102$:
	ldhl	sp,	#11
	ld	a, (hl)
	sub	a, #0x04
	jp	Z,00108$
	C$main.c$128$3_0$148	= .
	.globl	C$main.c$128$3_0$148
;main.c:128: unsigned char tile[1] = {05+ex};
	ldhl	sp,	#1
	ld	a, l
	ld	d, h
	ldhl	sp,	#4
	ld	(hl+), a
	ld	(hl), d
	ldhl	sp,	#11
	ld	a, (hl)
	add	a, #0x05
	ld	c, a
	ldhl	sp,	#4
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	C$main.c$130$4_0$150	= .
	.globl	C$main.c$130$4_0$150
;main.c:130: for(UINT8 i = 0; i < mineCount; i ++){
	ldhl	sp,	#4
	ld	a, (hl+)
	inc	hl
	ld	(hl-), a
	ld	a, (hl+)
	inc	hl
	ld	(hl), a
	ldhl	sp,	#12
	ld	(hl), #0x00
00106$:
	ldhl	sp,	#12
	ld	a, (hl)
	sub	a, #0x23
	jr	NC, 00101$
	C$main.c$131$4_0$150	= .
	.globl	C$main.c$131$4_0$150
;main.c:131: UINT16 index = 20 * (mineLocationsY[i]+2) + (mineLocationsX[i]+1);
	ld	de, #_mineLocationsY
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#8
	ld	(hl), a
	ld	c, (hl)
	ld	b, #0x00
	inc	bc
	inc	bc
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	de, #_mineLocationsX
	ldhl	sp,	#12
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	ld	e, a
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#9
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	C$main.c$132$4_0$150	= .
	.globl	C$main.c$132$4_0$150
;main.c:132: set_bkg_tiles(mineLocationsX[i]+1,mineLocationsY[i]+2,1,1, tile);
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	c, a
	ld	a, (hl+)
	ld	b, a
	ld	a, (hl)
	add	a, #0x02
	inc	e
	push	bc
	ld	h, #0x01
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	ld	h, #0x01
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	ld	d,a
	push	de
	call	_set_bkg_tiles
	add	sp, #6
	C$main.c$133$4_0$150	= .
	.globl	C$main.c$133$4_0$150
;main.c:133: GameBackgroundPLN0[index] = tile[0]; // Tile
	ldhl	sp,#9
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_GameBackgroundPLN0
	add	hl, de
	ld	c, l
	ld	b, h
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	(bc), a
	C$main.c$134$4_0$150	= .
	.globl	C$main.c$134$4_0$150
;main.c:134: GameBackgroundPLN1[index] = pal[0]; // Pallete
	ldhl	sp,#9
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_GameBackgroundPLN1
	add	hl, de
	ld	c, l
	ld	b, h
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	(bc), a
	C$main.c$130$3_0$149	= .
	.globl	C$main.c$130$3_0$149
;main.c:130: for(UINT8 i = 0; i < mineCount; i ++){
	ldhl	sp,	#12
	inc	(hl)
	jr	00106$
00101$:
	C$main.c$136$2_0$148	= .
	.globl	C$main.c$136$2_0$148
;main.c:136: ex ++;
	ldhl	sp,	#11
	inc	(hl)
	C$main.c$137$2_0$148	= .
	.globl	C$main.c$137$2_0$148
;main.c:137: performantdelay(5);
	ld	a, #0x05
	push	af
	inc	sp
	call	_performantdelay
	inc	sp
	jp	00102$
00108$:
	C$main.c$139$1_0$147	= .
	.globl	C$main.c$139$1_0$147
;main.c:139: }
	add	sp, #13
	C$main.c$139$1_0$147	= .
	.globl	C$main.c$139$1_0$147
	XG$explodeMines$0$0	= .
	.globl	XG$explodeMines$0$0
	ret
	G$uncover$0$0	= .
	.globl	G$uncover$0$0
	C$main.c$141$1_0$152	= .
	.globl	C$main.c$141$1_0$152
;main.c:141: void uncover(UINT8 x, UINT8 y) {
;	---------------------------------
; Function uncover
; ---------------------------------
_uncover::
	add	sp, #-15
	C$main.c$143$1_0$152	= .
	.globl	C$main.c$143$1_0$152
;main.c:143: if(x >= 0 && x <= 17 && y >= 0 && y <= 14){
	ld	a, #0x11
	ldhl	sp,	#17
	sub	a, (hl)
	jp	C, 00118$
	inc	hl
	ld	a, #0x0e
	sub	a, (hl)
	jp	C, 00118$
	C$main.c$144$2_0$153	= .
	.globl	C$main.c$144$2_0$153
;main.c:144: index = 20 * (y+2) + (x+1);
	ld	c, (hl)
	ld	b, #0x00
	inc	bc
	inc	bc
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ldhl	sp,	#17
	ld	e, (hl)
	ld	d, #0x00
	inc	de
	ld	a, e
	add	a, c
	ld	c, a
	ld	a, d
	adc	a, b
	ldhl	sp,	#2
	ld	(hl), c
	inc	hl
	C$main.c$145$2_0$153	= .
	.globl	C$main.c$145$2_0$153
;main.c:145: if(index>=20 && index < 339){
	ld	(hl-), a
	ld	a, (hl+)
	sub	a, #0x14
	ld	a, (hl)
	sbc	a, #0x00
	jp	C, 00118$
	dec	hl
	ld	a, (hl+)
	sub	a, #0x53
	ld	a, (hl)
	sbc	a, #0x01
	jp	NC, 00118$
	C$main.c$147$3_0$154	= .
	.globl	C$main.c$147$3_0$154
;main.c:147: if (GameBackgroundPLN0[index] == coveredTile[0]) {
	ld	de, #_GameBackgroundPLN0
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	ld	a, (#_coveredTile + 0)
	sub	a, c
	jp	NZ,00118$
	C$main.c$148$5_0$155	= .
	.globl	C$main.c$148$5_0$155
;main.c:148: unsigned char tile[1], pal[1] = {0x01};
	ldhl	sp,	#1
	ld	a, l
	ld	d, h
	ldhl	sp,	#6
	ld	(hl+), a
	ld	a, d
	ld	(hl-), a
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x01
	C$main.c$149$4_0$155	= .
	.globl	C$main.c$149$4_0$155
;main.c:149: UINT8 suroundingThisTile = surround(x, y);
	ldhl	sp,	#18
	ld	a, (hl-)
	ld	d, a
	ld	e, (hl)
	push	de
	call	_surround
	pop	hl
	ldhl	sp,	#8
	ld	(hl), e
	C$main.c$151$4_0$155	= .
	.globl	C$main.c$151$4_0$155
;main.c:151: tile[0] = surrounding[x][y] + 9;
	ldhl	sp,	#0
	ld	a, l
	ld	d, h
	ldhl	sp,	#9
	ld	(hl+), a
	ld	(hl), d
	ldhl	sp,	#17
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	hl, #_surrounding
	add	hl, bc
	ld	e, l
	ld	d, h
	ldhl	sp,	#18
	ld	a, (hl)
	ldhl	sp,	#11
	ld	(hl), a
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	add	a, #0x09
	ldhl	sp,	#9
	push	af
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	pop	af
	ld	(hl), a
	C$main.c$152$4_0$155	= .
	.globl	C$main.c$152$4_0$155
;main.c:152: pal[0] = (rand()&0x01)+1;
	push	bc
	call	_rand
	ld	a, e
	pop	bc
	and	a, #0x01
	inc	a
	ldhl	sp,	#6
	push	af
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	pop	af
	ld	(hl), a
	C$main.c$153$4_0$155	= .
	.globl	C$main.c$153$4_0$155
;main.c:153: if(mines[x][y] == 1){
	ld	hl, #_mines
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#11
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, (bc)
	dec	a
	jr	NZ, 00104$
	C$main.c$154$5_0$156	= .
	.globl	C$main.c$154$5_0$156
;main.c:154: tile[0] = 0x05;
	ldhl	sp,	#9
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x05
	C$main.c$155$5_0$156	= .
	.globl	C$main.c$155$5_0$156
;main.c:155: pal[0] = 0x03;
	ldhl	sp,	#6
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x03
	C$main.c$156$5_0$156	= .
	.globl	C$main.c$156$5_0$156
;main.c:156: minesExploding = 1;
;setupPair	HL
	ld	hl, #_minesExploding
	ld	(hl), #0x01
	C$main.c$157$5_0$156	= .
	.globl	C$main.c$157$5_0$156
;main.c:157: dead = 1;
;setupPair	HL
	ld	hl, #_dead
	ld	(hl), #0x01
	jr	00105$
00104$:
	C$main.c$158$4_0$155	= .
	.globl	C$main.c$158$4_0$155
;main.c:158: } else if(suroundingThisTile == 0){
	ldhl	sp,	#8
	ld	a, (hl)
	or	a, a
	jr	NZ, 00105$
	C$main.c$159$5_0$157	= .
	.globl	C$main.c$159$5_0$157
;main.c:159: tile[0] = 0x02;
	inc	hl
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x02
	C$main.c$160$5_0$157	= .
	.globl	C$main.c$160$5_0$157
;main.c:160: pal[0] = 0x00;
	ldhl	sp,	#6
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x00
00105$:
	C$main.c$163$4_0$155	= .
	.globl	C$main.c$163$4_0$155
;main.c:163: set_bkg_tiles(x+1,y+2,1,1, tile);
	ldhl	sp,	#9
	ld	a, (hl+)
	ld	c, a
	ld	a, (hl+)
	ld	b, a
	ld	a, (hl+)
	ld	(hl), a
	ld	d, (hl)
	inc	d
	inc	d
	ldhl	sp,	#17
	ld	a, (hl)
	ldhl	sp,	#13
	ld	(hl+), a
	inc	a
	ld	(hl), a
	push	bc
	ld	bc, #0x101
	push	bc
	ld	e, (hl)
	push	de
	call	_set_bkg_tiles
	add	sp, #6
	C$main.c$164$4_0$155	= .
	.globl	C$main.c$164$4_0$155
;main.c:164: GameBackgroundPLN0[index] = tile[0]; // Tile
	ldhl	sp,#9
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	ldhl	sp,	#4
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	C$main.c$165$4_0$155	= .
	.globl	C$main.c$165$4_0$155
;main.c:165: GameBackgroundPLN1[index] = pal[0]; // Pallete
	ld	de, #_GameBackgroundPLN1
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	c, l
	ld	b, h
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	C$main.c$167$4_0$155	= .
	.globl	C$main.c$167$4_0$155
;main.c:167: if (suroundingThisTile == 0) {
	ld	a, (hl+)
	ld	d, a
	ld	a, (de)
	ld	(bc), a
	ld	a, (hl)
	or	a, a
	jr	NZ, 00118$
	C$main.c$169$5_0$158	= .
	.globl	C$main.c$169$5_0$158
;main.c:169: uncover(x-1, y-1);
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	b, a
	dec	b
	ld	c, (hl)
	dec	c
	push	bc
	push	bc
	call	_uncover
	pop	hl
	pop	bc
	C$main.c$170$5_0$158	= .
	.globl	C$main.c$170$5_0$158
;main.c:170: uncover(x, y-1);
	push	bc
	push	bc
	inc	sp
	ldhl	sp,	#20
	ld	a, (hl)
	push	af
	inc	sp
	call	_uncover
	pop	hl
	pop	bc
	C$main.c$171$5_0$158	= .
	.globl	C$main.c$171$5_0$158
;main.c:171: uncover(x+1, y-1);
	push	bc
	push	bc
	inc	sp
	ldhl	sp,	#17
	ld	a, (hl)
	push	af
	inc	sp
	call	_uncover
	pop	hl
	pop	bc
	C$main.c$172$5_0$158	= .
	.globl	C$main.c$172$5_0$158
;main.c:172: uncover(x-1, y);
	push	bc
	ldhl	sp,	#13
	ld	b, (hl)
	push	bc
	call	_uncover
	pop	hl
	ldhl	sp,	#13
	ld	a, (hl)
	push	af
	inc	sp
	ldhl	sp,	#17
	ld	a, (hl)
	push	af
	inc	sp
	call	_uncover
	pop	hl
	pop	bc
	C$main.c$174$5_0$158	= .
	.globl	C$main.c$174$5_0$158
;main.c:174: uncover(x, y+1);
	ldhl	sp,	#12
	ld	b, (hl)
	inc	b
	push	bc
	push	bc
	inc	sp
	ldhl	sp,	#20
	ld	a, (hl)
	push	af
	inc	sp
	call	_uncover
	pop	hl
	pop	bc
	C$main.c$175$5_0$158	= .
	.globl	C$main.c$175$5_0$158
;main.c:175: uncover(x-1, y+1);
	push	bc
	push	bc
	call	_uncover
	pop	hl
	inc	sp
	ldhl	sp,	#15
	ld	a, (hl)
	push	af
	inc	sp
	call	_uncover
	pop	hl
00118$:
	C$main.c$181$1_0$152	= .
	.globl	C$main.c$181$1_0$152
;main.c:181: }
	add	sp, #15
	C$main.c$181$1_0$152	= .
	.globl	C$main.c$181$1_0$152
	XG$uncover$0$0	= .
	.globl	XG$uncover$0$0
	ret
	G$checkWin$0$0	= .
	.globl	G$checkWin$0$0
	C$main.c$183$1_0$159	= .
	.globl	C$main.c$183$1_0$159
;main.c:183: UBYTE checkWin(){
;	---------------------------------
; Function checkWin
; ---------------------------------
_checkWin::
	C$main.c$184$1_0$159	= .
	.globl	C$main.c$184$1_0$159
;main.c:184: return 0;
	ld	e, #0x00
	C$main.c$199$1_0$159	= .
	.globl	C$main.c$199$1_0$159
;main.c:199: return matches == mineCount;
	C$main.c$201$1_0$159	= .
	.globl	C$main.c$201$1_0$159
;main.c:201: }
	C$main.c$201$1_0$159	= .
	.globl	C$main.c$201$1_0$159
	XG$checkWin$0$0	= .
	.globl	XG$checkWin$0$0
	ret
	G$triggerTile$0$0	= .
	.globl	G$triggerTile$0$0
	C$main.c$203$1_0$168	= .
	.globl	C$main.c$203$1_0$168
;main.c:203: void triggerTile(UINT8 type){
;	---------------------------------
; Function triggerTile
; ---------------------------------
_triggerTile::
	add	sp, #-6
	C$main.c$206$1_0$168	= .
	.globl	C$main.c$206$1_0$168
;main.c:206: indexTLx = (playerlocation[0] - 8) / 8;  // Fin tile x koordinat
	ld	a, (#_playerlocation + 0)
	ldhl	sp,	#2
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0008
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#5
	ld	(hl-), a
	ld	(hl), e
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	bit	7, (hl)
	jr	Z, 00113$
	dec	hl
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0xffff
	add	hl, de
	ld	c, l
	ld	b, h
00113$:
	ldhl	sp,	#4
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	srl	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	srl	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	srl	(hl)
	dec	hl
	rr	(hl)
	C$main.c$207$1_0$168	= .
	.globl	C$main.c$207$1_0$168
;main.c:207: indexTLy = (playerlocation[1] - 16) / 8; // Fin tile y koordinat
	ld	a, (#(_playerlocation + 1) + 0)
	ldhl	sp,	#0
	ld	(hl+), a
	ld	(hl), #0x00
	pop	de
	push	de
	ld	hl, #0x0010
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#3
	ld	(hl-), a
	ld	(hl), e
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	bit	7, (hl)
	jr	Z, 00114$
	pop	de
	push	de
	ld	hl, #0xfff7
	add	hl, de
	ld	c, l
	ld	b, h
00114$:
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
	C$main.c$208$1_0$168	= .
	.globl	C$main.c$208$1_0$168
;main.c:208: tileindexTL = 20 * indexTLy + indexTLx;  // Finn hvilken tile den peker på
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	e, l
	ld	a, h
	ldhl	sp,	#1
	ld	(hl), e
	inc	hl
	C$main.c$215$1_0$168	= .
	.globl	C$main.c$215$1_0$168
;main.c:215: set_bkg_tiles(indexTLx,indexTLy,1,1,flagTile);
	ld	(hl+), a
	inc	hl
	ld	a, (hl-)
	ld	(hl), a
	C$main.c$210$1_0$168	= .
	.globl	C$main.c$210$1_0$168
;main.c:210: switch (type){
	ldhl	sp,	#8
	ld	a, (hl)
	or	a, a
	jp	Z,00109$
	ldhl	sp,	#8
	ld	a, (hl)
	dec	a
	jp	NZ,00110$
	C$main.c$214$2_0$169	= .
	.globl	C$main.c$214$2_0$169
;main.c:214: if(GameBackground[tileindexTL] == coveredTile[0]){
	ld	de, #_GameBackgroundPLN0
	ldhl	sp,	#1
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, a
	ld	a, (#_coveredTile + 0)
	sub	a, b
	jr	NZ, 00107$
	C$main.c$215$3_0$170	= .
	.globl	C$main.c$215$3_0$170
;main.c:215: set_bkg_tiles(indexTLx,indexTLy,1,1,flagTile);
	dec	hl
	dec	hl
	ld	de, #_flagTile
	push	de
	ld	de, #0x101
	push	de
	ld	a, c
	push	af
	inc	sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_set_bkg_tiles
	add	sp, #6
	C$main.c$216$3_0$170	= .
	.globl	C$main.c$216$3_0$170
;main.c:216: GameBackgroundPLN0[tileindexTL] = flagTile[0]; // Tile
	ld	hl, #_flagTile
	ld	c, (hl)
	ldhl	sp,	#4
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	C$main.c$217$3_0$170	= .
	.globl	C$main.c$217$3_0$170
;main.c:217: GameBackgroundPLN1[tileindexTL] = 0x04; // Pallete
	ld	bc, #_GameBackgroundPLN1+0
	ldhl	sp,	#1
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	(hl), #0x04
	C$main.c$219$3_0$170	= .
	.globl	C$main.c$219$3_0$170
;main.c:219: tilesFlagged ++;
;setupPair	HL
	ld	hl, #_tilesFlagged
	inc	(hl)
	C$main.c$220$3_0$170	= .
	.globl	C$main.c$220$3_0$170
;main.c:220: if(checkWin()){ // Test om du har vunnet
	call	_checkWin
	ld	a, e
	or	a, a
	jr	Z, 00110$
	C$main.c$221$4_0$171	= .
	.globl	C$main.c$221$4_0$171
;main.c:221: waitpad(J_START);
	ld	a, #0x80
	push	af
	inc	sp
	call	_waitpad
	inc	sp
	jr	00110$
00107$:
	C$main.c$225$2_0$169	= .
	.globl	C$main.c$225$2_0$169
;main.c:225: else if (GameBackground[tileindexTL] == flagTile[0]){
	ld	a, (#_flagTile + 0)
	sub	a, b
	jr	NZ, 00110$
	C$main.c$227$3_0$172	= .
	.globl	C$main.c$227$3_0$172
;main.c:227: tilesFlagged --;
;setupPair	HL
	ld	hl, #_tilesFlagged
	dec	(hl)
	C$main.c$228$3_0$172	= .
	.globl	C$main.c$228$3_0$172
;main.c:228: set_bkg_tiles(indexTLx,indexTLy,1,1,coveredTile);
	ld	de, #_coveredTile
	push	de
	ld	hl, #0x101
	push	hl
	ld	a, c
	push	af
	inc	sp
	ldhl	sp,	#8
	ld	a, (hl)
	push	af
	inc	sp
	call	_set_bkg_tiles
	add	sp, #6
	C$main.c$229$3_0$172	= .
	.globl	C$main.c$229$3_0$172
;main.c:229: GameBackgroundPLN0[tileindexTL] = coveredTile[0];
	ld	hl, #_coveredTile
	ld	c, (hl)
	ldhl	sp,	#4
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	C$main.c$230$3_0$172	= .
	.globl	C$main.c$230$3_0$172
;main.c:230: GameBackgroundPLN1[tileindexTL] = 0x00;
	ld	bc, #_GameBackgroundPLN1+0
	ldhl	sp,	#1
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	xor	a, a
	ld	(bc), a
	C$main.c$232$2_0$169	= .
	.globl	C$main.c$232$2_0$169
;main.c:232: break;
	jr	00110$
	C$main.c$233$2_0$169	= .
	.globl	C$main.c$233$2_0$169
;main.c:233: case 0:
00109$:
	C$main.c$234$2_0$169	= .
	.globl	C$main.c$234$2_0$169
;main.c:234: uncover(indexTLx-1, indexTLy-2);
	ld	a, c
	dec	a
	dec	a
	ldhl	sp,	#3
	ld	b, (hl)
	dec	b
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_uncover
	pop	hl
	C$main.c$238$1_0$168	= .
	.globl	C$main.c$238$1_0$168
;main.c:238: }
00110$:
	C$main.c$240$1_0$168	= .
	.globl	C$main.c$240$1_0$168
;main.c:240: VBK_REG = 1;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
	C$main.c$241$1_0$168	= .
	.globl	C$main.c$241$1_0$168
;main.c:241: set_bkg_tiles(0,0,GameBackgroundWidth,GameBackgroundHeight, GameBackgroundPLN1); // Palette
	ld	de, #_GameBackgroundPLN1
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$main.c$243$1_0$168	= .
	.globl	C$main.c$243$1_0$168
;main.c:243: VBK_REG = 0;
	xor	a, a
	ldh	(_VBK_REG + 0), a
	C$main.c$244$1_0$168	= .
	.globl	C$main.c$244$1_0$168
;main.c:244: set_bkg_tiles(0,0,GameBackgroundWidth,GameBackgroundHeight, GameBackgroundPLN0); // Tiles / Sprites
	ld	de, #_GameBackgroundPLN0
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	C$main.c$245$1_0$168	= .
	.globl	C$main.c$245$1_0$168
;main.c:245: }
	add	sp, #12
	C$main.c$245$1_0$168	= .
	.globl	C$main.c$245$1_0$168
	XG$triggerTile$0$0	= .
	.globl	XG$triggerTile$0$0
	ret
	G$canplayermove$0$0	= .
	.globl	G$canplayermove$0$0
	C$main.c$247$1_0$174	= .
	.globl	C$main.c$247$1_0$174
;main.c:247: UBYTE canplayermove(UINT8 newplayerx, UINT8 newplayery){ // Sjekk om spiller kan begeve seg veien spilleren vil
;	---------------------------------
; Function canplayermove
; ---------------------------------
_canplayermove::
	add	sp, #-6
	C$main.c$250$1_0$174	= .
	.globl	C$main.c$250$1_0$174
;main.c:250: indexTLx = (newplayerx - 8) / 8; // Fin tile x koordinat
	ldhl	sp,	#8
	ld	a, (hl)
	ldhl	sp,	#2
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0008
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#5
	ld	(hl-), a
	ld	(hl), e
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	bit	7, (hl)
	jr	Z, 00109$
	dec	hl
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0xffff
	add	hl, de
	ld	c, l
	ld	b, h
00109$:
	inc	sp
	inc	sp
	push	bc
	ldhl	sp,	#1
	srl	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	srl	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	srl	(hl)
	dec	hl
	rr	(hl)
	C$main.c$251$1_0$174	= .
	.globl	C$main.c$251$1_0$174
;main.c:251: indexTLy = (newplayery - 16) / 8; // Fin tile y koordinat
	ldhl	sp,	#9
	ld	a, (hl)
	ldhl	sp,	#2
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0010
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#5
	ld	(hl-), a
	ld	(hl), e
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	bit	7, (hl)
	jr	Z, 00110$
	dec	hl
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0xfff7
	add	hl, de
	ld	c, l
	ld	b, h
00110$:
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
	C$main.c$252$1_0$174	= .
	.globl	C$main.c$252$1_0$174
;main.c:252: tileindexTL = 20 * indexTLy + indexTLx;
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	pop	hl
	push	hl
	add	hl, bc
	C$main.c$254$3_0$176	= .
	.globl	C$main.c$254$3_0$176
;main.c:254: for(int i = 0; i < 9; i++){
	ld	bc,#_GameBackgroundPLN0
	add	hl,bc
	ld	c, (hl)
	ld	hl, #0x0000
00105$:
	ld	a, l
	sub	a, #0x09
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00103$
	C$main.c$255$3_0$176	= .
	.globl	C$main.c$255$3_0$176
;main.c:255: if(GameBackground[tileindexTL] == edgeTile[i][0]){ // Er tilen en man ikke kan gå på?
	ld	a, l
	add	a, #<(_edgeTile)
	ld	e, a
	ld	a, h
	adc	a, #>(_edgeTile)
	ld	d, a
	ld	a, (de)
	ld	b, a
	ld	a, c
	C$main.c$256$4_0$177	= .
	.globl	C$main.c$256$4_0$177
;main.c:256: return 0;
	sub	a,b
	jr	NZ, 00106$
	ld	e,a
	jr	00107$
00106$:
	C$main.c$254$2_0$175	= .
	.globl	C$main.c$254$2_0$175
;main.c:254: for(int i = 0; i < 9; i++){
	inc	hl
	jr	00105$
00103$:
	C$main.c$260$1_0$174	= .
	.globl	C$main.c$260$1_0$174
;main.c:260: return 1; 
	ld	e, #0x01
00107$:
	C$main.c$261$1_0$174	= .
	.globl	C$main.c$261$1_0$174
;main.c:261: }
	add	sp, #6
	C$main.c$261$1_0$174	= .
	.globl	C$main.c$261$1_0$174
	XG$canplayermove$0$0	= .
	.globl	XG$canplayermove$0$0
	ret
	G$animatesprite$0$0	= .
	.globl	G$animatesprite$0$0
	C$main.c$263$1_0$179	= .
	.globl	C$main.c$263$1_0$179
;main.c:263: void animatesprite(UINT8 spriteindex, INT8 movex, INT8 movey){
;	---------------------------------
; Function animatesprite
; ---------------------------------
_animatesprite::
;main.c:264: while(movex!=0){
	ldhl	sp,	#2
	ld	c, (hl)
00101$:
	ldhl	sp,	#3
	ld	a, (hl)
	or	a, a
	jr	Z, 00126$
;main.c:265: scroll_sprite(spriteindex, movex < 0 ? -1 : 1, 0);
	bit	7, (hl)
	jr	Z, 00111$
	ld	de, #0xffff
	jr	00112$
00111$:
	ld	de, #0x0001
00112$:
	ld	b, e
;c:/gbdk/include/gb/gb.h:1263: OAM_item_t * itm = &shadow_OAM[nb];
	ld	de, #_shadow_OAM+0
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, de
;c:/gbdk/include/gb/gb.h:1264: itm->y+=y, itm->x+=x;
	ld	a, (hl)
	ld	(hl+), a
	ld	a, (hl)
	add	a, b
	ld	(hl), a
	C$main.c$266$2_0$180	= .
	.globl	C$main.c$266$2_0$180
;main.c:266: movex += (movex < 0 ? 1 : -1);
	ldhl	sp,	#3
	bit	7, (hl)
	jr	Z, 00113$
	ld	de, #0x0001
	jr	00114$
00113$:
	ld	de, #0xffff
00114$:
	ld	a, e
	ldhl	sp,	#3
	add	a, (hl)
	ld	(hl), a
	C$main.c$267$2_0$180	= .
	.globl	C$main.c$267$2_0$180
;main.c:267: wait_vlb_done_two();
	push	bc
	call	_wait_vlb_done_two
	pop	bc
	jr	00101$
	C$main.c$269$1_0$179	= .
	.globl	C$main.c$269$1_0$179
;main.c:269: while(movey!=0){
00126$:
00104$:
	ldhl	sp,	#4
	ld	a, (hl)
	or	a, a
	ret	Z
;main.c:270: scroll_sprite(spriteindex, 0, movey < 0 ? -1 : 1);
	bit	7, (hl)
	jr	Z, 00115$
	ld	de, #0xffff
	jr	00116$
00115$:
	ld	de, #0x0001
00116$:
	ld	b, e
;c:/gbdk/include/gb/gb.h:1263: OAM_item_t * itm = &shadow_OAM[nb];
	ld	de, #_shadow_OAM+0
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, de
;c:/gbdk/include/gb/gb.h:1264: itm->y+=y, itm->x+=x;
	ld	a, (hl)
	add	a, b
	ld	(hl+), a
	ld	a, (hl)
	ld	(hl), a
	C$main.c$271$2_0$181	= .
	.globl	C$main.c$271$2_0$181
;main.c:271: movey += movey < 0 ? 1 : -1;
	ldhl	sp,	#4
	bit	7, (hl)
	jr	Z, 00117$
	ld	de, #0x0001
	jr	00118$
00117$:
	ld	de, #0xffff
00118$:
	ld	a, e
	ldhl	sp,	#4
	add	a, (hl)
	ld	(hl), a
	C$main.c$272$2_0$181	= .
	.globl	C$main.c$272$2_0$181
;main.c:272: wait_vlb_done_two();
	push	bc
	call	_wait_vlb_done_two
	pop	bc
	C$main.c$274$1_0$179	= .
	.globl	C$main.c$274$1_0$179
;main.c:274: }
	C$main.c$274$1_0$179	= .
	.globl	C$main.c$274$1_0$179
	XG$animatesprite$0$0	= .
	.globl	XG$animatesprite$0$0
	jr	00104$
	G$main$0$0	= .
	.globl	G$main$0$0
	C$main.c$292$1_0$188	= .
	.globl	C$main.c$292$1_0$188
;main.c:292: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main::
	dec	sp
	dec	sp
	C$main.c$293$1_0$188	= .
	.globl	C$main.c$293$1_0$188
;main.c:293: set_bkg_palette(0, 6, &backgroundPalette[0]); // Start, hvor mange, hvilken farge
	ld	de, #_backgroundPalette
	push	de
	ld	hl, #0x600
	push	hl
	call	_set_bkg_palette
	add	sp, #4
	C$main.c$294$1_0$188	= .
	.globl	C$main.c$294$1_0$188
;main.c:294: while(1){
00142$:
	C$main.c$295$2_0$189	= .
	.globl	C$main.c$295$2_0$189
;main.c:295: if(dead){
;setupPair	HL
	ld	a, (#_dead)
	or	a, a
	jp	Z, 00139$
	C$main.c$296$3_0$190	= .
	.globl	C$main.c$296$3_0$190
;main.c:296: HIDE_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfd
	ldh	(_LCDC_REG + 0), a
	C$main.c$297$3_0$190	= .
	.globl	C$main.c$297$3_0$190
;main.c:297: if(!beginning){
;setupPair	HL
	ld	a, (#_beginning)
	or	a, a
	jr	NZ, 00102$
	C$main.c$298$4_0$191	= .
	.globl	C$main.c$298$4_0$191
;main.c:298: waitpad(J_A); // Vent med å resette
	ld	a, #0x10
	push	af
	inc	sp
	call	_waitpad
	inc	sp
	jr	00161$
00102$:
	C$main.c$300$4_0$192	= .
	.globl	C$main.c$300$4_0$192
;main.c:300: beginning = 0;
;setupPair	HL
	ld	hl, #_beginning
	ld	(hl), #0x00
	C$main.c$302$1_0$188	= .
	.globl	C$main.c$302$1_0$188
;main.c:302: for (UINT8 y = 0; y <= GameBackgroundHeight; y++) {
00161$:
	ld	c, #0x00
00152$:
	ld	a, #0x12
	sub	a, c
	jr	C, 00105$
	C$main.c$303$1_0$188	= .
	.globl	C$main.c$303$1_0$188
;main.c:303: for (UINT8 x = 0; x <= GameBackgroundWidth; x++) {
	ld	b, #0x00
00149$:
	ld	a, #0x14
	sub	a, b
	jr	C, 00153$
	C$main.c$304$7_0$196	= .
	.globl	C$main.c$304$7_0$196
;main.c:304: UINT16 index = 20 * y + x;
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	inc	sp
	inc	sp
	push	hl
	ld	e, b
	ld	d, #0x00
	pop	hl
	push	hl
	add	hl, de
	ld	e, l
	ld	d, h
	C$main.c$305$7_0$196	= .
	.globl	C$main.c$305$7_0$196
;main.c:305: GameBackgroundPLN1[index] = 0x05; // Pal
	ld	hl, #_GameBackgroundPLN1
	add	hl, de
	ld	(hl), #0x05
	C$main.c$303$6_0$195	= .
	.globl	C$main.c$303$6_0$195
;main.c:303: for (UINT8 x = 0; x <= GameBackgroundWidth; x++) {
	inc	b
	jr	00149$
00153$:
	C$main.c$302$4_0$193	= .
	.globl	C$main.c$302$4_0$193
;main.c:302: for (UINT8 y = 0; y <= GameBackgroundHeight; y++) {
	inc	c
	jr	00152$
00105$:
	C$main.c$308$3_0$190	= .
	.globl	C$main.c$308$3_0$190
;main.c:308: VBK_REG = 1;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
	C$main.c$309$3_0$190	= .
	.globl	C$main.c$309$3_0$190
;main.c:309: set_bkg_tiles(0,0,GameBackgroundWidth,GameBackgroundHeight, GameBackgroundPLN1); // Palette
	ld	de, #_GameBackgroundPLN1
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$main.c$310$3_0$190	= .
	.globl	C$main.c$310$3_0$190
;main.c:310: VBK_REG = 0;
	xor	a, a
	ldh	(_VBK_REG + 0), a
	C$main.c$312$3_0$190	= .
	.globl	C$main.c$312$3_0$190
;main.c:312: set_bkg_data(0, 94, splash_data);
	ld	de, #_splash_data
	push	de
	ld	hl, #0x5e00
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$main.c$313$3_0$190	= .
	.globl	C$main.c$313$3_0$190
;main.c:313: set_bkg_tiles(0, 0, 20, 18, splash_map);
	ld	de, #_splash_map
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$main.c$315$3_0$190	= .
	.globl	C$main.c$315$3_0$190
;main.c:315: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$main.c$316$3_0$190	= .
	.globl	C$main.c$316$3_0$190
;main.c:316: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
	C$main.c$319$3_0$190	= .
	.globl	C$main.c$319$3_0$190
;main.c:319: waitpad(J_START);
	ld	a, #0x80
	push	af
	inc	sp
	call	_waitpad
	inc	sp
	C$main.c$320$3_0$190	= .
	.globl	C$main.c$320$3_0$190
;main.c:320: dead = 0;
;setupPair	HL
	ld	hl, #_dead
	ld	(hl), #0x00
	C$main.c$321$3_0$190	= .
	.globl	C$main.c$321$3_0$190
;main.c:321: minesExploding = 0;
;setupPair	HL
	ld	hl, #_minesExploding
	ld	(hl), #0x00
	jp	00142$
00139$:
	C$main.c$323$3_0$197	= .
	.globl	C$main.c$323$3_0$197
;main.c:323: resetmap();
	call	_resetmap
	C$main.c$325$4_0$198	= .
	.globl	C$main.c$325$4_0$198
;main.c:325: uint16_t seed = LY_REG;
	ldh	a, (_LY_REG + 0)
	ld	c, a
	ld	b, #0x00
	C$main.c$326$3_1$198	= .
	.globl	C$main.c$326$3_1$198
;main.c:326: seed |= (uint16_t)DIV_REG << 8;
	ldh	a, (_DIV_REG + 0)
	ld	e, a
	xor	a, a
	or	a, c
	ld	c, a
	ld	a, e
	or	a, b
	ld	b, a
	C$main.c$327$3_1$198	= .
	.globl	C$main.c$327$3_1$198
;main.c:327: initrand(seed);
	push	bc
	call	_initrand
	pop	hl
	C$main.c$329$3_1$198	= .
	.globl	C$main.c$329$3_1$198
;main.c:329: generateMines(17, 14, mineCount);
	ld	hl, #0x230e
	push	hl
	ld	a, #0x11
	push	af
	inc	sp
	call	_generateMines
	add	sp, #3
	C$main.c$333$3_1$198	= .
	.globl	C$main.c$333$3_1$198
;main.c:333: set_bkg_palette(0, 6, &backgroundPalette[0]); // Start, hvor mange, hvilken farge
	ld	de, #_backgroundPalette
	push	de
	ld	hl, #0x600
	push	hl
	call	_set_bkg_palette
	add	sp, #4
	C$main.c$335$3_1$198	= .
	.globl	C$main.c$335$3_1$198
;main.c:335: set_bkg_data(0, 29, BackgroundTiles); // Last inn sprites til bakgrunnen
	ld	de, #_BackgroundTiles
	push	de
	ld	hl, #0x1d00
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$main.c$338$3_1$198	= .
	.globl	C$main.c$338$3_1$198
;main.c:338: VBK_REG = 1;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
	C$main.c$339$3_1$198	= .
	.globl	C$main.c$339$3_1$198
;main.c:339: set_bkg_tiles(0,0,GameBackgroundWidth,GameBackgroundHeight, GameBackgroundPLN1); // Palette
	ld	de, #_GameBackgroundPLN1
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$main.c$342$3_1$198	= .
	.globl	C$main.c$342$3_1$198
;main.c:342: VBK_REG = 0;
	xor	a, a
	ldh	(_VBK_REG + 0), a
	C$main.c$343$3_1$198	= .
	.globl	C$main.c$343$3_1$198
;main.c:343: set_bkg_tiles(0,0,GameBackgroundWidth,GameBackgroundHeight, GameBackgroundPLN0); // Tiles / Sprites
	ld	de, #_GameBackgroundPLN0
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$main.c$346$3_1$198	= .
	.globl	C$main.c$346$3_1$198
;main.c:346: SPRITES_8x8;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfb
	ldh	(_LCDC_REG + 0), a
	C$main.c$347$3_1$198	= .
	.globl	C$main.c$347$3_1$198
;main.c:347: set_sprite_palette(0,3,&spritepalette[0]);
	ld	de, #_spritepalette
	push	de
	ld	hl, #0x300
	push	hl
	call	_set_sprite_palette
	add	sp, #4
	C$main.c$348$3_1$198	= .
	.globl	C$main.c$348$3_1$198
;main.c:348: set_sprite_data(0, 8, Player);   /* defines the sprite data */
	ld	de, #_Player
	push	de
	ld	hl, #0x800
	push	hl
	call	_set_sprite_data
	add	sp, #4
;c:/gbdk/include/gb/gb.h:1174: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1220: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 3)
	ld	(hl), #0x00
	C$main.c$352$3_1$198	= .
	.globl	C$main.c$352$3_1$198
;main.c:352: playerlocation[0] = 8*10;
	ld	hl, #_playerlocation
	ld	(hl), #0x50
	C$main.c$353$3_1$198	= .
	.globl	C$main.c$353$3_1$198
;main.c:353: playerlocation[1] = 8*11;
	ld	hl, #(_playerlocation + 1)
	ld	(hl), #0x58
;main.c:354: move_sprite(0,playerlocation[0],playerlocation[1]);
	ld	hl, #(_playerlocation + 1)
	ld	c, (hl)
	ld	hl, #_playerlocation
	ld	b, (hl)
;c:/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;c:/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	C$main.c$358$3_1$198	= .
	.globl	C$main.c$358$3_1$198
;main.c:358: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
	C$main.c$359$3_1$198	= .
	.globl	C$main.c$359$3_1$198
;main.c:359: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$main.c$360$3_1$198	= .
	.globl	C$main.c$360$3_1$198
;main.c:360: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
	C$main.c$362$3_1$198	= .
	.globl	C$main.c$362$3_1$198
;main.c:362: while(1){
00136$:
	C$main.c$363$4_1$199	= .
	.globl	C$main.c$363$4_1$199
;main.c:363: if(joypad() & J_A){
	call	_joypad
	bit	4, e
	jr	Z, 00107$
	C$main.c$365$5_1$200	= .
	.globl	C$main.c$365$5_1$200
;main.c:365: triggerTile(1);
	ld	a, #0x01
	push	af
	inc	sp
	call	_triggerTile
	inc	sp
00107$:
	C$main.c$367$4_1$199	= .
	.globl	C$main.c$367$4_1$199
;main.c:367: if(joypad() & J_B){
	call	_joypad
	bit	5, e
	jr	Z, 00109$
	C$main.c$369$5_1$201	= .
	.globl	C$main.c$369$5_1$201
;main.c:369: triggerTile(0);
	xor	a, a
	push	af
	inc	sp
	call	_triggerTile
	inc	sp
00109$:
	C$main.c$371$4_1$199	= .
	.globl	C$main.c$371$4_1$199
;main.c:371: if(joypad() & J_LEFT){
	call	_joypad
	bit	1, e
	jr	Z, 00127$
	C$main.c$372$5_1$202	= .
	.globl	C$main.c$372$5_1$202
;main.c:372: if(canplayermove(playerlocation[0]-8,playerlocation[1])){
	ld	hl, #(_playerlocation + 1)
	ld	b, (hl)
	ld	a, (#_playerlocation + 0)
	add	a, #0xf8
	push	bc
	inc	sp
	push	af
	inc	sp
	call	_canplayermove
	pop	hl
	ld	a, e
	or	a, a
	jp	Z, 00128$
	C$main.c$373$6_1$203	= .
	.globl	C$main.c$373$6_1$203
;main.c:373: playerlocation[0] -= 8;
	ld	a, (#_playerlocation + 0)
	add	a, #0xf8
	ld	(#_playerlocation),a
	C$main.c$374$6_1$203	= .
	.globl	C$main.c$374$6_1$203
;main.c:374: animatesprite(0,-8,0);
	ld	hl, #0xf8
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_animatesprite
	add	sp, #3
	jp	00128$
00127$:
	C$main.c$377$4_1$199	= .
	.globl	C$main.c$377$4_1$199
;main.c:377: else if(joypad() & J_RIGHT){
	call	_joypad
	ld	a, e
	rrca
	jr	NC, 00124$
	C$main.c$378$5_1$204	= .
	.globl	C$main.c$378$5_1$204
;main.c:378: if(canplayermove(playerlocation[0]+8,playerlocation[1])){            
	ld	hl, #(_playerlocation + 1)
	ld	b, (hl)
	ld	a, (#_playerlocation + 0)
	add	a, #0x08
	push	bc
	inc	sp
	push	af
	inc	sp
	call	_canplayermove
	pop	hl
	ld	a, e
	or	a, a
	jr	Z, 00128$
	C$main.c$379$6_1$205	= .
	.globl	C$main.c$379$6_1$205
;main.c:379: playerlocation[0] += 8;
	ld	a, (#_playerlocation + 0)
	add	a, #0x08
	ld	(#_playerlocation),a
	C$main.c$380$6_1$205	= .
	.globl	C$main.c$380$6_1$205
;main.c:380: animatesprite(0,8,0);
	ld	hl, #0x08
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_animatesprite
	add	sp, #3
	jr	00128$
00124$:
	C$main.c$383$4_1$199	= .
	.globl	C$main.c$383$4_1$199
;main.c:383: else if(joypad() & J_UP){
	call	_joypad
	bit	2, e
	jr	Z, 00121$
	C$main.c$384$5_1$206	= .
	.globl	C$main.c$384$5_1$206
;main.c:384: if(canplayermove(playerlocation[0],playerlocation[1]-8)){
	ld	a, (#(_playerlocation + 1) + 0)
	add	a, #0xf8
	ld	b, a
	ld	a, (#_playerlocation + 0)
	push	bc
	inc	sp
	push	af
	inc	sp
	call	_canplayermove
	pop	hl
	ld	a, e
	or	a, a
	jr	Z, 00128$
	C$main.c$385$6_1$207	= .
	.globl	C$main.c$385$6_1$207
;main.c:385: playerlocation[1] -= 8;
	ld	a, (#(_playerlocation + 1) + 0)
	add	a, #0xf8
	ld	(#(_playerlocation + 1)),a
	C$main.c$386$6_1$207	= .
	.globl	C$main.c$386$6_1$207
;main.c:386: animatesprite(0,0,-8);
	ld	a, #0xf8
	push	af
	inc	sp
	xor	a, a
	rrca
	push	af
	call	_animatesprite
	add	sp, #3
	jr	00128$
00121$:
	C$main.c$389$4_1$199	= .
	.globl	C$main.c$389$4_1$199
;main.c:389: else if(joypad() & J_DOWN){
	call	_joypad
	bit	3, e
	jr	Z, 00128$
	C$main.c$390$5_1$208	= .
	.globl	C$main.c$390$5_1$208
;main.c:390: if(canplayermove(playerlocation[0],playerlocation[1]+8)){
	ld	a, (#(_playerlocation + 1) + 0)
	add	a, #0x08
	ld	b, a
	ld	a, (#_playerlocation + 0)
	push	bc
	inc	sp
	push	af
	inc	sp
	call	_canplayermove
	pop	hl
	ld	a, e
	or	a, a
	jr	Z, 00128$
	C$main.c$391$6_1$209	= .
	.globl	C$main.c$391$6_1$209
;main.c:391: playerlocation[1] += 8;
	ld	a, (#(_playerlocation + 1) + 0)
	add	a, #0x08
	ld	(#(_playerlocation + 1)),a
	C$main.c$392$6_1$209	= .
	.globl	C$main.c$392$6_1$209
;main.c:392: animatesprite(0,0,8);
	ld	a, #0x08
	push	af
	inc	sp
	xor	a, a
	rrca
	push	af
	call	_animatesprite
	add	sp, #3
00128$:
	C$main.c$395$4_1$199	= .
	.globl	C$main.c$395$4_1$199
;main.c:395: if(lastAnimation >= 30){
;setupPair	HL
	ld	a, (#_lastAnimation)
	sub	a, #0x1e
	jr	C, 00130$
;main.c:396: set_sprite_tile(0, 1+playerSprite);
;setupPair	HL
	ld	hl, #_playerSprite
	ld	c, (hl)
	inc	c
;c:/gbdk/include/gb/gb.h:1174: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), c
	C$main.c$397$5_1$210	= .
	.globl	C$main.c$397$5_1$210
;main.c:397: playerSprite = !playerSprite;
;setupPair	HL
	ld	hl, #_playerSprite
	ld	a, (hl)
	sub	a,#0x01
	ld	a, #0x00
	rla
;setupPair	HL
	ld	(hl), a
	C$main.c$398$5_1$210	= .
	.globl	C$main.c$398$5_1$210
;main.c:398: lastAnimation = 0;
;setupPair	HL
	ld	hl, #_lastAnimation
	ld	(hl), #0x00
00130$:
	C$main.c$400$4_1$199	= .
	.globl	C$main.c$400$4_1$199
;main.c:400: if(minesExploding){
;setupPair	HL
	ld	a, (#_minesExploding)
	or	a, a
	jr	Z, 00132$
	C$main.c$401$5_1$211	= .
	.globl	C$main.c$401$5_1$211
;main.c:401: explodeMines();
	call	_explodeMines
00132$:
	C$main.c$403$4_1$199	= .
	.globl	C$main.c$403$4_1$199
;main.c:403: performantdelay(6);
	ld	a, #0x06
	push	af
	inc	sp
	call	_performantdelay
	inc	sp
	C$main.c$404$4_1$199	= .
	.globl	C$main.c$404$4_1$199
;main.c:404: if(dead){ break;}
;setupPair	HL
	ld	a, (#_dead)
	or	a, a
	jp	Z, 00136$
	jp	00142$
	C$main.c$408$1_0$188	= .
	.globl	C$main.c$408$1_0$188
;main.c:408: }
	inc	sp
	inc	sp
	C$main.c$408$1_0$188	= .
	.globl	C$main.c$408$1_0$188
	XG$main$0$0	= .
	.globl	XG$main$0$0
	ret
G$backgroundPalette$0_0$0 == .
_backgroundPalette:
	.dw #0x7fff
	.dw #0x5294
	.dw #0x294a
	.dw #0x0000
	.dw #0x7fff
	.dw #0x69a0
	.dw #0x5294
	.dw #0x413f
	.dw #0x7fff
	.dw #0x7017
	.dw #0x5294
	.dw #0x0352
	.dw #0x7fff
	.dw #0x5294
	.dw #0x01e2
	.dw #0x0543
	.dw #0x7fff
	.dw #0x5294
	.dw #0x294a
	.dw #0x001f
	.dw #0x5bf6
	.dw #0x22e7
	.dw #0x19c4
	.dw #0x0000
G$spritepalette$0_0$0 == .
_spritepalette:
	.dw #0x17bc
	.dw #0x22e7
	.dw #0x19c4
	.dw #0x14e0
	.dw #0x17bc
	.dw #0x22e7
	.dw #0x19c4
	.dw #0x14e0
	.dw #0x17bc
	.dw #0x22e7
	.dw #0x19c4
	.dw #0x14e0
	.area _CODE
	.area _INITIALIZER
Fmain$__xinit_lastAnimation$0_0$0 == .
__xinit__lastAnimation:
	.db #0x00	; 0
Fmain$__xinit_playerSprite$0_0$0 == .
__xinit__playerSprite:
	.db #0x00	; 0
Fmain$__xinit_minesExploding$0_0$0 == .
__xinit__minesExploding:
	.db #0x00	; 0
Fmain$__xinit_mineAnimationTimer$0_0$0 == .
__xinit__mineAnimationTimer:
	.db #0x00	; 0
Fmain$__xinit_tilesFlagged$0_0$0 == .
__xinit__tilesFlagged:
	.db #0x00	; 0
Fmain$__xinit_dead$0_0$0 == .
__xinit__dead:
	.db #0x01	; 1
Fmain$__xinit_beginning$0_0$0 == .
__xinit__beginning:
	.db #0x01	; 1
	.area _CABS (ABS)
