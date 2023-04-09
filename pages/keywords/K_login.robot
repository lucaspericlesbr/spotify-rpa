*** Settings ***
Documentation         Setup de keywords para os casos de teste da página de login
Library               SeleniumLibrary        timeout=15
Resource              ../variables/V_login.robot

*** Keywords ***

Usuário clica em "Entrar"
    Wait Until Element Is Visible    ${enter}
    Click Element                    ${enter}    

Usuário preenche os dados e clica em "Entrar"
    Wait Until Element Is Visible    ${userName}
    Click Element                    ${userName}
    Input Text                       ${userName}            automatedspotifyrpa@gmail.com

    Click Element                    ${password}
    Input Text                       ${password}            rpa123@@@    

    Click Element                    ${enter}

Usuário é logado no sistema na página principal
    Wait Until Element Is Visible    ${userProfile}
    Wait Until Element Is Visible    ${upgrade} 