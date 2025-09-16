main
	add a0,zr,text1		
	add a1,zr,text2		
	add a2,zr,text3		
	add a3,zr,text4		

loop
	ldb v0,a0		
	stw v0,zr,0xf006	
	beq v0,zr,end		
	add a0,a0,1		
	beq zr,zr,loop		
end
	add v0,zr,10		
	stw v0,zr,0xf006      

loop1
	ldb v0,a1		
	stw v0,zr,0xf006	
	beq v0,zr,end1		
	add a1,a1,1		
	beq zr,zr,loop1		
end1
	add v0,zr,10		
	stw v0,zr,0xf006      

loop2
	ldb v0,a2		
	stw v0,zr,0xf006	
	beq v0,zr,end2		
	add a2,a2,1		
	beq zr,zr,loop2		
end2
	add v0,zr,10		
	stw v0,zr,0xf006      

loop3
	ldb v0,a3		
	stw v0,zr,0xf006	
	beq v0,zr,end3		
	add a3,a3,1		
	beq zr,zr,loop3		
end3
	add v0,zr,10		
	stw v0,zr,0xf006
	hlt 			

text1	
	"Pedro"

text2
	"Maria"

text3
	"Sofia ..."

text4
	"Carlos ..."

