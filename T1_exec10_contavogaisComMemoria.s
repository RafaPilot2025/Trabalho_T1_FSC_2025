;Problema 10: Escreva um programa que conta o número de cada vogal em uma palavra. O número de
;letras A, E, I, O e U devem ser escritos, respectivamente, nos endereços 0x40, 0x44, 0x48, 0x50 e
;0x52. A palavra deve ser lida a partir do endereço 0x60. A quantidade de letras na palavra deve ser lida
;do endereço 0x58
;   a:0x40
;   e:0x44
;   i:0x48
;   o:0x50
;   u:0x52

main
    add a0,zr,0x60 ; início da palavra em (0x60)
  
    ldw v0,zr,0x58 ; quantidade de caracteres em (0x58)

; inciando os contadores
    add v1,zr,0          ; cont_a
    add v2,zr,0          ; cont_e
    add v3,zr,0          ; cont_i
    add v4,zr,0          ; cont_o
    add v5,zr,0          ; cont_u

; coloca as constantes ASCII em registradores para comparacao
    add v6,zr,97         ; 'a'
    add v7,zr,101        ; 'e'
    add a1,zr,105        ; 'i'
    add a2,zr,111        ; 'o'
    add a3,zr,117        ; 'u'

; executa os laços
loop
    beq v0,zr,store      ; quando acabar os caracteres vai gravar os resultados
    ldb r13,a0           ; v12 = *a0 (byte)
    beq r13,v6,inc_a
    beq r13,v7,inc_e
    beq r13,a1,inc_i
    beq r13,a2,inc_o
    beq r13,a3,inc_u

next_char
    add a0,a0,1          ; avança para próximo caractere
    sub v0,v0,1          ; faz n diminuir
    beq zr,zr,loop

inc_a
    add v1,v1,1
    beq zr,zr,next_char

inc_e
    add v2,v2,1
    beq zr,zr,next_char

inc_i
    add v3,v3,1
    beq zr,zr,next_char

inc_o
    add v4,v4,1
    beq zr,zr,next_char

inc_u
    add v5,v5,1
    beq zr,zr,next_char

; grava os resultados na memória
store
    stw v1,zr,0x40       ; A
    stw v2,zr,0x44       ; E
    stw v3,zr,0x48       ; I
    stw v4,zr,0x50       ; O
    stw v5,zr,0x52       ; U
    hlt
