***Settings***
Resource        ../resources/base.robot   #importa as KW do base
Test Setup      Open Session    #chama a keyword para abrir a sessão
Test Teardown   Close Session   #chama a keyword para fechar a sessão


***Test Cases***
Deve selecionar a opção Python
    Go To Radion Buttons    #chama a KW para direcionar até a tela de Radion Buttons

    ${element}=     Set Variable    xpath=//android.widget.RadioButton[contains(@text, 'Python')]   #atribue a variável o valor do xpath da opção de radio "Python"

    Click Element                       ${element}     #clica na opção de radio "Python"
    Wait Until Element Is Visible       ${element}     #aguarda até o elemento está selecionado (status true)

    Element Attribute Should Match      ${element}   checked     true       #valida se a opção de radio "Python" está selecionada
