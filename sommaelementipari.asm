;ROSSETTI JACOPO
;3INA
;26/01/2021

 
TITLE somma
.MODEL SMALL

.DATA
    array   DB  1,2,3,4,'$'
    sommapari   DB  0
    
.CODE
.STARTUP
    LEA SI,array
inizio:
    INC SI
    MOV AL,[SI]
    CMP [SI - 1],'$'
    JE fine
    JMP sommare
sommare:
    MOV BL,sommapari
    ADD BL,AL
    MOV sommapari,BL
    INC SI
    JMP inizio
fine:
    MOV AH,4Ch
    INT 21h
END