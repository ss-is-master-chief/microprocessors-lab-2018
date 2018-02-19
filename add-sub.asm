; Addition and Subtraction of two hexadecimal numbers

ASSUME CS:CODE, DS:DATA

DATA SEGMENT
DATA ENDS

CODE SEGMENT

start:

  MOV AX, DATA
  MOV DS, AX
  MOV AX, 0005H
  MOV BX, 0001H
  ADD AX, BX
  MOV CX, AX
  MOV AX, 0005H
  SUB AX, BX
  MOV DX, AX
  HLT

CODE ENDS

end start
