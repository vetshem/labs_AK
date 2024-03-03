.global lab1
.syntax unified
#define a 4
#define b 6
#define c -2
lab1:
    push {lr}
    // calculate
    mov r0, a
    mov r1, b
    mov r2, c
    and r0, r0, r1
    lsr r0, r0, #1
    // factorial calculate
    mov r3, #1      //reserve reg for result of factorial
    cmp r2, #0
    it gt            // IT block for greater than (r2 > 0)
    bgt factorial    // Branch if greater than (r2 > 0)
    it eq            // IT block for equal (r2 == 0)
    addeq r0, r0, r3 // Add if equal (r2 == 0)
    pop {pc}
factorial:
    mul r3, r3, r2
    sub r2, r2, #1
    cmp r2, #1
    bGE factorial
    add r0, r0, r3
    bx lr
