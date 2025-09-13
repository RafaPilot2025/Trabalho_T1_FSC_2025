;Problema 5: Escreva um programa que procura entre os endereços 0x60 e 0x70 por dois números cuja
;soma seja igual a 10. Caso este números existam, a posição deles deverá ser escrita nos endereços 0x80
;e 0x90.

main
; inicializando as variáveis a serem utilizadas
    add a0,zr,0x60        ; o primeiro está no i = 0x60
    add v6,zr,0x70        ; o último está no 0x70
    add v7,zr,0x72        ; um flag de 0x70 + 2 para parar o laço interno
    add v5,zr,10          ; o total tem que ser 10

; looping externo
fora
    bge a0,v6,done        ; se i >= 0x70, terminou
    add a1,a0,0           ; j = i
    add a1,a1,2           ; j = i + 2

; looping externo
dentro
    bge a1,v7,next_i      ; se j >= 0x72, acabou j

; ler os dois valores dentro do intervalo 0x60 e 0x70
    ldw v0,a0             ; v0 = MEM[i]
    ldw v1,a1             ; v1 = MEM[j]

; faz a soma = v0 + v1
    add v2,zr             ; v2 = 0
    add v2,v0             ; v2 += v0
    add v2,v1             ; v2 += v1

; agora testa soma se 10
    beq v2,v5,found

; aumenta o j
    add a1,a1,2
    beq zr,zr,dentro

; pega o proximo i
next_i
    add a0,a0,2
    beq zr,zr,fora

; achou: grava os ENDEREÇOS dos dois elementos
found
    stw a0,zr,0x80        ; endereço do 1º número
    stw a1,zr,0x90        ; endereço do 2º número
    hlt

; se não achar nada
done
    hlt
