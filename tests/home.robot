*** Settings ***

Resource              ../resources/presetup.robot
Resource              ../pages/keywords/K_home.robot

Suite Setup           Abrir navegador
Test Setup            Realizar login
Suite Teardown        Fechar navegador
Test Teardown         

*** Test Cases ***

Verificar navegação
    Usuário navega até a página "Buscar"
    Usuário navega até a página "Sua Biblioteca"
    Usuário navega até a página "Músicas Curtidas"
    Usuário navega até a página "Início"
    