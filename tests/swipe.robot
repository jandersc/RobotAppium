***Settings***
Resource        ../resources/base.robot   #importa as KW do base
Test Setup      Open Session    #chama a keyword para abrir a sessão
Test Teardown   Close Session   #chama a keyword para fechar a sessão

# start_x - x-percent at which to start
# start_y - y-percent at which to start
# end_x - x-percent distance from start_x at which to stop
# end_y - y-percent distance from start_y at which to stop
# duration - (optional) time to take the swipe, in ms.

# Y 18.22 => Valor inicial da horizontal
# X 88.88 => Valor incial da vertical

# Y 18.22 => Valor final da horizontal
# X 47.22 => Valor final da vertical

***Variables***
${BTN_REMOVE}=      id=io.qaninja.android.twp:id/btnRemove  #id do botão para remover após o swipe

***Test Cases***
Deve remover o Capitão América
    Go To Avenger List    #chama a KW para direcionar até a tela de cadastro

    Swipe By Percent        88      18      47      18    #porcentagem da tela para realizar o swiper
    
    Wait Until Element Is Visible       ${BTN_REMOVE}       #Aguarda até aparecer o ícone da lixeira
    Click Element                       ${BTN_REMOVE}       #Clica no ícone da lixeira