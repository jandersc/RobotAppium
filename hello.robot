***Settings***
Library     hello.py

***Test Cases***
Deve retornar mensagem de boas vindas
    ${resultado}=   Hello Robot     Jander Cerqueira
    Should Be Equal     ${resultado}    Olá, Jander Cerqueira...