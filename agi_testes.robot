*** Settings ***
Library         SeleniumLibrary
Library         Mycode.py

Resource        Resource/agi_resources.robot
Test Setup      Abrir Blog
Test Teardown   Fechar Blog


*** Test Cases ***
Abrir blog do Agi
  Dado que acessei o Blog da Agi
  Quando o Blog for apresentado
  Então será validada a página do Blog
  
Validar o campo pesquisa lado direito
  Dado que acessei o Blog da Agi
  Quando o Blog for apresentado
  Então válido o botão de pesquisa

Validar pesquisa por data
  Dado que acessei o Blog da Agi
  Quando o Blog for apresentado
  Então realizo uma pesquisa por data

Validar pesquisa com dados inválidos
  Dado que acessei o Blog da Agi
  Quando o Blog for apresentado
  Então realizo uma pesquisa com dados inválidos

Então realizo a validação de opção de inscrição
  Dado que acessei o Blog da Agi
  Quando o Blog for apresentado
  Então realizo a validação de opção de inscrição