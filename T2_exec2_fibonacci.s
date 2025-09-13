;ex 2 Programa para gerar os n primeiros números da sequência de Fibonacci
; e armazená-los na memória a partir do endereço 0x30.

main
    ; Inicializa os primeiros dois termos da sequência de Fibonacci
    ; F(0) = 0
    add v0, zr      ; v0 = 0 (primeiro termo)
    ; F(1) = 1
    add v1, zr, 1      ; v1 = 1 (segundo termo)
    add v3, zr	       ; incializa o contador de termos
    ldw v4, zr, n	; coloca o n na memória v4    

    ; Endereço inicial na memória para armazenar a sequência
    add v7, zr, 0x80   ; v2 = 0x80 (endereço de memória inicial)

    ; Armazena o primeiro termo (F(0))
    stw v0, v7        ; MEM[0x80 + 0] = v0 (0)
    stw v0, zr, 0xf000
    add v3, v3, 1      ; aumenta o contador de termos em 1 

    ; Armazena o segundo termo (F(1))
    add v7, v7, 2     ; aumenta a memória
    stw v1, v7        ; coloca na memória
    stw v1, zr, 0xf000
    add v3, v3, 1      ; aumenta o contador de termos em 1

    ; Loop para gerar os próximos termos (total de n)
loop1  
    
    ; Calcula o próximo termo: F(n) = F(n-1) + F(n-2)
    add v0, v1         ; v0 (novo) = v0 (antigo) + v1 (antigo)
    add v1, v0	       ; v1 = v0 (novo) + v1 (antigo)
 
    stw v0, zr, 0xf000 ; imprime v0(novo)
    add v7, v7, 2       ; aumenta o contador de memória em 2
    stw v0, v7          ; coloca o v0 (novo) na posicao de memoria v7
    add v3, v3, 1      ; aumenta o contador
    beq v3,v4,endloop1

    stw v1,zr, 0xf000 ; imprime o v1 (novo)
    add v7, v7, 2       ; aumenta o contador de memória em 2
    stw v1, v7          ; coloca o v1 (novo) na posicao de memoria v7
    add v3, v3, 1      ; aumenta o contador
    beq v3,v4,endloop1
  
   ; Volta para o início do loop
    beq zr, zr, loop1

endloop1

    hlt                ; Termina a execução do programa

n
    5
