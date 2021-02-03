***Settings***
Resource        ../resources/base.robot   #importa as KW do base
Test Setup      Open Session    #chama a keyword para abrir a sessão
Test Teardown   Close Session   #chama a keyword para fechar a sessão


***Test Cases***
Deve marcar a opção Robot Framework
    Go To CheckBox    #chama a KW para direcionar até a tela de CheckBox

    ${element}=     Set Variable    xpath=//android.widget.CheckBox[contains(@text, 'Robot Framework')]   #atribue a variável o valor do xpath da opção de radio "Python"

    Click Element                       ${element}     #clica na opção de CheckBox "Robot Framework"
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/rvContainer     #aguarda até o elemento está selecionado (status true), valida se o modal que tem todos checks está visível
    Element Attribute Should Match      ${element}   checked     true       #valida se a opção de CheckBox "Robot Framework" está selecionada
