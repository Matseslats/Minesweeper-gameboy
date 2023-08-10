#include <gb/gb.h>
#include <gb/cgb.h>
#include <stdio.h>
#include <gb/font.h>
#include <types.h>
#include <stdint.h>
#include <rand.h>
#include "GameBackground.h"
#include "BackgroundTiles.h"
#include "Player.h"
#include "splash_data.c"
#include "splash_map.c"

UINT8 playerlocation[2]; // x og y koordinater
const unsigned char edgeTile[9][1] = {{0x14},{0x15},{0x16},{0x17},{0x18},{0x19},{0x1A},{0x1B},{0x1C}}; // Verdi til tile som ikke kan gås på, FUNKER IKKE
const unsigned char flagTile[1] = {0x04};
const unsigned char coveredTile[1] = {0x01};
UINT8 lastAnimation = 0;
UBYTE playerSprite = 0;
UBYTE minesExploding = 0;
UINT8 mineAnimationTimer = 0;
UBYTE mines[18][15];
UINT8 surrounding[18][15];
UINT8 mineLocationsX[40];
UINT8 mineLocationsY[40];



enum { mineCount = 35 };
UINT16 flagIndexes[mineCount];
UINT16 mineIndexes[mineCount];
UINT8 tilesFlagged = 0;
UBYTE dead = 1;
UBYTE beginning = 1;

void wait_vlb_done_two(){
    lastAnimation ++;
    wait_vbl_done();
}

void performantdelay(UINT8 numloops){
    UINT8 i;
    for(i = 0; i < numloops; i++){
        wait_vlb_done_two();
    }     
}

int surround(UINT8 x, UINT8 y) {
  //Create var to store amount
  UINT8 surround = 0;
  // Go through 9 surrounding squares
  for (INT8 i = -1; i <= +1; i++) {
    for (INT8 j = -1; j <= +1; j++) {
      if (i+x >= 0 && i+x <= 17) {
        if (j+y >= 0 && j+y <= 14) {
          // Add up mines
          if (mines[i+x][j+y] == 1) {
            surround += 1;
          }
        }
      }
    }
  }
  // Set to -1 if is mine
  if (mines[x][y] == 1) {
    surround = 20;
  }
  return surround;
}

void resetmap(){
    for (UINT8 y = 0; y <= GameBackgroundHeight; y++) {
        for (UINT8 x = 0; x <= GameBackgroundWidth; x++) {
            UINT16 index = 20 * y + x;
            GameBackgroundPLN1[index] = 0x05; // Pal
        }
    }
    for (UINT8 y = 2; y <= GameBackgroundHeight-2; y++) {
        for (UINT8 x = 1; x <= GameBackgroundWidth-2; x++) {
            UINT16 index = 20 * y + x;
            GameBackgroundPLN1[index] = 0x00; // Pal
            GameBackgroundPLN0[index] = 0x01; // Tile
        }
    }
}

void generateMines(UINT8 w, UINT8 h, UINT8 mineAmount){
    // Set every spot to be 0
    for (UINT8 i = 0; i <= w; i++) {
        for (UINT8 j = 0; j <= h; j++) {
            mines[i][j] = 0;
            //flagIndexes[j*20+w] = 362;
            //mineIndexes[j*20+w] = 361;
        }
    }
    // Generate mines
    UBYTE allGenerated = 0;
    UINT8 mineNo = 0;
    while (!allGenerated) {
        UINT8 tryX = rand()%18;//1+mineNo;//rand()/(255/w);
        UINT8 tryY = rand()%15;//1+mineNo;//rand()/(255/h);
        if (mines[tryX][tryY] == 0 && tryX >= 0 && tryY >= 0 && tryX < 18 && tryY < 15) {
            mines[tryX][tryY] = 1;
            mineLocationsX[mineNo] = tryX;
            mineLocationsY[mineNo] = tryY;

            UINT16 mineIndex = tryY*20+tryX;
            mineIndexes[mineNo] = mineIndex; // Lagre index til mine

            mineAmount --;
            mineNo ++;
            allGenerated = (mineAmount == 0); 
        }
    }
    // Calculate surrounding mines
    for (UINT8 x = 0; x <= w; x++) {
        for (UINT8 y = 0; y <= h; y++) {
            surrounding[x][y] = surround(x, y);
        }
    }
}

void explodeMines(){
    unsigned char pal[1] = {0x03};
    UBYTE ex = 0;
    // Gå gjennom alle animasjonene
    while(ex != 4){
        unsigned char tile[1] = {05+ex};
        // Sett mineposisjon til animasjonstrinn
        for(UINT8 i = 0; i < mineCount; i ++){
            UINT16 index = 20 * (mineLocationsY[i]+2) + (mineLocationsX[i]+1);
            set_bkg_tiles(mineLocationsX[i]+1,mineLocationsY[i]+2,1,1, tile);
            GameBackgroundPLN0[index] = tile[0]; // Tile
            GameBackgroundPLN1[index] = pal[0]; // Pallete
        }
        ex ++;
        performantdelay(5);
    }
}

void uncover(UINT8 x, UINT8 y) {
    UINT16 index;
    if(x >= 0 && x <= 17 && y >= 0 && y <= 14){
        index = 20 * (y+2) + (x+1);
        if(index>=20 && index < 339){
            // Save that tile is uncovered
            if (GameBackgroundPLN0[index] == coveredTile[0]) {
                unsigned char tile[1], pal[1] = {0x01};
                UINT8 suroundingThisTile = surround(x, y);
                // Tegn riktig sprite på bakgrunnen
                tile[0] = surrounding[x][y] + 9;
                pal[0] = (rand()&0x01)+1;
                if(mines[x][y] == 1){
                    tile[0] = 0x05;
                    pal[0] = 0x03;
                    minesExploding = 1;
                    dead = 1;
                } else if(suroundingThisTile == 0){
                    tile[0] = 0x02;
                    pal[0] = 0x00;
                }
                
                set_bkg_tiles(x+1,y+2,1,1, tile);
                GameBackgroundPLN0[index] = tile[0]; // Tile
                GameBackgroundPLN1[index] = pal[0]; // Pallete
                // Uncover surrounding tiles
                if (suroundingThisTile == 0) {
                    // For mye recursion skaper bug???
                    uncover(x-1, y-1);
                    uncover(x, y-1);
                    uncover(x+1, y-1);
                    uncover(x-1, y);
                    uncover(x+1, y);
                    uncover(x, y+1);
                    uncover(x-1, y+1);
                    uncover(x+1, y+1);
                }
            }
        }
    }
}

UBYTE checkWin(){
    return 0;
    if(tilesFlagged != mineCount){ // Sjekk om riktig nummer tiles er flagga
        return 0;
    } else {
        UINT8 matches = 0;
        for(UINT8 flagNo = 0; flagNo < mineCount; flagNo++){
            for(UINT8 mineNo = 0; mineNo < mineCount; mineNo++){
                // Sjekk om det er en mine der det er flagga
                if(flagIndexes[flagNo] == mineIndexes[mineNo]){
                    matches ++;

                }
                matches += flagIndexes[flagNo] == mineIndexes[mineNo];
            }
        }
        return matches == mineCount;
    }
}

void triggerTile(UINT8 type){
    UINT16 indexTLx, indexTLy, tileindexTL;

    indexTLx = (playerlocation[0] - 8) / 8;  // Fin tile x koordinat
    indexTLy = (playerlocation[1] - 16) / 8; // Fin tile y koordinat
    tileindexTL = 20 * indexTLy + indexTLx;  // Finn hvilken tile den peker på

    switch (type){
    // Hvis den skal flagges
    case 1:
        // Sjekk om den kan flagges
        if(GameBackground[tileindexTL] == coveredTile[0]){
            set_bkg_tiles(indexTLx,indexTLy,1,1,flagTile);
            GameBackgroundPLN0[tileindexTL] = flagTile[0]; // Tile
            GameBackgroundPLN1[tileindexTL] = 0x04; // Pallete
            //flagIndexes[tilesFlagged] = tileindexTL; // Lagre indexen til flagget tile
            tilesFlagged ++;
            if(checkWin()){ // Test om du har vunnet
                waitpad(J_START);
            }
        }
        // Sjekk om den er flagget fra før
        else if (GameBackground[tileindexTL] == flagTile[0]){
            //flagIndexes[tilesFlagged] = 361; // Lagre indexen til flagget tile
            tilesFlagged --;
            set_bkg_tiles(indexTLx,indexTLy,1,1,coveredTile);
            GameBackgroundPLN0[tileindexTL] = coveredTile[0];
            GameBackgroundPLN1[tileindexTL] = 0x00;
        }
        break;
    case 0:
        uncover(indexTLx-1, indexTLy-2);
        //uncover(17,14);
        //uncover(0,0);
        break;
    }
    // Minne video bank nr 2
    VBK_REG = 1;
    set_bkg_tiles(0,0,GameBackgroundWidth,GameBackgroundHeight, GameBackgroundPLN1); // Palette
    // Minne video bank nr 1
    VBK_REG = 0;
    set_bkg_tiles(0,0,GameBackgroundWidth,GameBackgroundHeight, GameBackgroundPLN0); // Tiles / Sprites
}

UBYTE canplayermove(UINT8 newplayerx, UINT8 newplayery){ // Sjekk om spiller kan begeve seg veien spilleren vil
    UINT16 indexTLx, indexTLy, tileindexTL;

    indexTLx = (newplayerx - 8) / 8; // Fin tile x koordinat
    indexTLy = (newplayery - 16) / 8; // Fin tile y koordinat
    tileindexTL = 20 * indexTLy + indexTLx;

    for(int i = 0; i < 9; i++){
        if(GameBackground[tileindexTL] == edgeTile[i][0]){ // Er tilen en man ikke kan gå på?
            return 0;
        }
    }

    return 1; 
}

void animatesprite(UINT8 spriteindex, INT8 movex, INT8 movey){
    while(movex!=0){
        scroll_sprite(spriteindex, movex < 0 ? -1 : 1, 0);
        movex += (movex < 0 ? 1 : -1);
        wait_vlb_done_two();
    }
    while(movey!=0){
        scroll_sprite(spriteindex, 0, movey < 0 ? -1 : 1);
        movey += movey < 0 ? 1 : -1;
        wait_vlb_done_two();
    }
}

// Definer color palettes som er brukt
const UWORD backgroundPalette[] = {
    BackgroundTilesCGBPal0c0, BackgroundTilesCGBPal0c1, BackgroundTilesCGBPal0c2, BackgroundTilesCGBPal0c3,
    BackgroundTilesCGBPal1c0, BackgroundTilesCGBPal1c1, BackgroundTilesCGBPal1c2, BackgroundTilesCGBPal1c3,
    BackgroundTilesCGBPal2c0, BackgroundTilesCGBPal2c1, BackgroundTilesCGBPal2c2, BackgroundTilesCGBPal2c3,
    BackgroundTilesCGBPal3c0, BackgroundTilesCGBPal3c1, BackgroundTilesCGBPal3c2, BackgroundTilesCGBPal3c3,
    BackgroundTilesCGBPal4c0, BackgroundTilesCGBPal4c1, BackgroundTilesCGBPal4c2, BackgroundTilesCGBPal4c3,
    BackgroundTilesCGBPal5c0, BackgroundTilesCGBPal5c1, BackgroundTilesCGBPal5c2, BackgroundTilesCGBPal5c3
};

const UWORD spritepalette[] = {
    PlayerCGBPal0c0, PlayerCGBPal0c1, PlayerCGBPal0c2, PlayerCGBPal0c3,
    PlayerCGBPal1c0, PlayerCGBPal1c1, PlayerCGBPal1c2, PlayerCGBPal1c3,
    PlayerCGBPal2c0, PlayerCGBPal2c1, PlayerCGBPal2c2, PlayerCGBPal2c3
};

void main(){
    set_bkg_palette(0, 6, &backgroundPalette[0]); // Start, hvor mange, hvilken farge
    while(1){
    if(dead){
        HIDE_SPRITES;
        if(!beginning){
            waitpad(J_A); // Vent med å resette
        } else {
            beginning = 0;
        }
        for (UINT8 y = 0; y <= GameBackgroundHeight; y++) {
            for (UINT8 x = 0; x <= GameBackgroundWidth; x++) {
                UINT16 index = 20 * y + x;
                GameBackgroundPLN1[index] = 0x05; // Pal
            }
        }
        VBK_REG = 1;
        set_bkg_tiles(0,0,GameBackgroundWidth,GameBackgroundHeight, GameBackgroundPLN1); // Palette
        VBK_REG = 0;

        set_bkg_data(0, 94, splash_data);
        set_bkg_tiles(0, 0, 20, 18, splash_map);

        SHOW_BKG;
        DISPLAY_ON;

        // Random number gen
        waitpad(J_START);
        dead = 0;
        minesExploding = 0;
    } else {
        resetmap();

        uint16_t seed = LY_REG;
        seed |= (uint16_t)DIV_REG << 8;
        initrand(seed);

        generateMines(17, 14, mineCount);
        
        // Sett farge palette
        // Bakgrunner
        set_bkg_palette(0, 6, &backgroundPalette[0]); // Start, hvor mange, hvilken farge

        set_bkg_data(0, 29, BackgroundTiles); // Last inn sprites til bakgrunnen

        // Minne video bank nr 2
        VBK_REG = 1;
        set_bkg_tiles(0,0,GameBackgroundWidth,GameBackgroundHeight, GameBackgroundPLN1); // Palette

        // Minne video bank nr 1
        VBK_REG = 0;
        set_bkg_tiles(0,0,GameBackgroundWidth,GameBackgroundHeight, GameBackgroundPLN0); // Tiles / Sprites

        // Last inn player
        SPRITES_8x8;
        set_sprite_palette(0,3,&spritepalette[0]);
        set_sprite_data(0, 8, Player);   /* defines the sprite data */
        set_sprite_tile(0, 1);           /* defines the tiles numbers */
        set_sprite_prop(0,0);

        playerlocation[0] = 8*10;
        playerlocation[1] = 8*11;
        move_sprite(0,playerlocation[0],playerlocation[1]);


        // Enable layers
        SHOW_SPRITES;
        SHOW_BKG;
        DISPLAY_ON;

        while(1){
            if(joypad() & J_A){
                // Flag tile
                triggerTile(1);
            }    
            if(joypad() & J_B){
                // Flag tile
                triggerTile(0);
            }        
            if(joypad() & J_LEFT){
                if(canplayermove(playerlocation[0]-8,playerlocation[1])){
                    playerlocation[0] -= 8;
                    animatesprite(0,-8,0);
                }
            }
            else if(joypad() & J_RIGHT){
                if(canplayermove(playerlocation[0]+8,playerlocation[1])){            
                    playerlocation[0] += 8;
                    animatesprite(0,8,0);
                }
            }
            else if(joypad() & J_UP){
                if(canplayermove(playerlocation[0],playerlocation[1]-8)){
                    playerlocation[1] -= 8;
                    animatesprite(0,0,-8);
                }
            }
            else if(joypad() & J_DOWN){
                if(canplayermove(playerlocation[0],playerlocation[1]+8)){
                    playerlocation[1] += 8;
                    animatesprite(0,0,8);
                }
            }
            if(lastAnimation >= 30){
                set_sprite_tile(0, 1+playerSprite);
                playerSprite = !playerSprite;
                lastAnimation = 0;
            }
            if(minesExploding){
                explodeMines();
            }
            performantdelay(6);
        if(dead){ break;}
        }
    }
    }
}