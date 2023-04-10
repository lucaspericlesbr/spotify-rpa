*** Settings ***

Resource              ../resources/presetup.robot
Resource              ../pages/keywords/K_login.robot

Suite Setup          
Test Setup            Abrir navegador
Suite Teardown       
Test Teardown         Fechar navegador

*** Test Cases ***

Realizar login com sucesso
    Usuário clica em "Entrar"  
    Usuário preenche os dados de username
    Usuário preenche os dados de password
    Usuário clica em "Entrar"
    Usuário é logado no sistema na página principal