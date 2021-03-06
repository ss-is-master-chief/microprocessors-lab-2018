; multi-byte addition

ASSUME DS:DATA, CS:CODE

DATA SEGMENT
  A DD 01230030H
  B DD 00010050H
  RED DD ?
DATA ENDS

CODE SEGMENT
  start:
    MOV AX, DATA
    MOV DS, AX
    MOV AX, DS:WORD PTR A
    ADC AX, DS:WORD PTR B
    MOV BS, DS:WORD PTR [B+2]
    MOV DS:WORD PTR RES, BX
    MOV DS:WORD PTR [RES+2], AX
    MOV DX, OFFSET RES

    MOV AX, 4CH
    INT 21H
CODE ENDS

END start
