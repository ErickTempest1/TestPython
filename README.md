# 🎬 Automação de Testes de API - TMDB

Este repositório contém um projeto de **QA Estudante (Backend)** desenvolvido para validar os endpoints da API do [The Movie Database (TMDB)](https://www.themoviedb.org/).

O objetivo foi criar uma suíte de testes regressivos utilizando **Python** e **Pytest**, garantindo a integridade de dados de filmes, séries e funcionalidades de conta.

## 🚀 Tecnologias Utilizadas

* **Linguagem:** Python 3.12+
* **Framework de Teste:** Pytest
* **Requisições HTTP:** Requests Library
* **Controle de Versão:** Git & GitHub
* **Padrão de Projeto:** Testes funcionais isolados por domínio.

## 🧪 Cobertura dos Testes

O projeto valida os principais fluxos da API, incluindo:

| Domínio | Arquivo de Teste | Cenários Cobertos |
| :--- | :--- | :--- |
| **Filmes Populares** | `test_popular.py` | Listagem de populares e validação dinâmica de IDs. |
| **Em Cartaz** | `test_now_playing.py` | Validação de filmes "Now Playing" e status code. |
| **Séries de TV** | `test_changes.py` | Consulta de lista de mudanças em séries de TV. |
| **Favoritos** | `test_favorite_movies.py` | Validação da lista de favoritos do usuário. |
| **Listas Pessoais** | `test_list.py` | Testes de endpoints de conta e criação de listas. |

## ⚙️ Como Rodar o Projeto Localmente

### Pré-requisitos
* Python instalado.
* Uma chave de API (Token) do TMDB.

### Passo a Passo

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
    Abra os arquivos de teste e insira seu `Bearer Token` na variável `TOKEN`.
    > **Nota de Segurança:** O Token foi removido deste repositório por questões de segurança.

4.  **Execute os testes:**
    Para rodar todos os testes de uma vez:
    ```bash
    pytest -v
    ```

## 📄 BDD (Behavior Driven Development)

Os cenários de teste também foram documentados em formato **Gherkin** no arquivo `Tcs-ErickVitor.feature`, facilitando o entendimento das regras de negócio.

---
**Autor:** Erick Vitor
Desenvolvido como parte de estudos em Automação de Testes.
