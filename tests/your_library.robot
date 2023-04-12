*** Settings ***

Resource              ../resources/presetup.robot
Resource              ../pages/keywords/K_your_library.robot

Suite Setup           Abrir navegador
Test Setup            Realizar login
Suite Teardown        Fechar navegador
Test Teardown         

*** Test Cases ***

Adicionar música na criação da playlist
    Usuário clica na playlist criada
    Usuário adiciona musicas a playlist
    Usário verifica se musicas foram adicionadas a playlist