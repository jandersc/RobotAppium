***Settings***
Resource        ../resources/base.robot   #importa as KW do base
Test Setup      Open Session    #chama a keyword para abrir a sessão
Test Teardown   Close Session   #chama a keyword para fechar a sessão


***Test Cases***
Deve realizar um clique simples
    [tags]      short        #utilizando tags para chamar apenas esse cenário de teste
    Go To Short Click        #chama a KW para direcionar até a tela de Botões

    Click Element       id=io.qaninja.android.twp:id/short_click    #clica no elemento de clique simples

    Wait Until Page Contains        Isso é um clique simples        #Aguarda até a mensagem de confirmação


Deve realizar um clique longo
    [tags]      long        #utilizando tags para chamar apenas esse cenário de teste
    Go To Long Click        #chama a KW para direcionar até a tela de Botões

    Long Press       id=io.qaninja.android.twp:id/long_click    1000    #pressiona o botão por 1 segundo (1000 milisegundos)

    Wait Until Page Contains        CLIQUE LONGO OK      #Aguarda até a mensagem de confirmação



    #para executar no cmd 
    # robot -d ./logs -i long tests\buttons.robot