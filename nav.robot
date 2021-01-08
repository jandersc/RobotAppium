***Settings***
Library     AppiumLibrary   #importa a biblioteca do Appium


***Test Cases***
Deve acessar a tela Dialogs
    Set Appium Timeout   10   #aguarda até 10 segundos para aparecer um elemnto da tela
    Open Application     http://localhost:4723/wd/hub   #abre uma nova sessão WD/HUB é um padrão para chamar o web driver
    ...                  automationName=UiAutomator2    #passa todos os parametros do capability do appium
    ...                  platformName=Android
    ...                  deviceName=Emulator
    ...                  app=${EXECDIR}/app/twp.apk
    ...                  udid=emulator-5554
    ...                  adbExecTimeout=120000

    Wait Until Page Contains        COMEÇAR   #Aguarda até na tela aparecer o botão "Começar"  
    Click Text                      COMEÇAR   #Clica no botão "Começar"
      
    Wait Until Element Is Visible   xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    
    Click Element                   xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Wait Until Element Is Visible   id=io.qaninja.android.twp:id/navView
    
    Click Text                      DIALOGS
    Wait Until Element Is Visible   id=io.qaninja.android.twp:id/toolbarTitle
    Element Text Should Be          id=io.qaninja.android.twp:id/toolbarTitle       DIALOGS

    Close Application   #Fecha a sessão da automação


Deve acessar a tela Forms
    Set Appium Timeout   10   #aguarda até 10 segundos para aparecer um elemnto da tela
    Open Application     http://localhost:4723/wd/hub   #abre uma nova sessão WD/HUB é um padrão para chamar o web driver
    ...                  automationName=UiAutomator2    #passa todos os parametros do capability do appium
    ...                  platformName=Android
    ...                  deviceName=Emulator
    ...                  app=${EXECDIR}/app/twp.apk
    ...                  udid=emulator-5554
    ...                  adbExecTimeout=120000

    Wait Until Page Contains        COMEÇAR
    Click Text                      COMEÇAR     
    Wait Until Element Is Visible   xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    
    Click Element                   xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Wait Until Element Is Visible   id=io.qaninja.android.twp:id/navView
    
    Click Text                      FORMS
    Wait Until Element Is Visible   id=io.qaninja.android.twp:id/toolbarTitle
    Element Text Should Be          id=io.qaninja.android.twp:id/toolbarTitle       FORMS

    Close Application   #Fecha a sessão da automação