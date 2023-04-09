*** Settings ***
Library          SeleniumLibrary
Resource         V_presetup.robot

*** Keywords ***
Abrir navegador
    Open Browser                    ${URL}        ${BROWSER}
    Maximize Browser Window
