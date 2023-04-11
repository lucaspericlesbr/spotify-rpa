*** Settings ***

Documentation         Setup de keywords para os casos de teste da página your library
Library               SeleniumLibrary        timeout=15
Resource              ../pages/variables/V_your_library.robot
Resource              ../pages/variables/V_common.robot

*** Keywords ***

Usuário clica na opção "Criar Playlist"
    Wait Until Element Is Visible    ${createPlaylist}
    Click Element                    ${createPlaylist}
    Wait Until Element Is Visible    ${createPlaylistPage}

Usuário clica na playlist criada
    Wait Until Element Is Visible    ${playlistCreated}
    Click Element                    ${playlistCreated}
    Wait Until Element Is Visible    ${editDetailsPlaylist}

Usuário edita informações da playlist
    Wait Until Element Is Visible    ${editNameDetailsPlaylist}
    Click Element                    ${editNameDetailsPlaylist}

    FOR     ${i}    IN RANGE   35
        PressKeys       None  ARROW_RIGHT
        PressKeys       None  BACKSPACE
        Exit For Loop If    ${i} == 35  
    END

    Input Text                       ${editNameDetailsPlaylist}            Automated Playlist
    
Usuário clica em "Salvar"
    Click Element                    ${saveButtonDetailsPlaylist}

Usuário verifica se as informações foram editadas com sucesso
    Wait Until Element Is Visible    ${editedNameDetailsPlaylist}