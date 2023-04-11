*** Settings ***

Documentation         Setup de keywords para os casos de teste da página home
Library               SeleniumLibrary        timeout=15
Resource              ../pages/variables/V_home.robot
Resource              ../pages/variables/V_common.robot

*** Keywords ***
    
Usuário navega até a página "Sua Biblioteca"
    Wait Until Element Is Visible    ${yourLibrary}
    Click Element                    ${yourLibrary}
    Wait Until Element Is Visible    ${yourLibraryPage}

Usuário navega até a página "Criar Playlist"
    Wait Until Element Is Visible    ${createPlaylist}
    Click Element                    ${createPlaylist}
    Wait Until Element Is Visible    ${createPlaylistPage}

Usuário navega até a página "Músicas Curtidas"
    Wait Until Element Is Visible    ${likedSongs}
    Click Element                    ${likedSongs}
    Wait Until Element Is Visible    ${likedSongsPage}

Usuário navega até a página "Início"
    Wait Until Element Is Visible    ${home}
    Click Element                    ${home}
    Wait Until Element Is Visible    ${homePage}