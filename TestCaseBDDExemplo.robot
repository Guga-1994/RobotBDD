* Setting *
Resource  ResourceBDD.robot
Resource  BDDpt-br.robot
Suite Teardown  Fechar Navegador 

* Test Cases *
Cenario 01: Pesquisar postagem Season Premiere
    Dado que esteja na tela de HOME do blog robotizando testes
    Quando pesquisar pela palavra "introdução"
    Entao a postagem "Season Premiere: Introdução ao Robot Framework" deve ser listada no resultado da pesquisa

Cenario 02: Ler postagens Season Premiere
    Dado que esteja na tela de resultado da pesquisa pela postagem "Season Premiere: Introdução ao Robot Framework"
    Quando clicar no link da postagem
    Entao a tela da postagem "Season Premiere: Introdução ao Robot Framework" deve ser mostrada

* Keywords *
Que esteja na tela de HOME do blog robotizando testes
    Acessar blog robotizandotestes

Pesquisar pela palavra "${BUSCA}"
    Pesquisar a postagem pela palavra "${BUSCA}"

A postagem "${TITULO_POSTAGEM}" deve ser listada no resultado da pesquisa
    Verificar resultado da pesquisa     ${TITULO_POSTAGEM}

Que esteja na tela de resultado da pesquisa pela postagem "${TITULO_POSTAGEM}"
     Verificar resultado da pesquisa    ${TITULO_POSTAGEM}

Clicar no link da postagem
    Clicar no post encontrado

A tela da postagem "${TITULO_POSTAGEM}" deve ser mostrada
    Verificar tela da postagem  ${TITULO_POSTAGEM}