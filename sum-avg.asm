; finding sum of 10 - 8-bit numbers and their average

ASSUME CS:CODE, DS:DATA

DATA SEGMENT
  Array DB 01H, 02H, 03H, 04H, 05H, 06H, 07H, 08H, 09H, 0AH
DATA ENDS

CODE SEGMENT

start:
  MOV AX, DATA
  MOV DS, AX
  MOV CX, 000AH
  MOV AX, 2000H
  MOV [AX], CX
  MOV BX, 2001H
  MOV AX, 0000H
  MOV SI, AX

sum :
  MOV DX, Array[SI]
  MOV [BX], DX
  ADD AL, Array[SI]
  ADD SI, 1
  INC BC

  LOOP sum

  MOV [BX], AL
  INC BX
  MOV DL, 0AH
  DIV DL, 0AH
  DIV DL
  MOV [BX], AX
  HLT

CODE ENDS

END start
