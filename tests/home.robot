***Settings***
Library     AppiumLibrary   #importa a biblioteca do Appium


***Test Cases***
Deve abrir a tela principal
    Open Application     http://localhost:4723/wd/hub   #abre uma nova sessão WD/HUB é um padrão para chamar o web driver
    ...                  automationName=UiAutomator2    #passa todos os parametros do capability do appium
    ...                  platformName=Android
    ...                  deviceName=Emulator
    ...                  app=${EXECDIR}/app/twp.apk
    ...                  udid=emulator-5554
    ...                  adbExecTimeout=120000

    Wait Until Page Contains    Training Wheels Protocol     5  #aguarda até 5 segundos para aoarecer a primera parte do texto
    Wait Until Page Contains    Mobile Version               5  #procura o restante do texto
    Close Application   #Fecha a sessão da automação