# 🎬 Automação de Testes de API - TMDB

Este repositório contém um projeto de estudos focado em **Automação de Testes de Backend** utilizando a API do [The Movie Database (TMDB)](https://www.themoviedb.org/).

O objetivo é validar a integridade das requisições HTTP, garantindo que a autenticação e o retorno de dados estejam funcionando conforme o esperado.

## 🚀 Tecnologias Utilizadas

* **Python 3.12**: Linguagem base do projeto.
* **Pytest**: Framework para execução e asserção dos testes.
* **Requests**: Biblioteca para realizar as chamadas HTTP (GET).
* **Git/GitHub**: Controle de versão.

## 🧪 Cenários de Teste Cobertos

O script valida os seguintes comportamentos da API:

| Tipo de Teste | Verbo HTTP | Descrição | Status Esperado |
| :--- | :---: | :--- | :---: |
| **Health Check** | `GET` | Valida se o Token de autenticação (Bearer) é aceito pela API. | **200 OK** |
| **Contrato de Dados** | `GET` | Consulta um filme específico (ID 550 - Clube da Luta) e valida se o título retornado está correto. | **200 OK** |

## ⚙️ Como Rodar o Projeto Localmente

### 1. Clone o repositório
```bash
git clone [https://github.com/ErickTempest1/Pytest.git](https://github.com/ErickTempest1/Pytest.git)
cd Pytest
