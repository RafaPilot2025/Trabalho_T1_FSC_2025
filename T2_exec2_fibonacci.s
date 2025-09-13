main
    
    add v0, zr     
    add v1, zr, 1      
    add v3, zr	       
    ldw v4, zr, n	    

    add v7, zr, 0x80   

    stw v0, v7        
    stw v0, zr, 0xf000
    add v3, v3, 1      

    add v7, v7, 2     
    stw v1, v7        
    stw v1, zr, 0xf000
    add v3, v3, 1      

loop1  

    add v0, v1         
    add v1, v0	       
 
    stw v0, zr, 0xf000 
    add v7, v7, 2       
    stw v0, v7          
    add v3, v3, 1      
    beq v3,v4,endloop1

    stw v1,zr, 0xf000 
    add v7, v7, 2       
    stw v1, v7          
    add v3, v3, 1      
    beq v3,v4,endloop1
  
    beq zr, zr, loop1

endloop1

    hlt              

n
    10
