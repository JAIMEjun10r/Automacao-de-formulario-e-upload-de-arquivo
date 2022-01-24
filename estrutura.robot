*** Settings ***
Documentation       Testando apenas
Resource            form.robot


*** Test Cases ***
Cenário de Teste 01: preenchendo formulários
    Dado que o cliente abre o navegador para acessar o site
    E maximiza a tela
    E preenche os campos
    Então faz um upload de um arquivo