
.text
.global main



main:
	SUB sp,sp, #4
	STR lr, [sp, #0]

#coding block
#Prompt username
	LDR r0, =promptName
	BL printf

#User Input
	LDR r0, =nameFormat
	LDR r1, =userName
	BL scanf

#Prompt age
	LDR r0, =promptAge
	BL printf

#Age Input
	LDR r0, =ageFormat
	ldr r1, =userAge
	BL scanf


#Print 
	LDR r0, =outputFormat
	LDR r1, =userName
	LDR r2, =userAge
	LDR r2, [r2]
	Bl printf
	


#Return to OS
	LDR lr, [sp, #0]
	ADD sp, sp, #4
	MOV pc, lr
 

.data
	promptName: .asciz "Enter your name: "
	promptAge: .asciz "Enter your age: "
	nameFormat: .asciz "%s"
	ageFormat: .asciz "%d"
	outputFormat: .asciz "The user %s is %d years old .\n"
	userName: .space 40
	userAge: .word 0
 


