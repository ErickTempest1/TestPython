# language: pt

Funcionalidade: Validação da API do TMDB
  Como um QA Estudante Erick Vitor
  Quero validar os endpoints de Filmes e Séries
  Para garantir que a API retorna os dados corretos (Status 200)

  Contexto:
    Dado que possuo um Token de acesso válido

  Cenário: Verificar mudanças em Séries de TV (Snippet 1)
    Quando eu consulto as mudanças da série com ID 1399
    Então o código de status deve ser 200

  Cenário: Verificar Filmes Favoritos (Snippet 2)
    Quando eu consulto a lista de filmes favoritos da conta
    Então o código de status deve ser 200
    E eu consulto os detalhes do filme "Clube da Luta" (ID 550)
    Então o código de status deve ser 200

  Cenário: Verificar Listas da Conta (Snippet 3)
    Quando eu consulto as listas criadas na minha conta
    Então o código de status deve ser 200

  Cenário: Verificar Filmes em Cartaz "Now Playing" (Snippet 4)
    Quando eu consulto a lista de filmes em cartaz
    Então o código de status deve ser 200
    E eu consulto os detalhes de um filme específico em cartaz
    Então o código de status deve ser 200

  Cenário: Verificar Filmes Populares (Snippet 5)
    Quando eu consulto a lista de filmes populares
    Então o código de status deve ser 200
    E eu consulto os detalhes do filme mais popular
    Então o código de status deve ser 200