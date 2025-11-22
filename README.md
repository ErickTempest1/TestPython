# 🎬 Automação de Testes de API - TMDB

Este repositório contém um projeto robusto de **QA Estudante (Backend)** desenvolvido para validar a API do [The Movie Database (TMDB)](https://www.themoviedb.org/).

O projeto evoluiu de simples consultas para fluxos completos de **CRUD (Create, Read, Update, Delete)**, validação de regras de negócio, manipulação de sessões e tratamento de dados temporais.

## 🚀 Stack Tecnológica

* **Linguagem:** Python 3.12+
* **Test Runner:** Pytest
* **HTTP Client:** Requests
* **Controle de Versão:** Git & GitHub
* **Conceitos Aplicados:** REST API, CRUD, Auth (Bearer & Guest), Datetime Validation.

## 🧪 Cobertura e Cenários de Teste

A suíte de testes garante a integridade dos seguintes fluxos:

| Arquivo de Teste | Funcionalidades Testadas | Verbos HTTP |
| :--- | :--- | :---: |
| `test_movie_details.py` | **Filmes Específicos:** Consulta dados do filme "Clube da Luta", envia uma avaliação (Rating) e remove essa avaliação. | `GET`, `POST`, `DELETE` |
| `test_tv_rating.py` | **Séries de TV:** Consulta dados de "Game of Thrones", avalia a série e remove a avaliação posteriormente. | `GET`, `POST`, `DELETE` |
| `test_now_playing.py` | **Em Cartaz:** Valida a lista de filmes nos cinemas, seleciona um filme e executa o ciclo de avaliação/remoção. | `GET`, `POST`, `DELETE` |
| `test_popular.py` | **Populares:** Valida a lista de filmes populares e garante que o fluxo de avaliação funciona para filmes em destaque. | `GET`, `POST`, `DELETE` |
| `test_session.py` | **Autenticação & Sessão:** Criação de Sessão de Convidado (Guest), validação matemática de data de expiração (UTC Timezone) e fluxo de avaliação usando ID da sessão na URL. | `GET`, `POST`, `DELETE` |

## 🧠 Destaques Técnicos

### 1. Ciclo de Vida do Dado (CRUD)
Diferente de testes simples de leitura, este projeto garante a limpeza dos dados.
* **Criação:** Envia `POST` para dar nota a um filme (Status 201).
* **Limpeza:** Envia `DELETE` logo em seguida para não sujar a base de dados (Status 200).

### 2. Validação de Sessão e Datas
No arquivo `test_session.py`, foi implementada uma lógica avançada para:
* Gerar uma `Guest Session`.
* Validar se o ID retornado não é nulo.
* Converter a data de expiração (`expires_at`) vinda da API para objeto `datetime`.
* Comparar com o horário atual usando **Timezone Aware Objects (UTC)** para evitar erros de fuso horário.

### 3. Autenticação Dinâmica
Os testes suportam dois tipos de autenticação:
* **Bearer Token:** Via Headers para endpoints protegidos.
* **Query Params:** Injeção dinâmica do `guest_session_id` na URL para ações de convidado.

## ⚙️ Como Rodar Localmente

1.  **Clone o repositório:**
    ```bash
    git clone [https://github.com/ErickTempest1/TestPython.git](https://github.com/ErickTempest1/TestPython.git)
    cd TestPython
    ```

2.  **Instale as dependências:**
    ```bash
    pip install requests pytest
    ```

3.  **Configure o Token:**
    Substitua a variável `TOKEN` nos arquivos pelo seu Token de Leitura da API do TMDB.

4.  **Execute os testes:**
    ```bash
    # Para rodar todos e ver o output detalhado
    pytest -v
    ```

---
**Autor:** Erick Vitor
*Projeto desenvolvido com foco em boas práticas de automação e arquitetura de testes.*