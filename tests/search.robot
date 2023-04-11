*** Settings ***

Resource              ../resources/presetup.robot
Resource              ../pages/keywords/K_search.robot

Suite Setup           Abrir navegador
Test Setup            Realizar login
Suite Teardown        Fechar navegador
Test Teardown         

*** Test Cases ***

Pesquisar música
    Usuário navega até a página "Buscar"
    Usuário pesquisa uma música
    usuário verifica se a música pesquisada foi encontrada
