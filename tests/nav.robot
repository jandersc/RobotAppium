***Settings***
Resource        ../resources/base.robot   #importa as KW do do base
Test Setup      Open Session    #chama a keyword para abrir a sessção
Test Teardown   Close Session   #chama a keyword para fechar a sessção


***Test Cases***
Deve acessar a tela Dialogs
    Get Started     #chama a kw para procurar e clucar no botão começar
    
    Open Nav        #chama a kw para abrir o menu e lateral da tela
    
    Click Text                      DIALOGS     #clica na opção 
    Wait Until Element Is Visible   id=io.qaninja.android.twp:id/toolbarTitle   #Aguarda até carregar a tela 
    Element Text Should Be          id=io.qaninja.android.twp:id/toolbarTitle       DIALOGS     #verifica se o titulo da tela está correto (equals)
    

Deve acessar a tela Forms
    Get Started
      
    Open Nav
    
    Click Text                      FORMS
    Wait Until Element Is Visible   id=io.qaninja.android.twp:id/toolbarTitle
    Element Text Should Be          id=io.qaninja.android.twp:id/toolbarTitle       FORMS


Deve acessar a tela de Vingadores
    Get Started
    
    Open Nav
    
    Click Text                      AVENGERS
    Wait Until Element Is Visible   id=io.qaninja.android.twp:id/toolbarTitle
    Element Text Should Be          id=io.qaninja.android.twp:id/toolbarTitle       AVENGERS


