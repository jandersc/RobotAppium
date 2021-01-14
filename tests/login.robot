***Settings***
Resource        ../resources/base.robot   #importa as KW do base
Test Setup      Open Session    #chama a keyword para abrir a sessão
Test Teardown   Close Session   #chama a keyword para fechar a sessão


***Test Cases***
Deve logar com sucesso
    Go To Login Form    #chama a KW para direcionar até a tela de login
    
    Input Text      id=io.qaninja.android.twp:id/etEmail        eu@papito.io       #informa o e-mail
    Input Text      id=io.qaninja.android.twp:id/etPassword     qaninja            #informa a senha 
    Click Element   id=io.qaninja.android.twp:id/btnSubmit                         #clica no botão entrar

    Wait Until Page Contains        Show! Suas credencias são validas.              #aguarda até a imagem de sucesso aparecer