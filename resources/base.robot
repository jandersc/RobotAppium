***Settings***
Library         AppiumLibrary   #importa a biblioteca do Appium


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

Close Session
    Close Application   #Fecha a sessão da automação

Get Started
    Wait Until Page Contains        COMEÇAR   #Aguarda até na tela aparecer o botão "Começar"  
    Click Text                      COMEÇAR   #Clica no botão "Começar"

Open Nav
    Wait Until Element Is Visible   xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Click Element                   xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Wait Until Element Is Visible   id=io.qaninja.android.twp:id/navView