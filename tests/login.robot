***Settings***
Resource        ../resources/base.robot   #importa as KW do base
Test Setup      Open Session    #chama a keyword para abrir a sessão
Test Teardown   Close Session   #chama a keyword para fechar a sessão


***Test Cases***
Deve logar com sucesso
    Open Nav     #chama a  KW para abrir o menu esquerdo          

    Click Text                  FORMS       #clica na opção FORMS
    Wait Until Page Contains    FORMS       #aguarda até abrir a tela de FORMS

    Click Text                  LOGIN       #clica na opção LOGIN
    Wait Until Page Contains    Fala QA, vamos testar o login?      #aguarda até abrir a tela de LOGIN

    Input Text      id=io.qaninja.android.twp:id/etEmail        eu@papito.io
    Input Text      id=io.qaninja.android.twp:id/etPassword     qaninja
    Click Element   id=io.qaninja.android.twp:id/btnSubmit

    Wait Until Page Contains    Show! Suas credencias são validas.