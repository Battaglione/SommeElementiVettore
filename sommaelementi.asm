;ROSSETTI JACOPO
;3INA
;26/01/2021

 
TITLE somma
.MODEL SMALL

.DATA
    array   DB  2,2,2,2,2,2,2,2,2,2,'$'
    somma   DB  0
    
.CODE
.STARTUP
    LEA SI,array
inizio:
    MOV AL,[SI]
    CMP AL,'$'
    JE fine
    JMP sommare
sommare:
    MOV BL,somma
    ADD BL,AL
    MOV somma,BL
    INC SI
    JMP INIZIO
fine:
    MOV AH,4Ch
    INT 21h
END