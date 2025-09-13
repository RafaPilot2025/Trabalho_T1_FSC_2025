main

    add a0,zr,0x60        
    add v6,zr,0x70        
    add v7,zr,0x72        
    add v5,zr,10          


fora
    bge a0,v6,done        
    add a1,a0,0           
    add a1,a1,2           


dentro
    bge a1,v7,next_i      


    ldw v0,a0             
    ldw v1,a1             


    add v2,zr             
    add v2,v0             
    add v2,v1             


    beq v2,v5,found


    add a1,a1,2
    beq zr,zr,dentro


next_i
    add a0,a0,2
    beq zr,zr,fora


found
    stw a0,zr,0x80        
    stw a1,zr,0x90        
    hlt


done
    hlt
