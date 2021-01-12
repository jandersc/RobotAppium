***Settings***
Resource        ../resources/base.robot   #importa as KW do base
Test Setup      Open Session    #chama a keyword para abrir a sessão
Test Teardown   Close Session   #chama a keyword para fechar a sessão


***Variables***    
${TOOLBAR_TITLE}        id=io.qaninja.android.twp:id/toolbarTitle       #variavel com o titulo da página  

***Test Cases***
Deve acessar a tela Dialogs    
    Open Nav        #chama a kw para abrir o menu e lateral da tela
    
    Click Text                      DIALOGS     #clica na opção 
    Wait Until Element Is Visible   ${TOOLBAR_TITLE}   #Aguarda até carregar a tela 
    Element Text Should Be          ${TOOLBAR_TITLE}       DIALOGS     #verifica se o titulo da tela está correto (equals)
    

Deve acessar a tela Forms
    Open Nav
    
    Click Text                      FORMS
    Wait Until Element Is Visible   ${TOOLBAR_TITLE}
    Element Text Should Be          ${TOOLBAR_TITLE}       FORMS


Deve acessar a tela de Vingadores
    Open Nav
    
    Click Text                      AVENGERS
    Wait Until Element Is Visible   ${TOOLBAR_TITLE}
    Element Text Should Be          ${TOOLBAR_TITLE}       AVENGERS


