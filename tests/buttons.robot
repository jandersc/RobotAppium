***Settings***
Resource        ../resources/base.robot   #importa as KW do base
Test Setup      Open Session    #chama a keyword para abrir a sessão
Test Teardown   Close Session   #chama a keyword para fechar a sessão


***Test Cases***
Deve realizar um clique simples
    Go To Short Click        #chama a KW para direcionar até a tela de Botões

    Click Element       id=io.qaninja.android.twp:id/short_click    #clica no elemento de clique simples

    Wait Until Page Contains        Isso é um clique simples        #Aguarda até a mensagem de confirmação