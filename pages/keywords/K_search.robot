*** Settings ***

Documentation         Setup de keywords para os casos de teste da página search
Library               SeleniumLibrary        timeout=15
Resource              ../pages/variables/V_search.robot
Resource              ../pages/variables/V_common.robot

*** Keywords ***

Usuário pesquisa uma música
    Wait Until Element Is Visible       ${searchField}
    Click Element                       ${searchField}
    Input Text                          ${searchField}        Heartbeat Nitecore

usuário verifica se a música pesquisada foi encontrada
    Wait Until Page Contains Element    ${imgMusicHeartbeatNitecore}