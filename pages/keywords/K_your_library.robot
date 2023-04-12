*** Settings ***

Documentation         Setup de keywords para os casos de teste da página your library
Library               SeleniumLibrary        timeout=15
Resource              ../pages/variables/V_your_library.robot
Resource              ../pages/variables/V_common.robot

*** Keywords ***



Usuário clica na playlist criada
    Wait Until Element Is Visible    ${openCreatedPlaylist}
    Click Element                    ${openCreatedPlaylist}

Usuário adiciona musicas a playlist
    Wait Until Element Is Visible    ${searchBoxPlaylist}
    Click Element                    ${searchBoxPlaylist}
    Input Text                       ${searchBoxPlaylist}                  Superman Eminem
    Wait Until Element Is Visible    ${firstAddMusicButton}
    Click Element                    ${firstAddMusicButton}

Usário verifica se musicas foram adicionadas a playlist
    Wait Until Element Is Visible    ${verifyONEmusic}
    