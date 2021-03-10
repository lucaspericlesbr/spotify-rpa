***Settings***
Documentation       Ações de navegação no parodify

***Keywords***
Go To Search Page
    #Clica na categoria e vai para página de categorias
    Click       css=a[href*=search]
    Wait For Elements State     xpath=//h2[contains(text(), "Buscar")]      visible     10

Go to Sertanejo Category
    #Escolhe a categoria sertanejo
    Click       xpath=//img[contains(@src, "sertanejo.png")]/..
    Wait For Elements State     xpath=//h2[contains(text(), "Sertanejo")]      visible     10

Open Album From
    [Arguments]     ${artist_name}

    #Escolhe o artista "Marcus e Debug"
    Click       xpath=//p[contains(text(), "${artist_name}")]/..
    Wait For Elements State     xpath=//h2[contains(text(), "Músicas")]      visible     10