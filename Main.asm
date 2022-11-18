include Irvine32.inc

; 14/11/2022 By @bobochdbrew
; This is my first ever code in assembly
; I know there's a looooot of thing that can be improved 
; it is probably the worst asm code you had ever seen
; tho the goal was just to discover asm and get something done
; feel free to use the code as you want

.data

player BYTE "   U   ",0
	   BYTE "  /|\  ",0
	   BYTE " {ASM} ",0

playerblank BYTE "       ",0
playerHeight BYTE 3
playerWidth BYTE 7

enemy BYTE " {@@} ",0
	  BYTE " /''\ ",0
enemyblank BYTE "      ",0
enemyHeight BYTE 2
enemyWidth BYTE 6

enemyArray BYTE 55 DUP(0,0,0)
enemyArrayLength BYTE 55

defaultEnemyArrayW1 BYTE 6,9,1
		          BYTE 13,9,1
		          BYTE 20,9,1
		          BYTE 27,9,1
		          BYTE 34,9,1
		          BYTE 41,9,1
		          BYTE 48,9,1
		          BYTE 55,9,1
		          BYTE 62,9,1
		          BYTE 69,9,1
		          BYTE 76,9,1
				  BYTE 6,12,0
				  BYTE 13,12,0
				  BYTE 20,12,0
				  BYTE 27,12,0
				  BYTE 34,12,0
				  BYTE 41,12,0
				  BYTE 48,12,0
				  BYTE 55,12,0
				  BYTE 62,12,0
				  BYTE 69,12,0
				  BYTE 76,12,0
				   BYTE 6,17,0
				  BYTE 13,17,0
				  BYTE 20,17,0
				  BYTE 27,17,0
				  BYTE 34,17,0
				  BYTE 41,17,0
				  BYTE 48,17,0
				  BYTE 55,17,0
				  BYTE 62,17,0
				  BYTE 69,17,0
				  BYTE 76,17,0
				   BYTE 6,22,0
				  BYTE 13,22,0
				  BYTE 20,22,0
				  BYTE 27,22,0
				  BYTE 34,22,0
				  BYTE 41,22,0
				  BYTE 48,22,0
				  BYTE 55,22,0
				  BYTE 62,22,0
				  BYTE 69,22,0
				  BYTE 76,22,0
				   BYTE 6,27,0
				  BYTE 13,27,0
				  BYTE 20,27,0
				  BYTE 27,27,0
				  BYTE 34,27,0
				  BYTE 41,27,0
				  BYTE 48,27,0
				  BYTE 55,27,0
				  BYTE 62,27,0
				  BYTE 69,27,0
				  BYTE 76,27,0

defaultEnemyArrayW2 BYTE 6,9,1
		          BYTE 13,9,1
		          BYTE 20,9,1
		          BYTE 27,9,1
		          BYTE 34,9,1
		          BYTE 41,9,1
		          BYTE 48,9,1
		          BYTE 55,9,1
		          BYTE 62,9,1
		          BYTE 69,9,1
		          BYTE 76,9,1
				  BYTE 6,12,1
				  BYTE 13,12,1
				  BYTE 20,12,1
				  BYTE 27,12,1
				  BYTE 34,12,1
				  BYTE 41,12,1
				  BYTE 48,12,1
				  BYTE 55,12,1
				  BYTE 62,12,1
				  BYTE 69,12,1
				  BYTE 76,12,1
				   BYTE 6,17,0
				  BYTE 13,17,0
				  BYTE 20,17,0
				  BYTE 27,17,0
				  BYTE 34,17,0
				  BYTE 41,17,0
				  BYTE 48,17,0
				  BYTE 55,17,0
				  BYTE 62,17,0
				  BYTE 69,17,0
				  BYTE 76,17,0
				   BYTE 6,22,0
				  BYTE 13,22,0
				  BYTE 20,22,0
				  BYTE 27,22,0
				  BYTE 34,22,0
				  BYTE 41,22,0
				  BYTE 48,22,0
				  BYTE 55,22,0
				  BYTE 62,22,0
				  BYTE 69,22,0
				  BYTE 76,22,0
				   BYTE 6,27,0
				  BYTE 13,27,0
				  BYTE 20,27,0
				  BYTE 27,27,0
				  BYTE 34,27,0
				  BYTE 41,27,0
				  BYTE 48,27,0
				  BYTE 55,27,0
				  BYTE 62,27,0
				  BYTE 69,27,0
				  BYTE 76,27,0

defaultEnemyArrayW3 BYTE 6,9,1
		          BYTE 13,9,1
		          BYTE 20,9,1
		          BYTE 27,9,1
		          BYTE 34,9,1
		          BYTE 41,9,1
		          BYTE 48,9,1
		          BYTE 55,9,1
		          BYTE 62,9,1
		          BYTE 69,9,1
		          BYTE 76,9,1
				  BYTE 6,12,1
				  BYTE 13,12,1
				  BYTE 20,12,1
				  BYTE 27,12,1
				  BYTE 34,12,1
				  BYTE 41,12,1
				  BYTE 48,12,1
				  BYTE 55,12,1
				  BYTE 62,12,1
				  BYTE 69,12,1
				  BYTE 76,12,1
				   BYTE 6,17,1
				  BYTE 13,17,1
				  BYTE 20,17,1
				  BYTE 27,17,1
				  BYTE 34,17,1
				  BYTE 41,17,1
				  BYTE 48,17,1
				  BYTE 55,17,1
				  BYTE 62,17,1
				  BYTE 69,17,1
				  BYTE 76,17,1
				   BYTE 6,22,0
				  BYTE 13,22,0
				  BYTE 20,22,0
				  BYTE 27,22,0
				  BYTE 34,22,0
				  BYTE 41,22,0
				  BYTE 48,22,0
				  BYTE 55,22,0
				  BYTE 62,22,0
				  BYTE 69,22,0
				  BYTE 76,22,0
				   BYTE 6,27,0
				  BYTE 13,27,0
				  BYTE 20,27,0
				  BYTE 27,27,0
				  BYTE 34,27,0
				  BYTE 41,27,0
				  BYTE 48,27,0
				  BYTE 55,27,0
				  BYTE 62,27,0
				  BYTE 69,27,0
				  BYTE 76,27,0

defaultEnemyArrayW4 BYTE 6,9,1
		          BYTE 13,9,1
		          BYTE 20,9,1
		          BYTE 27,9,1
		          BYTE 34,9,1
		          BYTE 41,9,1
		          BYTE 48,9,1
		          BYTE 55,9,1
		          BYTE 62,9,1
		          BYTE 69,9,1
		          BYTE 76,9,1
				  BYTE 6,12,1
				  BYTE 13,12,1
				  BYTE 20,12,1
				  BYTE 27,12,1
				  BYTE 34,12,1
				  BYTE 41,12,1
				  BYTE 48,12,1
				  BYTE 55,12,1
				  BYTE 62,12,1
				  BYTE 69,12,1
				  BYTE 76,12,1
				   BYTE 6,17,1
				  BYTE 13,17,1
				  BYTE 20,17,1
				  BYTE 27,17,1
				  BYTE 34,17,1
				  BYTE 41,17,1
				  BYTE 48,17,1
				  BYTE 55,17,1
				  BYTE 62,17,1
				  BYTE 69,17,1
				  BYTE 76,17,1
				   BYTE 6,22,1
				  BYTE 13,22,1
				  BYTE 20,22,1
				  BYTE 27,22,1
				  BYTE 34,22,1
				  BYTE 41,22,1
				  BYTE 48,22,1
				  BYTE 55,22,1
				  BYTE 62,22,1
				  BYTE 69,22,1
				  BYTE 76,22,1
				   BYTE 6,27,0
				  BYTE 13,27,0
				  BYTE 20,27,0
				  BYTE 27,27,0
				  BYTE 34,27,0
				  BYTE 41,27,0
				  BYTE 48,27,0
				  BYTE 55,27,0
				  BYTE 62,27,0
				  BYTE 69,27,0
				  BYTE 76,27,0

defaultEnemyArrayW5 BYTE 6,9,1
		          BYTE 13,9,1
		          BYTE 20,9,1
		          BYTE 27,9,1
		          BYTE 34,9,1
		          BYTE 41,9,1
		          BYTE 48,9,1
		          BYTE 55,9,1
		          BYTE 62,9,1
		          BYTE 69,9,1
		          BYTE 76,9,1
				  BYTE 6,12,1
				  BYTE 13,12,1
				  BYTE 20,12,1
				  BYTE 27,12,1
				  BYTE 34,12,1
				  BYTE 41,12,1
				  BYTE 48,12,1
				  BYTE 55,12,1
				  BYTE 62,12,1
				  BYTE 69,12,1
				  BYTE 76,12,1
				   BYTE 6,17,1
				  BYTE 13,17,1
				  BYTE 20,17,1
				  BYTE 27,17,1
				  BYTE 34,17,1
				  BYTE 41,17,1
				  BYTE 48,17,1
				  BYTE 55,17,1
				  BYTE 62,17,1
				  BYTE 69,17,1
				  BYTE 76,17,1
				   BYTE 6,22,1
				  BYTE 13,22,1
				  BYTE 20,22,1
				  BYTE 27,22,1
				  BYTE 34,22,1
				  BYTE 41,22,1
				  BYTE 48,22,1
				  BYTE 55,22,1
				  BYTE 62,22,1
				  BYTE 69,22,1
				  BYTE 76,22,1
				   BYTE 6,27,1
				  BYTE 13,27,1
				  BYTE 20,27,1
				  BYTE 27,27,1
				  BYTE 34,27,1
				  BYTE 41,27,1
				  BYTE 48,27,1
				  BYTE 55,27,1
				  BYTE 62,27,1
				  BYTE 69,27,1
				  BYTE 76,27,1
				  
enemyArrayCounter BYTE 0

waveNumber BYTE 0

blankChar BYTE " ",0

lifesText BYTE "| [ LIFES ] :   |",0
scoreText BYTE "| [ SCORE ] :            |",0
bestScoreTExt BYTE "| [ Best Score ] :            |",0

shootArray BYTE 20 DUP(0,0,0)
shootArrayLength BYTE 19
shootArrayCounter BYTE 0
shootIcon BYTE "o",0

enemyShootArray BYTE 20 DUP(0,0,0)
enemyShootArrayLength BYTE 20
enemyShootArrayCounter BYTE 0
enemyShootIcon BYTE "v",0
enemyShooter BYTE 0

windowWidth BYTE 90
windowHeight BYTE 40
windowPadding BYTE 5

windowBoxChar BYTE "X",0
windowBoxChar2 BYTE "|",0

Paused BYTE 1

xPos BYTE 20
yPos BYTE 35

lifes BYTE 3

scoreFront BYTE 0
scoreBack BYTE 0

bestscoreFront BYTE 0
bestscoreBack BYTE 0

frameCycle BYTE 0
frameCounter BYTE 0
menuWidth BYTE 78
menuHeight BYTE 12

menu BYTE "                                                                                ",0
     BYTE "               _____ __  __   _____ _   ___      __     _____  ______ _____     ",0
     BYTE "        /\    / ____|  \/  | |_   _| \ | \ \    / /\   |  __ \|  ____|  __ \    ",0
     BYTE "       /  \  | (___ | \  / |   | | |  \| |\ \  / /  \  | |  | | |__  | |__) |   ",0
     BYTE "      / /\ \  \___ \| |\/| |   | | | . ` | \ \/ / /\ \ | |  | |  __| |  _  /    ",0
     BYTE "     / ____ \ ____) | |  | |  _| |_| |\  |  \  / ____ \| |__| | |____| | \ \    ",0
     BYTE "    /_/    \_\_____/|_|  |_| |_____|_| \_|   \/_/    \_\_____/|______|_|  \_\   ",0
     BYTE "                                                                                ",0
     BYTE "   -w MASM & Irvine32                                         by @bobochdbrew   ",0                                                
     BYTE "                                                                                ",0
     BYTE "                                                                                ",0
     BYTE "                               Press SPACE to play                              ",0


gameOver BYTE "     _____                         ____                   ",0
         BYTE "    / ____|                       / __ \                  ",0
         BYTE "   | |  __  __ _ _ __ ___   ___  | |  | |_   _____ _ __   ",0
         BYTE "   | | |_ |/ _` | '_ ` _ \ / _ \ | |  | \ \ / / _ \ '__|  ",0
         BYTE "   | |__| | (_| | | | | | |  __/ | |__| |\ V /  __/ |     ",0
         BYTE "    \_____|\__,_|_| |_| |_|\___|  \____/  \_/ \___|_|     ",0
gameOverHeight BYTE 6

.code

;EAX, EDX, ECX, EBX, EBP, EDI, ESI
;AX, DX, CX, BX, BP, DI, SI 
; AH, DH, CH, BH, al, DL, cl, BL

main PROC
	call drawOutBox
	call drawShip
	call drawShoots
	call drawLifes
	call drawScore
	call drawMenu
	jmp MainLoop
	MainLoop:
		call handleMovements
		inc frameCycle
		cmp frameCycle,200
		je resetCycle
		jmp continueCycle
	PausedMainLoop:
		call ReadChar
		cmp al, " "
		je ExitPausedLoop
		jmp PausedMainLoop
	ExitPausedLoop:
		mov Paused,0
		call resetShoots
		mov waveNumber,0
		call resetEnemies
		mov lifes,3
		call clearInner
		call drawEnemies
		call drawOutBox
		call drawLifes
		mov scoreFront,0
		mov scoreBack,0
		call drawScore
		jmp MainLoop
	continueCycle:
		mov eax,0
		mov al,frameCounter
		inc al
		mov ah,0
		mov ecx,3
		mov edx,0
		div ecx
		cmp dl,0
		je updateShootsCaller
		cmp frameCounter,30
		je shoot
	finishCycle:
		jmp MainLoop
	updateShootsCaller:
		cmp Paused,1
		je PausedMainLoop
		call updateShoots
		call updateEnemyShoots
		call drawLifes
		call drawScore
		inc frameCounter
		jmp finishCycle
	shoot:
		call checkEnemies
		call drawEnemies
		call addShoot
		mov dh,0
		shootL:
			cmp waveNumber,dh
			je exitShootL
			call addEnemyShoot
			inc dh
			jmp shootL
		exitShootL:
			jmp finishCycle
	resetCycle:
		mov al,frameCycle
		sub frameCycle,al
		inc frameCounter
		jmp continueCycle
main ENDP

addShoot PROC
	shootL:
		mov al,frameCounter
		sub frameCounter,al
		mov ah, 0
		mov cl,shootArrayCounter
		mov edi, OFFSET shootArray
		loopShoots:
			cmp ah,cl
			je addShoott
			add edi,3
			inc ah
			jmp loopShoots
		addShoott:
			mov ah, shootArrayLength
			cmp cl,ah
			je resetLoopShoot
			mov ch,xPos
			add ch,3
			mov [edi],ch
			inc edi
			mov ch,yPos
			sub ch,4
			mov [edi],ch
			inc edi
			mov ch,1
			mov [edi],ch
			inc shootArrayCounter
			call drawShoots
			jmp finishCycle
		resetLoopShoot:
			mov al, shootArrayCounter
			sub shootArrayCounter,al
			jmp shootL
	finishCycle:
		ret
addShoot ENDP

;al cl adi asi ah bh bl ch
addEnemyShoot PROC
	shootL:
		mov al,frameCounter
		sub frameCounter,al
		mov ah, 0
		mov cl,enemyShootArrayCounter
		mov edi, OFFSET enemyShootArray
		mov esi, OFFSET enemyArray
		loopShoots:
			cmp ah,cl
			je addShoott
			add edi,3
			inc ah
			jmp loopShoots
		addShoott:
			mov ah, enemyShootArrayLength
			cmp cl,ah
			je resetLoopShoot
			mov bh,0
			innerLoop:
				cmp bh,enemyShooter
				je exitLoopTunnel
				add esi,3
				inc bh
				jmp innerLoop
			exitLoopTunnel:
				mov bl, enemyShooter
				add bl,1
				cmp bl,enemyArrayLength
				jg resetShooter
				inc enemyShooter
				add esi,3
				add esi,2
				mov bh,[esi]
				sub esi,2
				cmp bh,0
				je exitLoopTunnel
				jmp exitLoop
			resetShooter:
				mov ch,enemyArrayLength
				mov bl,enemyShooter
				sub bl,ch
				mov enemyShooter,bl
				mov esi, OFFSET enemyArray
				add esi,2
				mov bh,[esi]
				sub esi,2
				cmp bh,0
				je exitLoopTunnel
			exitLoop:
				mov ch,[esi]
				add ch,3
				inc esi
				mov [edi],ch
				inc edi
				mov ch,[esi]
				mov [edi],ch
				inc edi
				mov ch,1
				mov [edi],ch
				inc enemyShootArrayCounter
				jmp finishCycle
		resetLoopShoot:
			mov al, enemyShootArrayCounter
			sub enemyShootArrayCounter,al
			jmp shootL
	finishCycle:
		ret
addEnemyShoot ENDP

resetShoots PROC
	mov cl, 0
	mov al, shootArrayLength
	mov edi, OFFSET shootArray
	L1:
		cmp cl,al
		je ENDL1
		mov dh,0
		mov [edi],dh
		inc edi
		mov [edi],dh
		inc edi
		mov [edi],dh
		inc edi
		inc cl
		jmp L1
	ENDL1:
		mov cl, 0
		mov al, enemyShootArrayLength
		mov edi, OFFSET enemyShootArray
		L2:
			cmp cl,al
			je ENDL2
			mov dh,0
			mov [edi],dh
			inc edi
			mov [edi],dh
			inc edi
			mov [edi],dh
			inc edi
			inc cl
			jmp L2
		ENDL2:
			ret
resetShoots ENDP

handleMovements PROC
	call ReadKey
	cmp al, "d" ;Press Right
	je Right
	cmp al,"q" ;Press Left
	je Left
	ret
	Right:
		call moveRight
		ret
	Left:
		call moveLeft
		ret
handleMovements ENDP

moveRight PROC
	mov al,windowWidth
	sub al,windowPadding
	sub al,playerWidth
	cmp xPos,al
	je ENDLOOP
	call clearShip
	inc xPos
	call drawShip
	ENDLOOP:
		ret
moveRight ENDP

moveLeft PROC
	mov al,windowPadding
	cmp xPos,al
	je ENDLOOP
	call clearShip
	dec xPos
	call drawShip
	ENDLOOP:
		ret
moveLeft ENDP

clearShip PROC
	mov cl, 0
	mov al, yPos
	sub al, 3
	L1:
		cmp cl,3
		je ENDL1
		mov dl,xPos
		mov dh,al
		call Gotoxy
		mov edx,OFFSET playerblank
		call WriteString
		inc cl
		inc al
		jmp L1
	ENDL1:
		mov dl,0
		mov dh,0
		call Gotoxy
		ret
clearShip ENDP

drawShoots PROC
	mov eax,yellow+(black*16)
	call SetTextColor
	mov cl, 0
	mov al, shootArrayLength
	mov edi, OFFSET shootArray
	L1:
		cmp cl,al
		je ENDL1
		mov dl,[edi]
		inc edi
		mov dh,[edi]
		inc edi
		mov ch,[edi]
		cmp ch,0
		je CONTINUEL1
		call Gotoxy
		mov edx,OFFSET shootIcon
		call WriteString
		inc cl
		inc edi
		jmp L1
	ENDL1:
		mov dl,0
		mov dh,0
		call Gotoxy
		mov eax,white+(black*16)
		call SetTextColor
		ret
	CONTINUEL1:
		inc cl
		inc edi
		jmp L1
drawShoots ENDP

drawEnemyShoots PROC
	mov eax,lightRed+(black*16)
	call SetTextColor
	mov cl, 0
	mov al, enemyShootArrayLength
	mov edi, OFFSET enemyShootArray
	L1:
		cmp cl,al
		je ENDL1
		mov dl,[edi]
		inc edi
		mov dh,[edi]
		inc edi
		mov ch,[edi]
		cmp ch,0
		je CONTINUEL1
		call Gotoxy
		mov edx,OFFSET enemyShootIcon
		call WriteString
		inc cl
		inc edi
		jmp L1
	ENDL1:
		mov dl,0
		mov dh,0
		call Gotoxy
		mov eax,white+(black*16)
		call SetTextColor
		ret
	CONTINUEL1:
		inc cl
		inc edi
		jmp L1
drawEnemyShoots ENDP

drawEnemies PROC
	mov cl, 0
	mov al, enemyArrayLength
	mov edi, OFFSET enemyArray
	L1:
		cmp cl,al
		je ENDL1
		mov dl,[edi]
		inc edi
		mov dh,[edi]
		inc edi
		mov ch,[edi]
		cmp ch,0
		je CONTINUEL1
		call drawEnemy
		inc cl
		inc edi
		jmp L1
	ENDL1:
		ret
	CONTINUEL1:
		inc cl
		inc edi
		jmp L1
drawEnemies ENDP	

resetEnemies PROC
	mov cl, 0
	mov al, enemyArrayLength
	mov edi, OFFSET enemyArray
	inc waveNumber
	cmp waveNumber,1
	je SELECTORL1
	cmp waveNumber,2
	je SELECTORL2
	cmp waveNumber,3
	je SELECTORL3
	cmp waveNumber,4
	je SELECTORL4
	mov esi, OFFSET defaultEnemyArrayW5
	jmp L1
	SELECTORL1:
		mov esi, OFFSET defaultEnemyArrayW1
		jmp L1
	SELECTORL2:
		mov esi, OFFSET defaultEnemyArrayW2
		jmp L1
	SELECTORL3:
		mov esi, OFFSET defaultEnemyArrayW3
		jmp L1
	SELECTORL4:
		mov esi, OFFSET defaultEnemyArrayW4
		jmp L1
	L1:
		cmp cl,al
		je ENDL1
		mov dl,[esi]
		mov [edi],dl
		inc edi
		inc esi
		mov dl,[esi]
		mov [edi],dl
		inc edi
		inc esi
		mov dl,[esi]
		mov [edi],dl
		inc cl
		inc edi
		inc esi
		jmp L1
	ENDL1:
		call drawOutBox
		call drawLifes
		call drawScore
		call clearInner
		ret
resetEnemies ENDP

checkEnemies PROC
	mov cl, 0
	mov ch,0
	mov al, enemyArrayLength
	mov edi, OFFSET enemyArray
	L1:
		cmp cl,al
		je ENDL1
		add edi,2
		mov dl,[edi]
		cmp dl,0
		je INCONTINUE
		inc cl
		inc edi
		jmp L1
	INCONTINUE:
		inc ch
		inc cl
		inc edi
		jmp L1
	ENDL1:
		cmp al,ch
		je RESET
		ret
	RESET:
		call resetEnemies
		call drawEnemies
		ret
checkEnemies ENDP

drawEnemy PROC
	mov ch, 0
	mov ah, dh
	sub ah, enemyHeight
	mov esi,OFFSET enemy
	mov bl,enemyHeight
	mov bh,dl
	L1:
		cmp ch,bl
		je ENDL1
		mov dh,ah
		mov dl,bh
		call Gotoxy
		mov edx,esi
		call WriteString
		add esi,7
		inc ch        ; decrement al
		inc ah
		jmp L1
	ENDL1:
		mov dl,0
		mov dh,0
		call Gotoxy
		ret
drawEnemy ENDP

;dl edi dh ah ch al cl
checkKills PROC
	mov bh, 0
	mov esi, OFFSET enemyArray
	L1:
		cmp enemyArrayLength,bh
		je ENDL1
		add esi,2
		mov bl,[esi]
		cmp bl,0
		je CONTINUEL1
		dec esi
		mov bl,[esi]
		inc esi
		cmp dh,bl
		je COLISIONSTEP1
		inc bh
		inc esi
		jmp L1
	ENDL1:
		ret
	COLISIONSTEP1:
		sub esi,2
		mov bl,[esi]
		add esi,2
		mov al,dl
		sub al,bl
		cmp al,1
		je KILL
		cmp al,2
		je KILL
		cmp al,3
		je KILL
		cmp al,4
		je KILL
		jmp CONTINUEL1
	KILL:
		add edi,2
		mov al,0
		mov [edi],al
		sub edi,2
		mov bl,0
		mov [esi],bl
		mov al,scoreFront
		mov ah,scoreBack
		inc ax
		mov scoreFront,al
		mov scoreBack,ah
		ret
	CONTINUEL1:
		inc bh
		inc esi
		jmp L1
checkKills ENDP

updateShoots PROC
	mov cl, 0
	mov edi, OFFSET shootArray
	L1:
		cmp shootArrayLength,cl
		je ENDL1
		inc edi
		inc edi
		mov ch,[edi]
		cmp ch,0
		je CONTINUEL1
		dec edi
		mov dh,[edi]
		mov ah,windowPadding
		cmp dh,ah
		je CONTINUEL1BIS
		dec edi
		mov dl,[edi]
		call checkKills
		call Gotoxy
		mov edx,OFFSET blankChar
		call WriteString
		inc edi
		mov dh,[edi]
		dec dh
		mov [edi],dh
		inc cl
		add edi,2
		jmp L1
	ENDL1:
		call drawShoots
		mov dl,0
		mov dh,0
		call Gotoxy
		ret
	CONTINUEL1:
		add edi,1
		inc cl
		jmp L1
	CONTINUEL1BIS:
		dec edi
		mov dl,[edi]
		inc edi
		mov dh,[edi]
		call Gotoxy
		mov edx,OFFSET blankChar
		call WriteString	
		inc edi
		mov ah,0
		mov [edi],ah
		inc edi
		inc cl
		jmp L1
updateShoots ENDP

checkEnemyKill PROC
	mov bl,windowHeight
	sub bl,windowPadding
	sub bl,3
	cmp dh,bl
	je CONTINUE
	NoCOLISION:
		ret
	CONTINUE:
	mov al,dl
	sub al,xPos
	cmp al,1
	je KILL
	cmp al,2
	je KILL
	cmp al,3
	je KILL
	cmp al,4
	je KILL
	cmp al,5
	je KILL
	jmp NoCOLISION
	KILL:
		cmp lifes,0
		je DEFDEATH
		dec lifes
		ret
	DEFDEATH:
		mov al,scoreFront
		mov ah,scoreBack
		mov bl,bestscoreFront
		mov bh,bestscoreBack
		cmp ax,bx
		jg IncreaseScore
		jmp ReturnTo
	IncreaseScore:
		mov bestscoreFront,al
		mov bestscoreBack,ah
	ReturnTo:
		mov Paused,1
		call drawGameOver
		call drawMenu
		ret
checkEnemyKill ENDP

updateEnemyShoots PROC
	mov cl, 0
	mov edi, OFFSET enemyShootArray
	L1:
		cmp enemyShootArrayLength,cl
		je ENDL1
		add edi,2
		mov ch,[edi]
		cmp ch,0
		je CONTINUEL1
		dec edi
		mov dh,[edi]
		mov ah,windowHeight
		sub ah,windowPadding
		dec ah
		cmp dh,ah
		je CONTINUEL1BIS
		dec edi
		mov dl,[edi]
		call checkEnemyKill
		call Gotoxy
		mov edx,OFFSET blankChar
		call WriteString
		inc edi
		mov dh,[edi]
		inc dh
		mov [edi],dh
		inc cl
		add edi,2
		jmp L1
	ENDL1:
		call drawEnemyShoots
		mov dl,0
		mov dh,0
		call Gotoxy
		ret
	CONTINUEL1:
		add edi,1
		inc cl
		jmp L1
	CONTINUEL1BIS:
		dec edi
		mov dl,[edi]
		inc edi
		mov dh,[edi]
		call Gotoxy
		mov edx,OFFSET blankChar
		call WriteString	
		inc edi
		mov ah,0
		mov [edi],ah
		inc edi
		inc cl
		jmp L1
updateEnemyShoots ENDP

drawOutBox PROC
	mov eax,gray+(black*16)
	call SetTextColor
	mov cl, 0 
	mov bh, 0
	mov ch,0
	;top side
	L1:
		mov al,windowPadding
		cmp cl,al
		je SEMIENDL1
		mov dl,0
		mov dh,cl
		add dh,ch
		call Gotoxy
		mov bl,0
		L2:
			mov al, windowWidth
			cmp bl,al
			je L2Exit
			mov edx,OFFSET [windowBoxChar]
			call WriteString
			inc bl
			jmp L2
		L2Exit:
			inc cl
			jmp L1
	SEMIENDL1:
		cmp bh,1
		je ENDL1
		inc bh
		add ch,windowHeight
		sub ch,windowPadding
		mov cl,0
		jmp L1
	;side sides
	ENDL1:
		mov cl, windowPadding
		mov bh, 0
		mov ch, 0
	L3:
		mov al,windowHeight
		sub al,windowPadding
		cmp cl,al
		je SEMIENDL3
		mov dl,bh
		mov dh,cl
		call Gotoxy
		mov bl,0
		L4:
			mov al,windowPadding
			cmp bl,al
			je L4Exit
			mov edx,OFFSET [windowBoxChar2]
			call WriteString
			inc bl
			jmp L4
		L4Exit:
			inc cl
			jmp L3
	SEMIENDL3:
		cmp ch,1
		je ENDL3
		inc ch
		add bh, windowWidth
		sub bh, windowPadding
		mov cl, windowPadding
		jmp L3
	ENDL3:
		mov eax,white+(black*16)
		call SetTextColor
		ret
drawOutBox ENDP

drawMenu PROC
	mov eax,cyan+(black*16)
	call SetTextColor
	mov cl, 0
	mov al, windowHeight
	sub al,windowPadding
	sub al,7
	sub al, menuHeight
	mov edi,OFFSET menu
	mov bl,menuHeight
	L1:
		cmp cl,bl
		je ENDL1
		mov dl,windowPadding
		mov dh,al
		call Gotoxy
		mov edx,edi
		call WriteString
		mov dl,0
		mov dh,0
		call Gotoxy
		add edi,81
		inc cl        ; decrement al
		inc al
		jmp L1
	ENDL1:
		mov eax,white+(black*16)
		call SetTextColor
		call addBestScore
		ret
drawMenu ENDP

clearInner PROC
	mov cl, windowPadding 
	mov bh, 0
	L1:
		mov al,windowHeight
		sub al,windowPadding
		sub al,3
		cmp cl,al
		je EXITL1
		mov dl,windowPadding
		mov dh,cl
		call Gotoxy
		mov bl,0
		L2:
			mov al, windowWidth
			sub al,windowPadding
			sub al,windowPadding
			cmp bl,al
			je L2Exit
			mov edx,OFFSET [blankChar]
			call WriteString
			inc bl
			jmp L2
		L2Exit:
			inc cl
			jmp L1
	EXITL1:
		ret
clearInner ENDP

drawGameOver PROC
	mov eax,lightRed+(black*16)
	call SetTextColor
	mov cl, 0
	mov al, windowHeight
	sub al,windowPadding
	sub al,4
	sub al, menuHeight
	sub al,3
	sub al, gameOverHeight
	mov edi,OFFSET gameOver
	mov bl,gameOverHeight
	L1:
		cmp cl,bl
		je ENDL1
		mov dl,15
		mov dh,al
		call Gotoxy
		mov edx,edi
		call WriteString
		mov dl,0
		mov dh,0
		call Gotoxy
		add edi,59
		inc cl     
		inc al
		jmp L1
	ENDL1:
		mov eax,white+(black*16)
		call SetTextColor
		ret
drawGameOver ENDP

drawLifes PROC
	mov dh,3
	mov dl,5
	call Gotoxy
	mov edx,OFFSET [lifesText]
	add edx, 14
	mov ch,lifes
	add ch,'0'
	mov [edx],ch
	sub edx, 14
	call WriteString
	mov dl,0
	mov dh,0
	call Gotoxy
	ret
drawLifes ENDP

drawScore PROC
	mov dh,3
	mov dl,25
	mov bl,0
	call Gotoxy
	mov esi,OFFSET [scoreText]
	add esi, 24
	PREL1:
		cmp bl,8
		je L1E
		mov dh," "
		mov [esi],dh
		dec esi
		inc bl
		jmp PREL1
	L1E:
		mov esi,OFFSET [scoreText]
		add esi, 24
		mov eax,0
		mov al,scoreFront
		mov ah,scoreBack
		mov ecx,10
	L1:
		dec esi
		mov edx,0
		div ecx
		add dl,'0'
		mov [esi],dl
		cmp eax,0
		je ExL1
		jmp L1
	ExL1:
		mov esi,OFFSET [scoreText]
		mov edx,esi
		call WriteString
		mov dl,0
		mov dh,0
		call Gotoxy
		ret
drawScore ENDP


addBestScore PROC
	mov dh,3
	mov dl,50
	call Gotoxy
	mov esi,OFFSET [bestScoreTExt]
	add esi, 29
	mov eax,0
	mov al,bestscoreFront
	mov ah,bestscoreBack
	mov ecx,10
	L1:
		dec esi
		mov edx,0
		div ecx
		add dl,'0'
		mov [esi],dl
		cmp eax,0
		je ExL1
		jmp L1
	ExL1:
		mov esi,OFFSET [bestScoreTExt]
		mov edx,esi
		call WriteString
		mov dl,0
		mov dh,0
		call Gotoxy
		ret
addBestScore ENDP

drawShip PROC
	mov eax,lightGreen+(black*16)
	call SetTextColor
	mov cl, 0
	mov al, yPos
	sub al, playerHeight
	mov edi,OFFSET player
	L1:
		cmp playerHeight,cl
		je ENDL1
		mov dl,xPos
		mov dh,al
		call Gotoxy
		mov edx,edi
		call WriteString
		add edi,8
		inc cl  
		inc al
		jmp L1
	ENDL1:
		mov dl,0
		mov dh,0
		call Gotoxy
		mov eax,white+(black*16)
		call SetTextColor
		ret
drawShip ENDP

END main