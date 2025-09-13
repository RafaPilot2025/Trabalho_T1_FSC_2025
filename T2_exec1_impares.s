; Problema 1: Desenvolva um programa que escreva na memória os N primeiros números inteiros
; ímpares maiores que zero. Seu programa deverá ser N da memória e funcionar para qualquer valor de
; N. Os valores deverão ser escritos a partir do endereço 0x20 e aparecerem contiguamente na memória.

main    
    ldw v0,zr,n       ; ler n, somar zr e colocar em v0
    add v1,zr,1	      ; inicializar em 1
    add v2,zr         ; inicializa o contador dos numeros
    add v3,zr         ; inicializa o contador dos enderecos
  
loop1    
    stw v1,zr,0xf000 ; imprimir o v1   
    add v1,v1,2      ; encontrar o próximo número impar
    add v2,v2,2      ; encontrar o próximo endereço somando uma palavra ou 2 bytes
    beq v3,v0,endloop1
    add v3,v3,1	     ; aumentar o contador    
    beq zr,zr,loop1  ; se o v0 (valor do n) for maior ou igual a v3 (contador) vá para o loop1
endloop1

    hlt 	          

n
    5                    
