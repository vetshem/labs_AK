.global lab1
.syntax unified
#define a 36
#define b 7
#define c 47
lab1:
    push {lr}
    // calculate
    mov r0, a
    mov r1, b
    mov r2, c
    and r0, r0, r1
    lsr r0, r0, #1
    neg r2, r2
    add r0, r0, r2
    pop {pc}
