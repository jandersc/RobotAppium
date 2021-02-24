***Settings***
Library         AppiumLibrary   #importa a biblioteca do Appium
Library         libs/extend.py
Resource        helpers.robot

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
    Capture Page Screenshot     #Adiciona o screenshot no final de cada cenário de teste
    Close Application   #Fecha a sessão da automação