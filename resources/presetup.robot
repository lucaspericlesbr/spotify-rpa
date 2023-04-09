*** Settings ***
Library              SeleniumLibrary

*** Variables ***
${URL}               https://open.spotify.com/
${BROWSER}           chrome

*** Keywords ***
Abrir navegador
    Open Browser                    ${URL}        ${BROWSER}
    Maximize Browser Window

Fechar navegador
    Close Browser
