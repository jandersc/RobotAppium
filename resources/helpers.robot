**Settings***
Documentation       Aqui teremos as KWs helpers

***Variables***
${START}            COMEÇAR     #variavel com o botão começar
${HAMBURGUER}       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]   #variavel com o menu esquerdo que parece uma hamburguer
${NAV_VIEW}         id=io.qaninja.android.twp:id/navView

***Keywords***
Get Started
    Wait Until Page Contains        ${START}   #Aguarda até na tela aparecer o botão "Começar"  
    Click Text                      ${START}   #Clica no botão "Começar"


Open Nav
    Wait Until Element Is Visible   ${HAMBURGUER}   #Aguarda até aparecer menu esquerdo que parece uma hamburguer
    Click Element                   ${HAMBURGUER}   #clica no menu esquerdo
    Wait Until Element Is Visible   ${NAV_VIEW}     #agaurda até aparecer as opções do menu lateral


Go To Login Form
    Open Nav     #chama a  KW para abrir o menu esquerdo          

    Click Text                  FORMS       #clica na opção FORMS
    Wait Until Page Contains    FORMS       #aguarda até abrir a tela de FORMS

    Click Text                  LOGIN       #clica na opção LOGIN
    Wait Until Page Contains    Fala QA, vamos testar o login?      #aguarda até abrir a tela de LOGIN


Go To SingUp Form
    Open Nav     #chama a  KW para abrir o menu esquerdo          

    Click Text                  FORMS       #clica na opção FORMS
    Wait Until Page Contains    FORMS       #aguarda até abrir a tela de FORMS

    Click Text                  CADASTRO       #clica na opção CADASTRO
    Wait Until Page Contains    Bem-vindo, crie sua conta.      #aguarda até abrir a tela de CADASTRO


Go To Radion Buttons
    Open Nav     #chama a  KW para abrir o menu esquerdo          

    Click Text                  INPUTS       #clica na opção INPUTS
    Wait Until Page Contains    INPUTS       #aguarda até abrir a tela de INPUTS

    Click Text                  BOTÕES DE RADIO       #clica na opção BOTÕES DE RADIO
    Wait Until Page Contains    Escolha sua linguagem preferida      #aguarda até abrir a tela de BOTÕES DE RADIO


Go To CheckBox
    Open Nav     #chama a  KW para abrir o menu esquerdo          

    Click Text                  INPUTS       #clica na opção INPUTS
    Wait Until Page Contains    INPUTS       #aguarda até abrir a tela de INPUTS

    Click Text                  CHECKBOX       #clica na opção CHECKBOX
    Wait Until Page Contains    Marque as techs que usam Appium      #aguarda até abrir a tela de CHECKBOX


Go To Short Click
    Open Nav     #chama a  KW para abrir o menu esquerdo          

    Click Text                  BOTÕES       #clica na opção BOTÕES
    Wait Until Page Contains    CLIQUE SIMPLES       #aguarda até abrir a tela que contém o texto CLIQUE SIMPLES

    Click Text                  CLIQUE SIMPLES       #clica na opção CLIQUE SIMPLES
    Wait Until Page Contains    Botão clique simples      #aguarda até abrir a tela de CLIQUE SIMPLES


Go To Long Click
    Open Nav     #chama a  KW para abrir o menu esquerdo          

    Click Text                  BOTÕES       #clica na opção BOTÕES
    Wait Until Page Contains    CLIQUE LONGO       #aguarda até abrir a tela que contém o texto CLIQUE LONGO

    Click Text                  CLIQUE LONGO       #clica na opção CLIQUE LONGO
    Wait Until Page Contains    Botão clique longo      #aguarda até abrir a tela de CLIQUE LONGO


Go To Avenger List
    Open Nav     #chama a  KW para abrir o menu esquerdo          

    Click Text                  AVENGERS       #clica na opção AVENGERS
    Wait Until Page Contains    AVENGERS       #aguarda até abrir a tela que contém o texto AVENGERS

    Click Text                  LISTA       #clica na opção LISTA
    Wait Until Page Contains    LISTA      #aguarda até abrir a tela de LISTA

