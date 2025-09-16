;Problema 9: Escreva um programa que identifique se uma palavra é palíndrome. O número de
;caracteres na palavra deve ser lido do endereço 0x60 da memória, enquanto a palavra deve iniciar no
;endereço 0x70.
main
    add a0,zr,word      ; a0 = &word  coloca a palavra em a0
    add a1,a0,0         ; a1 = &word (vai até o fim)

; para encontrar o fim da string
find_end
    ldb v0,a1
    beq v0,zr,found_end ; se achar nulo, encerra o programa
    add a1,a1,1
    beq zr,zr,find_end
found_end
    sub a1,a1,1         ; volta uma posição e acha a última letra

; para fazer o loop de comparação
check_loop
    bge a0,a1,is_pal    ; se chegou junto, é palíndromo

    ldb v1,a0           ; v1 = *a0
    ldb v2,a1           ; v2 = *a1
    bne v1,v2,is_nao    ; se diferente vai pro nao

    add a0,a0,1         ; avança
    sub a1,a1,1         ; retrocede
    beq zr,zr,check_loop

is_nao
    add a0,zr,msg_nao ; se nao for imprime "nao"
    beq zr,zr,print_loop
is_pal
    add a0,zr,msg_sim ; se for imprime "sim"
print_loop
    ldb v0,a0
    stw v0,zr,0xf006
    beq v0,zr,end
    add a0,a0,1
    beq zr,zr,print_loop
end
    hlt

; variaveis
word
    "xamamamax"      

msg_sim
    "sim"

msg_nao
    "nao"


