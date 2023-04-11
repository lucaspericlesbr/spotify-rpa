*** Settings ***

Documentation         Setup de keywords para os casos de teste com keywords iguais
Library               SeleniumLibrary        timeout=15
Resource              ../pages/variables/V_common.robot

*** Keywords ***

Usuário clica em "Entrar"
    Wait Until Element Is Visible    ${enter}
    Click Element                    ${enter}    

Usuário preenche os dados de username
    Wait Until Element Is Visible    ${userName}
    Click Element                    ${userName}
    Input Text                       ${userName}            automatedspotifyrpa@gmail.com

Usuário preenche os dados de password
    Wait Until Element Is Visible    ${password}
    Click Element                    ${password}
    Input Text                       ${password}            rpa123@@@    

Usuário é logado no sistema na página principal
    Wait Until Element Is Visible    ${userProfile}
    Wait Until Element Is Visible    ${homePage} 

Usuário navega até a página "Buscar"
    Wait Until Element Is Visible    ${search}
    Click Element                    ${search}
    Wait Until Element Is Visible    ${searchField}