*** Settings ***

Resource              ../resources/presetup.robot
Resource              ../pages/keywords/K_your_library.robot

Suite Setup           Abrir navegador
Test Setup            Realizar login
Suite Teardown        Fechar navegador
Test Teardown         

*** Test Cases ***

Criar playlist
    Usuário clica na opção "Criar Playlist"
    Usuário clica na playlist criada
    Usuário edita informações da playlist
    Usuário clica em "Salvar"
    Usuário verifica se as informações foram editadas com sucesso