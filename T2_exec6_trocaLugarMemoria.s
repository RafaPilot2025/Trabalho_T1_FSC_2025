;Problema 5: Escreva um programa que procura entre os endereços 0x60 e 0x70 por dois números cuja
;soma seja igual a 10. Caso este números existam, a posição deles deverá ser escrita nos endereços 0x80
;e 0x90.

main
    add a0,zr,0x40       ; começa pela esquerda
    add a1,zr,0x60       ; começa pela direita

loop
    bge a0,a1,end        ; se a0 >= a1, vai para o end

    ldw v0,a0            ; v0 = MEM[a0] v0 vai receber o a0
    ldw v1,a1            ; v1 = MEM[a1] v1 vai receber o a1
    stw v1,a0            ; MEM[a0] = v1 guarda a0 em v1
    stw v0,a1            ; MEM[a1] = v0 guarda a1, em v2

    add a0,a0,2          ; avança na memória
    sub a1,a1,2          ; recua na memória
    beq zr,zr,loop

end
    hlt
