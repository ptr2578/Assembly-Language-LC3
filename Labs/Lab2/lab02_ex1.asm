;=================================================
; Name: Ahn, Sungho
; Email: sahn025@ucr.edu
; GitHub username: ptr2578
; 
; Lab: lab 2
; Lab section: B21
; TA: Jason Goulding
; 
;=================================================
.ORIG x3000
	;-------------
	; Instructions
	;-------------
	LD R1, DEC_0		; R1 <-- #0
	LD R2, DEC_12		; r2 <-- #12
	LD R3, DEC_6		; R3, <-- #6

	DO_WHILE_LOOP
	   ADD R1, R1, R2	; R1 <-- R1 + R2
	   Add R3, R3, #-1	; R3 <-- R3 - #1
	   BRp DO_WHILE_LOOP	; if (R3 > 0): goto DO_WHILE_LOOP
	END_DO_WHILE_LOOP

	HALT			; halt program (like exit() in c++)
	;------------
	; Local data
	;------------
	DEC_0	.FILL	#0	; put #0 into memory here
	DEC_12	.FILL	#12	; put #12 into memory here
	DEC_6	.FILL	#6	; put #6 into memory here

.end
	