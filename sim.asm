.data
prompt: .asciiz "Por favor, informe seu nome: "
saudacao: .asciiz "Olá Sr(a). "
newline: .asciiz "\n"

.text
main:
    li $v0, 4
    la $a0, prompt
    syscall

    li $v0, 8
    la $a0, nome
    li $a1, 50
    syscall

    li $v0, 4
    la $a0, saudacao
    syscall

    li $v0, 4
    la $a0, nome
    syscall

    li $v0, 4
    la $a0, newline
    syscall

    li $v0, 10
    syscall

.data
nome: .space 50
