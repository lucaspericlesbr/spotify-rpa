*** Settings ***

Library               SeleniumLibrary
Resource              ../pages/keywords/K_common.robot

*** Variables ***

${URL}               https://open.spotify.com/
${BROWSER}           chrome

*** Keywords ***

Abrir navegador
    Open Browser                    ${URL}        ${BROWSER}
    Maximize Browser Window

Fechar navegador
    Close Browser

Realizar login
    Usuário clica em "Entrar"  
    Usuário preenche os dados de username
    Usuário preenche os dados de password
    Usuário clica em "Entrar"
    Usuário é logado no sistema na página principal
