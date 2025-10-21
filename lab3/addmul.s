.text
.global main

main:
    # Save return to OS on stack
    SUB sp, sp, #4
    STR lr, [sp, #0]

    # Enter your program here.
    MOV r0, #12
    MOV r1, #3
    ADD r2, r0, r1  @ register to add

    # Printing The Message
    LDR r0, = format     @ load address of format string into r0
    MOV r1, r2      @ Move the sum to r1 as the argument for print
    BL printf

    # Return to the OS
    LDR lr, [sp, #0]
    ADD sp, sp, #4




# Printing The Message
    LDR r0, = format     @ load address of format string into r0
    MOV r1, r2      @ Move the sum to r1 as the argument for print
    BL printf

    # Return to the OS
    LDR lr, [sp, #0]
    ADD sp, sp, #4
    MOV pc, lr

.data
format:
    .asciz "%d\n"   @ Format string for printing an integer
