***Settings***
Resource        ../resources/base.robot   #importa as KW do base
Test Setup      Open Session    #chama a keyword para abrir a sessão
Test Teardown   Close Session   #chama a keyword para fechar a sessão


***Variables***

***Test Cases***
Deve mover o Hulk para o topo da lista
    Go To Avenger List    #chama a KW para direcionar até a tela de cadastro

    Drag And Drop       io.qaninja.android.twp:id/drag_handle       3       0
    Sleep               5   #temporario
