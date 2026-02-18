;====================================================
; Program   : Armstrong Number Check (8051, 3-digit)
; Author    : Demo
; Function  : Checks if given number is Armstrong
; Result    : R7 = 01h ? Armstrong
;             R7 = 00h ? Not Armstrong
;====================================================

            ORG 0000H

START:      
            MOV A, #153     ; Test number (change this value)
            MOV R0, A          ; Save original number in R0

;----------------------------------------------------
; Extract digits (hundreds, tens, units)
;----------------------------------------------------

            MOV B, #100
            DIV AB             ; A = hundreds, B = remainder
            MOV R1, A          ; R1 = hundreds
            MOV A, B

            MOV B, #10
            DIV AB             ; A = tens, B = units
            MOV R2, A          ; R2 = tens
            MOV R3, B          ; R3 = units

;----------------------------------------------------
; Cube hundreds digit (R1^3)
;----------------------------------------------------
            MOV A, R1
            MOV B, R1
            MUL AB             ; A = R1^2
            MOV R4, A
            MOV B, R1
            MUL AB             ; A = R1^3
            MOV R4, A

;----------------------------------------------------
; Cube tens digit (R2^3)
;----------------------------------------------------
            MOV A, R2
            MOV B, R2
            MUL AB             ; A = R2^2
            MOV R5, A
            MOV B, R2
            MUL AB             ; A = R2^3
            MOV R5, A

;----------------------------------------------------
; Cube units digit (R3^3)
;----------------------------------------------------
            MOV A, R3
            MOV B, R3
            MUL AB             ; A = R3^2
            MOV R6, A
            MOV B, R3
            MUL AB             ; A = R3^3
            MOV R6, A

;----------------------------------------------------
; Sum of cubes (R4 + R5 + R6 ? R4)
;----------------------------------------------------
            MOV A, R4
            ADD A, R5
            ADD A, R6
            MOV R4, A          ; R4 = sum of cubes


   ;----------------------------------------------------
; Compare with original number (R0)
;----------------------------------------------------
            MOV A, R4          ; A = sum of cubes
            MOV B, R0          ; Move original number to B
            CJNE A, B, NOT_ARM

ARM:        
            MOV R7, #01h       ; Armstrong
            SJMP STOP

NOT_ARM:    
            MOV R7, #00h       ; Not Armstrong

STOP:       
            SJMP STOP          ; Infinite loop
