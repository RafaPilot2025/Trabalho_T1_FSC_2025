;Problema 8: Escreva um programa que escreve seu nome completo na saída do simulador. Se estiver
;trabalhando com uma dupla, escreva o nome de ambos os alunos. Exemplos de escrita na saída do
;simulador podem ser encontrados na pasta exemplo.

main
	add a0,zr,text1		; a0 = &text1
	add a1,zr,text2		; a1 = &text2
	add a2,zr,text3		; a2 = &text3
	add a3,zr,text4		; a3 = &text4

loop
	ldb v0,a0		; v0 = mem[a0]
	stw v0,zr,0xf006	; print char	
	beq v0,zr,end		; if v0 == 0, goto end
	add a0,a0,1		; &text++	
	beq zr,zr,loop		; goto loop
end
	add v0,zr,10		; pula uma linha
	stw v0,zr,0xf006      

loop1
	ldb v0,a1		; v0 = mem[a0]
	stw v0,zr,0xf006	; print char	
	beq v0,zr,end1		; if v0 == 0, goto end
	add a1,a1,1		; &text++	
	beq zr,zr,loop1		; goto loop
end1
	add v0,zr,10		; pula uma linha
	stw v0,zr,0xf006      

loop2
	ldb v0,a2		; v0 = mem[a0]
	stw v0,zr,0xf006	; print char	
	beq v0,zr,end2		; if v0 == 0, goto end
	add a2,a2,1		; &text++	
	beq zr,zr,loop2		; goto loop
end2
	add v0,zr,10		; pula uma linha
	stw v0,zr,0xf006      

loop3
	ldb v0,a3		; v0 = mem[a0]
	stw v0,zr,0xf006	; print char	
	beq v0,zr,end3		; if v0 == 0, goto end
	add a3,a3,1		; &text++	
	beq zr,zr,loop3		; goto loop
end3
	add v0,zr,10		; pula uma linha
	stw v0,zr,0xf006
	hlt 			; termina a execuçao      

text1	
	"Rafael Magalhaes"

text2
	"Matheus Cunha"

text3
	"Matheus Kretzmann"

text4
	"Nicolas Arcari"

