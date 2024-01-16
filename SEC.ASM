MAIN	segment
	assume	cs:MAIN
	org	100h
START:

        include sec.lib

        mov     ah,0
        int     20h

	mov	ah,1
	int	20h

	mov	ax,word ptr cs:FirstDirSector

Again:
	mov	ah,10h
	int	20h

	jmp	short Again
	
	jmp	ExitFromPRG

ExitFromPRG:
	mov	ax,0FF00h
	int	20h




	;Temp

	;Messages

Error	db	'Error!$'




PrgEnd:
MAIN	ends
	end	START