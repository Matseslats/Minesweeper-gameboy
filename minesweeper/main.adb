M:main
S:Lmain.move_bkg$x$1_0$42({1}SC:U),B,1,2
S:Lmain.move_bkg$y$1_0$42({1}SC:U),B,1,3
S:Lmain.scroll_bkg$x$1_0$44({1}SC:S),B,1,2
S:Lmain.scroll_bkg$y$1_0$44({1}SC:S),B,1,3
S:Lmain.move_win$x$1_0$55({1}SC:U),B,1,2
S:Lmain.move_win$y$1_0$55({1}SC:U),B,1,3
S:Lmain.scroll_win$x$1_0$57({1}SC:S),B,1,2
S:Lmain.scroll_win$y$1_0$57({1}SC:S),B,1,3
S:Lmain.SET_SHADOW_OAM_ADDRESS$address$1_0$62({2}DG,SV:S),B,1,2
S:Lmain.set_sprite_tile$nb$1_0$64({1}SC:U),B,1,2
S:Lmain.set_sprite_tile$tile$1_0$64({1}SC:U),B,1,3
S:Lmain.get_sprite_tile$nb$1_0$66({1}SC:U),B,1,2
S:Lmain.set_sprite_prop$nb$1_0$68({1}SC:U),B,1,2
S:Lmain.set_sprite_prop$prop$1_0$68({1}SC:U),B,1,3
S:Lmain.get_sprite_prop$nb$1_0$70({1}SC:U),B,1,2
S:Lmain.move_sprite$nb$1_0$72({1}SC:U),B,1,2
S:Lmain.move_sprite$x$1_0$72({1}SC:U),B,1,3
S:Lmain.move_sprite$y$1_0$72({1}SC:U),B,1,4
S:Lmain.move_sprite$itm$1_0$73({2}DG,STOAM_item_t:S),B,1,-2
S:Lmain.scroll_sprite$nb$1_0$74({1}SC:U),B,1,2
S:Lmain.scroll_sprite$x$1_0$74({1}SC:S),B,1,3
S:Lmain.scroll_sprite$y$1_0$74({1}SC:S),B,1,4
S:Lmain.scroll_sprite$itm$1_0$75({2}DG,STOAM_item_t:S),B,1,-2
S:Lmain.hide_sprite$nb$1_0$76({1}SC:U),B,1,2
F:G$wait_vlb_done_two$0_0$0({2}DF,SV:S),C,0,0,0,0,0
F:G$performantdelay$0_0$0({2}DF,SV:S),C,0,0,0,0,0
S:Lmain.performantdelay$numloops$1_0$110({1}SC:U),B,1,2
S:Lmain.performantdelay$i$1_0$111({1}SC:U),R,0,0,[c]
F:G$surround$0_0$0({2}DF,SI:S),C,0,-2,0,0,0
S:Lmain.surround$x$1_0$114({1}SC:U),B,1,2
S:Lmain.surround$y$1_0$114({1}SC:U),B,1,3
S:Lmain.surround$surround$1_0$115({1}SC:U),R,0,0,[c]
S:Lmain.surround$i$2_0$116({1}SC:S),B,1,-2
S:Lmain.surround$j$4_0$118({1}SC:S),B,1,-1
S:Lmain.surround$sloc0$0_1$0({1}SC:S),B,1,-2
S:Lmain.surround$sloc1$0_1$0({1}SC:S),B,1,-1
S:Lmain.surround$sloc2$0_1$0({2}SI:S),B,1,-4
S:Lmain.surround$sloc3$0_1$0({2}SI:U),B,1,-2
F:G$resetmap$0_0$0({2}DF,SV:S),C,0,-4,0,0,0
S:Lmain.resetmap$y$2_0$125({1}SC:U),B,1,-2
S:Lmain.resetmap$x$4_0$127({1}SC:U),B,1,-1
S:Lmain.resetmap$index$5_0$128({2}SI:U),R,0,0,[c,b]
S:Lmain.resetmap$y$2_0$129({1}SC:U),R,0,0,[c]
S:Lmain.resetmap$x$4_0$131({1}SC:U),R,0,0,[b]
S:Lmain.resetmap$index$5_0$132({2}SI:U),R,0,0,[e,d]
S:Lmain.resetmap$sloc0$0_1$0({1}SC:U),B,1,-2
S:Lmain.resetmap$sloc1$0_1$0({1}SC:U),B,1,-1
S:Lmain.resetmap$sloc2$0_1$0({2}SI:S),B,1,-4
S:Lmain.resetmap$sloc3$0_1$0({2}SI:S),B,1,-4
S:Lmain.resetmap$sloc4$0_1$0({2}SI:S),B,1,-2
F:G$generateMines$0_0$0({2}DF,SV:S),C,0,-20,0,0,0
S:Lmain.generateMines$w$1_0$133({1}SC:U),B,1,2
S:Lmain.generateMines$h$1_0$133({1}SC:U),B,1,3
S:Lmain.generateMines$mineAmount$1_0$133({1}SC:U),B,1,4
S:Lmain.generateMines$i$2_0$135({1}SC:U),B,1,-2
S:Lmain.generateMines$j$4_0$137({1}SC:U),B,1,-1
S:Lmain.generateMines$allGenerated$1_1$139({1}SC:U),B,1,-7
S:Lmain.generateMines$mineNo$1_1$139({1}SC:U),B,1,-1
S:Lmain.generateMines$tryX$2_1$140({1}SC:U),B,1,-6
S:Lmain.generateMines$tryY$2_1$140({1}SC:U),B,1,-5
S:Lmain.generateMines$mineIndex$3_2$142({2}SI:U),B,1,-4
S:Lmain.generateMines$x$2_1$143({1}SC:U),B,1,-2
S:Lmain.generateMines$y$4_1$145({1}SC:U),B,1,-1
S:Lmain.generateMines$sloc0$0_1$0({1}SC:U),B,1,-2
S:Lmain.generateMines$sloc1$0_1$0({1}SC:U),B,1,-1
S:Lmain.generateMines$sloc2$0_1$0({1}SC:U),B,1,-7
S:Lmain.generateMines$sloc3$0_1$0({1}SC:U),B,1,-2
S:Lmain.generateMines$sloc4$0_1$0({1}SC:U),B,1,-1
S:Lmain.generateMines$sloc5$0_1$0({1}SC:U),B,1,-6
S:Lmain.generateMines$sloc6$0_1$0({1}SC:U),B,1,-5
S:Lmain.generateMines$sloc7$0_1$0({2}DD,SC:U),B,1,-4
S:Lmain.generateMines$sloc8$0_1$0({2}SI:S),B,1,-4
S:Lmain.generateMines$sloc9$0_1$0({2}SI:S),B,1,-4
S:Lmain.generateMines$sloc10$0_1$0({2}SI:S),B,1,-9
S:Lmain.generateMines$sloc11$0_1$0({2}SI:S),B,1,-6
S:Lmain.generateMines$sloc12$0_1$0({2}SI:U),B,1,-4
S:Lmain.generateMines$sloc13$0_1$0({2}SI:S),B,1,-6
S:Lmain.generateMines$sloc14$0_1$0({2}SI:U),B,1,-8
S:Lmain.generateMines$sloc15$0_1$0({2}DD,SI:U),B,1,-6
S:Lmain.generateMines$sloc16$0_1$0({1}SC:U),B,1,-2
S:Lmain.generateMines$sloc17$0_1$0({1}SC:U),B,1,-1
S:Lmain.generateMines$sloc18$0_1$0({2}DD,SC:U),B,1,-4
F:G$explodeMines$0_0$0({2}DF,SV:S),C,0,2,0,0,0
S:Lmain.explodeMines$pal$1_0$147({1}DA1d,SC:U),B,1,-13
S:Lmain.explodeMines$ex$1_0$147({1}SC:U),B,1,-2
S:Lmain.explodeMines$tile$2_0$148({1}DA1d,SC:U),B,1,-12
S:Lmain.explodeMines$i$3_0$149({1}SC:U),B,1,-1
S:Lmain.explodeMines$index$4_0$150({2}SI:U),B,1,-4
S:Lmain.explodeMines$sloc0$0_1$0({2}DD,SC:U),B,1,-11
S:Lmain.explodeMines$sloc1$0_1$0({1}SC:U),B,1,-2
S:Lmain.explodeMines$sloc2$0_1$0({2}DD,SC:U),B,1,-9
S:Lmain.explodeMines$sloc3$0_1$0({2}DD,SC:U),B,1,-7
S:Lmain.explodeMines$sloc4$0_1$0({1}SC:U),B,1,-1
S:Lmain.explodeMines$sloc5$0_1$0({1}SC:U),B,1,-5
S:Lmain.explodeMines$sloc6$0_1$0({2}SI:U),B,1,-4
F:G$uncover$0_0$0({2}DF,SV:S),C,0,2,0,0,0
S:Lmain.uncover$x$1_0$151({1}SC:U),B,1,2
S:Lmain.uncover$y$1_0$151({1}SC:U),B,1,3
S:Lmain.uncover$index$1_0$152({2}SI:U),B,1,-13
S:Lmain.uncover$tile$4_0$155({1}DA1d,SC:U),B,1,-15
S:Lmain.uncover$pal$4_0$155({1}DA1d,SC:U),B,1,-14
S:Lmain.uncover$suroundingThisTile$4_0$155({1}SC:U),B,1,-7
S:Lmain.uncover$sloc0$0_1$0({2}SI:U),B,1,-13
S:Lmain.uncover$sloc1$0_1$0({2}DD,SC:U),B,1,-11
S:Lmain.uncover$sloc2$0_1$0({2}DD,SC:U),B,1,-9
S:Lmain.uncover$sloc3$0_1$0({1}SC:U),B,1,-7
S:Lmain.uncover$sloc4$0_1$0({2}DD,SC:U),B,1,-6
S:Lmain.uncover$sloc5$0_1$0({1}SC:U),B,1,-4
S:Lmain.uncover$sloc6$0_1$0({1}SC:S),B,1,-3
S:Lmain.uncover$sloc7$0_1$0({1}SC:S),B,1,-2
S:Lmain.uncover$sloc8$0_1$0({1}SC:S),B,1,-1
F:G$checkWin$0_0$0({2}DF,SC:U),C,0,0,0,0,0
S:Lmain.checkWin$matches$2_0$161({1}SC:U),R,0,0,[]
S:Lmain.checkWin$flagNo$3_0$162({1}SC:U),R,0,0,[]
S:Lmain.checkWin$mineNo$5_0$164({1}SC:U),R,0,0,[]
F:G$triggerTile$0_0$0({2}DF,SV:S),C,0,-11,0,0,0
S:Lmain.triggerTile$type$1_0$167({1}SC:U),B,1,2
S:Lmain.triggerTile$indexTLx$1_0$168({2}SI:U),B,1,-2
S:Lmain.triggerTile$indexTLy$1_0$168({2}SI:U),R,0,0,[c,b]
S:Lmain.triggerTile$tileindexTL$1_0$168({2}SI:U),B,1,-5
S:Lmain.triggerTile$sloc0$0_1$0({2}SI:S),B,1,-4
S:Lmain.triggerTile$sloc1$0_1$0({2}SI:S),B,1,-2
S:Lmain.triggerTile$sloc2$0_1$0({2}SI:U),B,1,-2
S:Lmain.triggerTile$sloc3$0_1$0({2}SI:S),B,1,-6
S:Lmain.triggerTile$sloc4$0_1$0({2}SI:S),B,1,-4
S:Lmain.triggerTile$sloc5$0_1$0({2}SI:U),B,1,-4
S:Lmain.triggerTile$sloc6$0_1$0({2}SI:U),B,1,-5
S:Lmain.triggerTile$sloc7$0_1$0({1}SC:U),B,1,-3
S:Lmain.triggerTile$sloc8$0_1$0({2}DD,SC:U),B,1,-2
F:G$canplayermove$0_0$0({2}DF,SC:U),C,0,-4,0,0,0
S:Lmain.canplayermove$newplayerx$1_0$173({1}SC:U),B,1,2
S:Lmain.canplayermove$newplayery$1_0$173({1}SC:U),B,1,3
S:Lmain.canplayermove$indexTLx$1_0$174({2}SI:U),B,1,-6
S:Lmain.canplayermove$indexTLy$1_0$174({2}SI:U),R,0,0,[c,b]
S:Lmain.canplayermove$tileindexTL$1_0$174({2}SI:U),R,0,0,[c,b]
S:Lmain.canplayermove$i$2_0$175({2}SI:S),R,0,0,[l,h]
S:Lmain.canplayermove$sloc0$0_1$0({2}SI:S),B,1,-4
S:Lmain.canplayermove$sloc1$0_1$0({2}SI:S),B,1,-2
S:Lmain.canplayermove$sloc2$0_1$0({2}SI:U),B,1,-6
S:Lmain.canplayermove$sloc3$0_1$0({2}SI:S),B,1,-4
S:Lmain.canplayermove$sloc4$0_1$0({2}SI:S),B,1,-2
F:G$animatesprite$0_0$0({2}DF,SV:S),C,0,0,0,0,0
S:Lmain.animatesprite$spriteindex$1_0$178({1}SC:U),B,1,2
S:Lmain.animatesprite$movex$1_0$178({1}SC:S),B,1,3
S:Lmain.animatesprite$movey$1_0$178({1}SC:S),B,1,4
S:Lmain.animatesprite$__1966080005$3_0$182({1}SC:U),R,0,0,[c]
S:Lmain.animatesprite$__1966080006$3_0$182({1}SC:S),R,0,0,[b]
S:Lmain.animatesprite$__1966080007$3_0$182({1}SC:S),R,0,0,[]
S:Lmain.animatesprite$nb$4_0$183({1}SC:U),R,0,0,[]
S:Lmain.animatesprite$x$4_0$183({1}SC:S),R,0,0,[]
S:Lmain.animatesprite$y$4_0$183({1}SC:S),R,0,0,[]
S:Lmain.animatesprite$itm$5_0$184({2}DG,STOAM_item_t:S),R,0,0,[l,h]
S:Lmain.animatesprite$__1966080009$3_0$185({1}SC:U),R,0,0,[c]
S:Lmain.animatesprite$__1966080010$3_0$185({1}SC:S),R,0,0,[]
S:Lmain.animatesprite$__1966080011$3_0$185({1}SC:S),R,0,0,[b]
S:Lmain.animatesprite$nb$4_0$186({1}SC:U),R,0,0,[]
S:Lmain.animatesprite$x$4_0$186({1}SC:S),R,0,0,[]
S:Lmain.animatesprite$y$4_0$186({1}SC:S),R,0,0,[]
S:Lmain.animatesprite$itm$5_0$187({2}DG,STOAM_item_t:S),R,0,0,[l,h]
F:G$main$0_0$0({2}DF,SV:S),C,0,0,0,0,0
S:Lmain.main$y$4_0$193({1}SC:U),R,0,0,[c]
S:Lmain.main$x$6_0$195({1}SC:U),R,0,0,[b]
S:Lmain.main$index$7_0$196({2}SI:U),R,0,0,[e,d]
S:Lmain.main$seed$3_1$198({2}SI:U),R,0,0,[c,b]
S:Lmain.main$__2621450013$4_1$213({1}SC:U),R,0,0,[]
S:Lmain.main$__2621450014$4_1$213({1}SC:U),R,0,0,[]
S:Lmain.main$nb$5_1$214({1}SC:U),R,0,0,[]
S:Lmain.main$tile$5_1$214({1}SC:U),R,0,0,[]
S:Lmain.main$__2621450016$4_1$216({1}SC:U),R,0,0,[]
S:Lmain.main$__2621450017$4_1$216({1}SC:U),R,0,0,[]
S:Lmain.main$nb$5_1$217({1}SC:U),R,0,0,[]
S:Lmain.main$prop$5_1$217({1}SC:U),R,0,0,[]
S:Lmain.main$__2621450019$4_1$219({1}SC:U),R,0,0,[]
S:Lmain.main$__2621450020$4_1$219({1}SC:U),R,0,0,[b]
S:Lmain.main$__2621450021$4_1$219({1}SC:U),R,0,0,[c]
S:Lmain.main$nb$5_1$220({1}SC:U),R,0,0,[]
S:Lmain.main$x$5_1$220({1}SC:U),R,0,0,[]
S:Lmain.main$y$5_1$220({1}SC:U),R,0,0,[]
S:Lmain.main$itm$6_1$221({2}DG,STOAM_item_t:S),R,0,0,[l,h]
S:Lmain.main$__3932170023$6_1$222({1}SC:U),R,0,0,[]
S:Lmain.main$__3932170024$6_1$222({1}SC:U),R,0,0,[c]
S:Lmain.main$nb$7_1$223({1}SC:U),R,0,0,[]
S:Lmain.main$tile$7_1$223({1}SC:U),R,0,0,[]
S:Lmain.main$sloc0$0_1$0({2}SI:S),B,1,-2
T:Fmain$__00000000[({0}S:S$l$0_0$0({1}SC:U),Z,0,0)({1}S:S$h$0_0$0({1}SC:U),Z,0,0)]
T:Fmain$__00000001[({0}S:S$npads$0_0$0({1}SC:U),Z,0,0)({1}S:S$joy0$0_0$0({1}SC:U),Z,0,0)({2}S:S$joy1$0_0$0({1}SC:U),Z,0,0)({3}S:S$joy2$0_0$0({1}SC:U),Z,0,0)({4}S:S$joy3$0_0$0({1}SC:U),Z,0,0)({1}S:S$joypads$0_0$0({4}DA4d,SC:U),Z,0,0)]
T:Fmain$__00000002[({0}S:S$joy0$0_0$0({1}SC:U),Z,0,0)({1}S:S$joy1$0_0$0({1}SC:U),Z,0,0)({2}S:S$joy2$0_0$0({1}SC:U),Z,0,0)({3}S:S$joy3$0_0$0({1}SC:U),Z,0,0)({0}S:S$joypads$0_0$0({4}DA4d,SC:U),Z,0,0)]
T:Fmain$__00000003[({0}S:S$joy0$0_0$0({1}SC:U),Z,0,0)({1}S:S$joy1$0_0$0({1}SC:U),Z,0,0)({2}S:S$joy2$0_0$0({1}SC:U),Z,0,0)({3}S:S$joy3$0_0$0({1}SC:U),Z,0,0)]
T:Fmain$_fixed[({0}S:S$b$0_0$0({2}ST__00000000:S),Z,0,0)({0}S:S$w$0_0$0({2}SI:U),Z,0,0)]
T:Fmain$OAM_item_t[({0}S:S$y$0_0$0({1}SC:U),Z,0,0)({1}S:S$x$0_0$0({1}SC:U),Z,0,0)({2}S:S$tile$0_0$0({1}SC:U),Z,0,0)({3}S:S$prop$0_0$0({1}SC:U),Z,0,0)]
T:Fmain$sfont_handle[({0}S:S$first_tile$0_0$0({1}SC:U),Z,0,0)({1}S:S$font$0_0$0({2}DG,SV:S),Z,0,0)]
S:G$lastAnimation$0_0$0({1}SC:U),E,0,0
S:G$playerSprite$0_0$0({1}SC:U),E,0,0
S:G$minesExploding$0_0$0({1}SC:U),E,0,0
S:G$mineAnimationTimer$0_0$0({1}SC:U),E,0,0
S:G$tilesFlagged$0_0$0({1}SC:U),E,0,0
S:G$dead$0_0$0({1}SC:U),E,0,0
S:G$beginning$0_0$0({1}SC:U),E,0,0
S:G$_cpu$0_0$0({1}SC:U),E,0,0
S:G$sys_time$0_0$0({2}SI:U),E,0,0
S:G$_io_status$0_0$0({1}SC:U),E,0,0
S:G$_io_in$0_0$0({1}SC:U),E,0,0
S:G$_io_out$0_0$0({1}SC:U),E,0,0
S:G$shadow_OAM$0_0$0({0}DA0d,STOAM_item_t:S),E,0,0
S:G$font_spect$0_0$0({0}DA0d,SC:U),E,0,0
S:G$font_italic$0_0$0({0}DA0d,SC:U),E,0,0
S:G$font_ibm$0_0$0({0}DA0d,SC:U),E,0,0
S:G$font_min$0_0$0({0}DA0d,SC:U),E,0,0
S:G$font_ibm_fixed$0_0$0({0}DA0d,SC:U),E,0,0
S:G$GameBackgroundPLN0$0_0$0({0}DA0d,SC:U),E,0,0
S:G$GameBackgroundPLN1$0_0$0({0}DA0d,SC:U),E,0,0
S:G$BackgroundTilesCGB$0_0$0({0}DA0d,SC:U),E,0,0
S:G$BackgroundTiles$0_0$0({0}DA0d,SC:U),E,0,0
S:G$PlayerCGB$0_0$0({0}DA0d,SC:U),E,0,0
S:G$Player$0_0$0({0}DA0d,SC:U),E,0,0
S:G$playerlocation$0_0$0({2}DA2d,SC:U),E,0,0
S:G$mines$0_0$0({270}DA18d,DA15d,SC:U),E,0,0
S:G$surrounding$0_0$0({270}DA18d,DA15d,SC:U),E,0,0
S:G$mineLocationsX$0_0$0({40}DA40d,SC:U),E,0,0
S:G$mineLocationsY$0_0$0({40}DA40d,SC:U),E,0,0
S:G$flagIndexes$0_0$0({70}DA35d,SI:U),E,0,0
S:G$mineIndexes$0_0$0({70}DA35d,SI:U),E,0,0
S:G$P1_REG$0_0$0({1}SC:U),I,0,0
S:G$SB_REG$0_0$0({1}SC:U),I,0,0
S:G$SC_REG$0_0$0({1}SC:U),I,0,0
S:G$DIV_REG$0_0$0({1}SC:U),I,0,0
S:G$TIMA_REG$0_0$0({1}SC:U),I,0,0
S:G$TMA_REG$0_0$0({1}SC:U),I,0,0
S:G$TAC_REG$0_0$0({1}SC:U),I,0,0
S:G$IF_REG$0_0$0({1}SC:U),I,0,0
S:G$NR10_REG$0_0$0({1}SC:U),I,0,0
S:G$NR11_REG$0_0$0({1}SC:U),I,0,0
S:G$NR12_REG$0_0$0({1}SC:U),I,0,0
S:G$NR13_REG$0_0$0({1}SC:U),I,0,0
S:G$NR14_REG$0_0$0({1}SC:U),I,0,0
S:G$NR21_REG$0_0$0({1}SC:U),I,0,0
S:G$NR22_REG$0_0$0({1}SC:U),I,0,0
S:G$NR23_REG$0_0$0({1}SC:U),I,0,0
S:G$NR24_REG$0_0$0({1}SC:U),I,0,0
S:G$NR30_REG$0_0$0({1}SC:U),I,0,0
S:G$NR31_REG$0_0$0({1}SC:U),I,0,0
S:G$NR32_REG$0_0$0({1}SC:U),I,0,0
S:G$NR33_REG$0_0$0({1}SC:U),I,0,0
S:G$NR34_REG$0_0$0({1}SC:U),I,0,0
S:G$NR41_REG$0_0$0({1}SC:U),I,0,0
S:G$NR42_REG$0_0$0({1}SC:U),I,0,0
S:G$NR43_REG$0_0$0({1}SC:U),I,0,0
S:G$NR44_REG$0_0$0({1}SC:U),I,0,0
S:G$NR50_REG$0_0$0({1}SC:U),I,0,0
S:G$NR51_REG$0_0$0({1}SC:U),I,0,0
S:G$NR52_REG$0_0$0({1}SC:U),I,0,0
S:G$LCDC_REG$0_0$0({1}SC:U),I,0,0
S:G$STAT_REG$0_0$0({1}SC:U),I,0,0
S:G$SCY_REG$0_0$0({1}SC:U),I,0,0
S:G$SCX_REG$0_0$0({1}SC:U),I,0,0
S:G$LY_REG$0_0$0({1}SC:U),I,0,0
S:G$LYC_REG$0_0$0({1}SC:U),I,0,0
S:G$DMA_REG$0_0$0({1}SC:U),I,0,0
S:G$BGP_REG$0_0$0({1}SC:U),I,0,0
S:G$OBP0_REG$0_0$0({1}SC:U),I,0,0
S:G$OBP1_REG$0_0$0({1}SC:U),I,0,0
S:G$WY_REG$0_0$0({1}SC:U),I,0,0
S:G$WX_REG$0_0$0({1}SC:U),I,0,0
S:G$KEY1_REG$0_0$0({1}SC:U),I,0,0
S:G$VBK_REG$0_0$0({1}SC:U),I,0,0
S:G$HDMA1_REG$0_0$0({1}SC:U),I,0,0
S:G$HDMA2_REG$0_0$0({1}SC:U),I,0,0
S:G$HDMA3_REG$0_0$0({1}SC:U),I,0,0
S:G$HDMA4_REG$0_0$0({1}SC:U),I,0,0
S:G$HDMA5_REG$0_0$0({1}SC:U),I,0,0
S:G$RP_REG$0_0$0({1}SC:U),I,0,0
S:G$BCPS_REG$0_0$0({1}SC:U),I,0,0
S:G$BCPD_REG$0_0$0({1}SC:U),I,0,0
S:G$OCPS_REG$0_0$0({1}SC:U),I,0,0
S:G$OCPD_REG$0_0$0({1}SC:U),I,0,0
S:G$SVBK_REG$0_0$0({1}SC:U),I,0,0
S:G$IE_REG$0_0$0({1}SC:U),I,0,0
S:G$_current_bank$0_0$0({1}SC:U),I,0,0
S:G$_shadow_OAM_base$0_0$0({1}SC:U),I,0,0
S:G$remove_VBL$0_0$0({2}DF,SV:S),C,0,0
S:G$remove_LCD$0_0$0({2}DF,SV:S),C,0,0
S:G$remove_TIM$0_0$0({2}DF,SV:S),C,0,0
S:G$remove_SIO$0_0$0({2}DF,SV:S),C,0,0
S:G$remove_JOY$0_0$0({2}DF,SV:S),C,0,0
S:G$add_VBL$0_0$0({2}DF,SV:S),C,0,0
S:G$add_LCD$0_0$0({2}DF,SV:S),C,0,0
S:G$add_TIM$0_0$0({2}DF,SV:S),C,0,0
S:G$add_SIO$0_0$0({2}DF,SV:S),C,0,0
S:G$add_JOY$0_0$0({2}DF,SV:S),C,0,0
S:G$nowait_int_handler$0_0$0({2}DF,SV:S),C,0,0
S:G$wait_int_handler$0_0$0({2}DF,SV:S),C,0,0
S:G$mode$0_0$0({2}DF,SV:S),C,0,0
S:G$get_mode$0_0$0({2}DF,SC:U),C,0,0
S:G$send_byte$0_0$0({2}DF,SV:S),C,0,0
S:G$receive_byte$0_0$0({2}DF,SV:S),C,0,0
S:G$delay$0_0$0({2}DF,SV:S),C,0,0
S:G$joypad$0_0$0({2}DF,SC:U),C,0,0
S:G$waitpad$0_0$0({2}DF,SC:U),C,0,0
S:G$waitpadup$0_0$0({2}DF,SV:S),C,0,0
S:G$joypad_init$0_0$0({2}DF,SC:U),C,0,0
S:G$joypad_ex$0_0$0({2}DF,SV:S),C,0,0
S:G$enable_interrupts$0_0$0({2}DF,SV:S),C,0,0
S:G$disable_interrupts$0_0$0({2}DF,SV:S),C,0,0
S:G$set_interrupts$0_0$0({2}DF,SV:S),C,0,0
S:G$reset$0_0$0({2}DF,SV:S),C,0,0
S:G$wait_vbl_done$0_0$0({2}DF,SV:S),C,0,0
S:G$display_off$0_0$0({2}DF,SV:S),C,0,0
S:G$hiramcpy$0_0$0({2}DF,SV:S),C,0,0
S:G$set_vram_byte$0_0$0({2}DF,SV:S),C,0,0
S:G$get_vram_byte$0_0$0({2}DF,SC:U),C,0,0
S:G$get_bkg_xy_addr$0_0$0({2}DF,DG,SC:U),C,0,0
S:G$set_bkg_data$0_0$0({2}DF,SV:S),C,0,0
S:G$set_bkg_1bit_data$0_0$0({2}DF,SV:S),C,0,0
S:G$get_bkg_data$0_0$0({2}DF,SV:S),C,0,0
S:G$set_bkg_tiles$0_0$0({2}DF,SV:S),C,0,0
S:G$set_bkg_submap$0_0$0({2}DF,SV:S),C,0,0
S:G$get_bkg_tiles$0_0$0({2}DF,SV:S),C,0,0
S:G$set_bkg_tile_xy$0_0$0({2}DF,DG,SC:U),C,0,0
S:G$get_bkg_tile_xy$0_0$0({2}DF,SC:U),C,0,0
S:G$move_bkg$0_0$0({2}DF,SV:S),C,0,0
S:G$scroll_bkg$0_0$0({2}DF,SV:S),C,0,0
S:G$get_win_xy_addr$0_0$0({2}DF,DG,SC:U),C,0,0
S:G$set_win_data$0_0$0({2}DF,SV:S),C,0,0
S:G$set_win_1bit_data$0_0$0({2}DF,SV:S),C,0,0
S:G$get_win_data$0_0$0({2}DF,SV:S),C,0,0
S:G$set_win_tiles$0_0$0({2}DF,SV:S),C,0,0
S:G$set_win_submap$0_0$0({2}DF,SV:S),C,0,0
S:G$get_win_tiles$0_0$0({2}DF,SV:S),C,0,0
S:G$set_win_tile_xy$0_0$0({2}DF,DG,SC:U),C,0,0
S:G$get_win_tile_xy$0_0$0({2}DF,SC:U),C,0,0
S:G$move_win$0_0$0({2}DF,SV:S),C,0,0
S:G$scroll_win$0_0$0({2}DF,SV:S),C,0,0
S:G$set_sprite_data$0_0$0({2}DF,SV:S),C,0,0
S:G$set_sprite_1bit_data$0_0$0({2}DF,SV:S),C,0,0
S:G$get_sprite_data$0_0$0({2}DF,SV:S),C,0,0
S:G$SET_SHADOW_OAM_ADDRESS$0_0$0({2}DF,SV:S),C,0,0
S:G$set_sprite_tile$0_0$0({2}DF,SV:S),C,0,0
S:G$get_sprite_tile$0_0$0({2}DF,SC:U),C,0,0
S:G$set_sprite_prop$0_0$0({2}DF,SV:S),C,0,0
S:G$get_sprite_prop$0_0$0({2}DF,SC:U),C,0,0
S:G$move_sprite$0_0$0({2}DF,SV:S),C,0,2
S:G$scroll_sprite$0_0$0({2}DF,SV:S),C,0,2
S:G$hide_sprite$0_0$0({2}DF,SV:S),C,0,0
S:G$set_data$0_0$0({2}DF,SV:S),C,0,0
S:G$get_data$0_0$0({2}DF,SV:S),C,0,0
S:G$set_tiles$0_0$0({2}DF,SV:S),C,0,0
S:G$set_tile_data$0_0$0({2}DF,SV:S),C,0,0
S:G$get_tiles$0_0$0({2}DF,SV:S),C,0,0
S:G$init_win$0_0$0({2}DF,SV:S),C,0,0
S:G$init_bkg$0_0$0({2}DF,SV:S),C,0,0
S:G$vmemset$0_0$0({2}DF,SV:S),C,0,0
S:G$fill_bkg_rect$0_0$0({2}DF,SV:S),C,0,0
S:G$fill_win_rect$0_0$0({2}DF,SV:S),C,0,0
S:G$set_bkg_palette$0_0$0({2}DF,SV:S),C,0,0
S:G$set_sprite_palette$0_0$0({2}DF,SV:S),C,0,0
S:G$set_bkg_palette_entry$0_0$0({2}DF,SV:S),C,0,0
S:G$set_sprite_palette_entry$0_0$0({2}DF,SV:S),C,0,0
S:G$cpu_slow$0_0$0({2}DF,SV:S),C,0,0
S:G$cpu_fast$0_0$0({2}DF,SV:S),C,0,0
S:G$cgb_compatibility$0_0$0({2}DF,SV:S),C,0,0
S:G$putchar$0_0$0({2}DF,SV:S),C,0,0
S:G$printf$0_0$0({2}DF,SV:S),C,0,0
S:G$sprintf$0_0$0({2}DF,SV:S),C,0,0
S:G$puts$0_0$0({2}DF,SV:S),C,0,0
S:G$gets$0_0$0({2}DF,DG,SC:S),C,0,0
S:G$getchar$0_0$0({2}DF,SC:S),C,0,0
S:G$font_init$0_0$0({2}DF,SV:S),C,0,0
S:G$font_load$0_0$0({2}DF,SI:U),C,0,0
S:G$font_set$0_0$0({2}DF,SI:U),C,0,0
S:G$initrand$0_0$0({2}DF,SV:S),C,0,0
S:G$rand$0_0$0({2}DF,SC:S),C,0,0
S:G$randw$0_0$0({2}DF,SI:U),C,0,0
S:G$initarand$0_0$0({2}DF,SV:S),C,0,0
S:G$arand$0_0$0({2}DF,SC:S),C,0,0
S:G$wait_vlb_done_two$0_0$0({2}DF,SV:S),C,0,0
S:G$performantdelay$0_0$0({2}DF,SV:S),C,0,0
S:G$surround$0_0$0({2}DF,SI:S),C,0,-2
S:G$resetmap$0_0$0({2}DF,SV:S),C,0,-4
S:G$generateMines$0_0$0({2}DF,SV:S),C,0,-20
S:G$explodeMines$0_0$0({2}DF,SV:S),C,0,2
S:G$uncover$0_0$0({2}DF,SV:S),C,0,2
S:G$checkWin$0_0$0({2}DF,SC:U),C,0,0
S:G$triggerTile$0_0$0({2}DF,SV:S),C,0,-11
S:G$canplayermove$0_0$0({2}DF,SC:U),C,0,-4
S:G$animatesprite$0_0$0({2}DF,SV:S),C,0,0
S:G$main$0_0$0({2}DF,SV:S),C,0,0
