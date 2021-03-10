***Settings***
Documentation       Ações da página de categoria

***Keywords***
Open Album From
    [Arguments]     ${artist_name}

    #Escolhe o artista "Marcus e Debug"
    Click       xpath=//p[contains(text(), "${artist_name}")]/..
    Wait For Elements State     xpath=//h2[contains(text(), "Músicas")]      visible     10