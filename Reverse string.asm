include irvine32.inc
Title Test question 3
.data

myname		db	" I Love Assembler",0
space		db	" ",0
 
.code 
main proc

	mov eax,0
	mov ecx,lengthof myname
	mov esi,lengthof myname
	mov edi,0

backloop:

	mov al,myname[esi]
	call writechar
	mov edx,offset space
	call writestring
	dec esi
	loop backloop;
	call crlf
	call dumpregs
exit
main ENDP
END main

   r e l b m e s s A   e v o L   I

 EAX=00000049  EBX=7EFDE000  ECX=00000000  EDX=00404012
 ESI=00000000  EDI=00000000  EBP=0018FF94  ESP=0018FF8C
 EIP=00401046  EFL=00000202  CF=0  SF=0  ZF=0  OF=0
