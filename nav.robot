***Settings***
Library     AppiumLibrary   #importa a biblioteca do Appium


***Test Cases***
Deve acessar a tela Dialogs
    Open Application     http://localhost:4723/wd/hub   #abre uma nova sessão WD/HUB é um padrão para chamar o web driver
    ...                  automationName=UiAutomator2    #passa todos os parametros do capability do appium
    ...                  platformName=Android
    ...                  deviceName=Emulator
    ...                  app=${EXECDIR}/app/twp.apk
    ...                  udid=emulator-5554
    ...                  adbExecTimeout=120000

    Wait Until Page Contains        COMEÇAR     5  #aguarda até 5 segundos para aparecer o botão Começar
    Click Text                      COMEÇAR     
    Wait Until Element Is Visible   xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]      5
    
    Click Element                   xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Wait Until Element Is Visible   id=io.qaninja.android.twp:id/navView    5
    
    Click Text                      DIALOGS
    Wait Until Element Is Visible   id=io.qaninja.android.twp:id/toolbarTitle       5
    Element Text Should Be          id=io.qaninja.android.twp:id/toolbarTitle       DIALOGS

    Close Application   #Fecha a sessão da automação


Deve acessar a tela Forms
    Open Application     http://localhost:4723/wd/hub   #abre uma nova sessão WD/HUB é um padrão para chamar o web driver
    ...                  automationName=UiAutomator2    #passa todos os parametros do capability do appium
    ...                  platformName=Android
    ...                  deviceName=Emulator
    ...                  app=${EXECDIR}/app/twp.apk
    ...                  udid=emulator-5554
    ...                  adbExecTimeout=120000

    Wait Until Page Contains        COMEÇAR     5  #aguarda até 5 segundos para aparecer o botão Começar
    Click Text                      COMEÇAR     
    Wait Until Element Is Visible   xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]      5
    
    Click Element                   xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Wait Until Element Is Visible   id=io.qaninja.android.twp:id/navView    5
    
    Click Text                      FORMS
    Wait Until Element Is Visible   id=io.qaninja.android.twp:id/toolbarTitle       5
    Element Text Should Be          id=io.qaninja.android.twp:id/toolbarTitle       FORMS

    Close Application   #Fecha a sessão da automação