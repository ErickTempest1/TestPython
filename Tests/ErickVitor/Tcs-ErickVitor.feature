Funcionalidade: Automação Avançada da API TMDB
  Como o QA Estudante Erick Vitor
  Quero validar o ciclo completo de vida dos dados (Criar, Ler, Deletar)
  Para garantir que a API processa avaliações e sessões corretamente
  Como a API escolhida pelo grupo não tem como usar a função PUT, só irei validar as outras funções


  Cenário: Fluxo de Detalhes e Avaliação de Filme
    Quando eu consulto os detalhes do filme "Clube da Luta" (ID 550)
    Então o código de status deve ser 200
    E eu envio uma avaliação de nota 8.5 para este filme
    Então o código de status deve ser 201 (Criado)
    E eu deleto a avaliação enviada
    Então o código de status deve ser 200 (Sucesso)

  Cenário: Fluxo de Filmes em Cartaz "Now Playing"
    Quando eu consulto a lista de filmes em cartaz
    Então o código de status deve ser 200
    E eu busco os detalhes do filme específico (ID 534649)
    Então o código de status deve ser 200
    E eu envio uma avaliação de nota 8.0 para este filme
    Então o código de status deve ser 201
    E eu deleto a avaliação enviada
    Então o código de status deve ser 200

  Cenário: Fluxo de Filmes Populares
    Quando eu consulto a lista de filmes populares
    Então o código de status deve ser 200
    E eu busco os detalhes do filme específico (ID 634649)
    Então o código de status deve ser 200
    E eu envio uma avaliação de nota 7.5 para este filme
    Então o código de status deve ser 201
    E eu deleto a avaliação enviada
    Então o código de status deve ser 200

  Cenário: Sessão de Convidado e Validação de Data
    Quando eu crio uma nova Sessão de Convidado
    Então o código de status deve ser 200
    E o ID da sessão (guest_session_id) não deve ser nulo
    E a data de expiração deve ser maior que a data atual (UTC)
    
  Cenário: Avaliação via Sessão de Convidado
    Dado que tenho uma Sessão de Convidado ativa
    Quando eu avalio um filme usando o ID da sessão na URL
    Então o código de status deve ser 201
    E eu deleto a avaliação usando o ID da sessão na URL
    Então o código de status deve ser 200

  Cenário: Avaliação de Séries de TV
    Quando eu envio uma avaliação para a série "Game of Thrones" (ID 1399)
    Então o código de status deve ser 201
    E eu deleto a avaliação da série
    Então o código de status deve ser 200