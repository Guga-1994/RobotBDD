* Settings *

Library     SeleniumLibrary

* Variables *

${BROWSER}      chrome
${URL}      http://robotizandotestes.blogspot.com/
${CABECALHO}    Header1
${BOTAO_LUPA}   css=.search-expand.touch-icon-button
${CAMPO_PESQUISAR}     css=.search-input>input
${BOTAO_PESQUISAR}      css=.search-action.flat-button
${LINK_POST}    xpath=.//*[@id="Blog1"]/div[1]/article/div/div/h3/a
${TITULO}       xpath=.//*[@id="Blog1"]/div/article/div[1]/div/h3

* keywords *
Acessar blog robotizandotestes
    Open Browser ${URL} ${BROWSER}
    Wait Until Element Is Visible ${CABECALHO}
    Title Should Be     Robotizando testes

Pesquisar a postagem pela palavra "${BUSCA}"
    Click Element   ${BOTAO_LUPA}
    Input Text  ${CAMPO_PESQUISAR}      ${BUSCA}
    Click Element   ${BOTAO_PESQUISAR}
    Wait Until Element Is Visible  ${LINK_POST}

Verificar resultado da pesquisa
    [arguments]     ${TITULO_POSTAGEM}
    Page Should Contain     ${TITULO_POSTAGEM}

Clicar no post encontrado 
    Click Element  ${LINK_POST}

Verificar tela da postagem
    [arguments]     ${TITULO_POSTAGEM}
    Wait Until Element Is Visible  ${TITULO}
    Title Should Be     ${TITULO_POSTAGEM}

Fechar Navegador    
    Clone Browser