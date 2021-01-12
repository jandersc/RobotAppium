***Settings***
Library         AppiumLibrary   #importa a biblioteca do Appium


***Variables***
${START}            COMEÇAR     #variavel com o botão começar
${HAMBURGUER}       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]   #variavel com o menu esquerdo que parece uma hamburguer
${NAV_VIEW}         id=io.qaninja.android.twp:id/navView

***Keywords***
Open Session
    Set Appium Timeout   10   #aguarda até 10 segundos para aparecer um elemnto da tela
    Open Application     http://localhost:4723/wd/hub   #abre uma nova sessão WD/HUB é um padrão para chamar o web driver
    ...                  automationName=UiAutomator2    #passa todos os parametros do capability do appium
    ...                  platformName=Android
    ...                  deviceName=Emulator
    ...                  app=${EXECDIR}/app/twp.apk
    ...                  udid=emulator-5554
    ...                  adbExecTimeout=120000
    Get Started

Close Session
    Close Application   #Fecha a sessão da automação

Get Started
    Wait Until Page Contains        ${START}   #Aguarda até na tela aparecer o botão "Começar"  
    Click Text                      ${START}   #Clica no botão "Começar"

Open Nav
    Wait Until Element Is Visible   ${HAMBURGUER}   #Aguarda até aparecer menu esquerdo que parece uma hamburguer
    Click Element                   ${HAMBURGUER}   #clica no menu esquerdo
    Wait Until Element Is Visible   ${NAV_VIEW}     #agaurda até aparecer as opções do menu lateral