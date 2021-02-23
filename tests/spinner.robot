***Settings***
Resource        ../resources/base.robot   #importa as KW do base
Test Setup      Open Session    #chama a keyword para abrir a sessão
Test Teardown   Close Session   #chama a keyword para fechar a sessão

***Variables***
${SPINNER}=         id=io.qaninja.android.twp:id/spinnerJob     #atribui a variável o id do spinner
${LIST_OPTIONS}=    class=android.widget.ListView               #atribui a variável a lista de opções do checkbox(spinner)   

***Test Cases***
Deve selecionar o perfil QA
    Go To SingUp Form    #chama a KW para direcionar até a tela de cadastro
    Choice Job  QA       #passa o valor de QA para a KW Choice Job

Deve selecionar o perfil DevOps
    Go To SingUp Form    #chama a KW para direcionar até a tela de cadastro
    Choice Job  DevOps   #passa o valor de DevOps para a KW Choice Job  


***Keywords***
Choice Job
    [Arguments]     ${target}   #Recebe o valor passado no caso de teste

    Click Element                       ${SPINNER}          #clica no spinner(checkbox)
    Wait Until Element Is Visible       ${LIST_OPTIONS}     #aguarda até a lista de opções ficar visivel 

    Click Text      ${target}      #Seleciona a opção QA