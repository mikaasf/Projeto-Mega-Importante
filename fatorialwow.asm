section .text
global factorial ; make the function visible to other modules

factorial:
push ebp ; save the current base pointer
mov ebp, esp ; set up a new base pointer

mov eax, [ebp+8] ; get the input number from the stack
cmp eax, 1 ; compare the number with 1

jle end_factorial ; if the number is less than or equal to 1, jump to the end

dec eax ; decrement the number by 1

push eax ; push the decremented number onto the stack
call factorial ; call the factorial function recursively

mov ebx, eax ; store the result in ebx

pop eax ; get the original number from the stack
mul ebx ; multiply the original number with the factorial of the decremented number

end_factorial:
pop ebp ; restore the original base pointer
ret ; return from the function
