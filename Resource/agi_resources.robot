*** Settings ***
# Lib para aplicação Web
Library  SeleniumLibrary
# Lib Python, para gerenciar o webdriver
Library  Mycode.py

*** Keywords ***
Abrir Browser
    # variáveel criada para gerenciar, baixar e instalar, drivers dos browser
    ${driver_path}=                                          Mycode.Get Driver Path With Browser        chrome

    # Abri o Browser Chrome apontando para o link da AGI executando o chromedriver da variável driver-path
    Open Browser                                             https://agibank.com.br/                    chrome       executable_path=${driver_path}
    
    # Maximiza o browse a janela do Browser
    SeleniumLibrary.Maximize Browser Window

    # Tira um print do estado da tela
    SeleniumLibrary.Capture Page Screenshot

Abrir Blog
    # Estou chamando a keyword já existente porém com outro nome para ser apresentada no cenário de teste
    Abrir Browser

Fechar Blog
    # Tira um print do estado da tela
    SeleniumLibrary.Capture Page Screenshot
    # Fecha o Browser
    SeleniumLibrary.Close Browser

Dado que acessei o Blog da Agi
    # O Browser é direcionado para o Blog do Agi
    Go to                                                   https://blogdoagi.com.br/
    # Tira um print do estado da tela
    SeleniumLibrary.Capture Page Screenshot

Quando o Blog for apresentado
    # A tela de conter o texto Blog
    SeleniumLibrary.wait until page contains                text=Blog  timeout=5
    # Tira um print do estado da tela
    SeleniumLibrary.Capture Page Screenshot

Então será validada a página do Blog
    # Validação do título da página que foi inspecionada
    SeleniumLibrary.title should be                         title=Blog do Agi | Tudo sobre empréstimo e educação financeira
    # Aguarda 3 segundos
    sleep  3
    # Tira um print do estado da tela;
    SeleniumLibrary.Capture Page Screenshot

Então válido o botão de pesquisa
    SeleniumLibrary.Wait Until Page Contains Element       locator=//div[@data-section='section-header-search']  timeout= 12
    SeleniumLibrary.click element                          locator=//div[@data-section='section-header-search']
    SeleniumLibrary.Wait Until Page Contains Element       locator=(//input[contains(@name,'s')])[1]             timeout= 12
    SeleniumLibrary.Input Text                             locator=(//input[contains(@name,'s')])[1]             text=teste
    SeleniumLibrary.click element                          locator=//div[@data-section='section-header-search']
    SeleniumLibrary.Capture Page Screenshot
Então realizo uma pesquisa por data
    SeleniumLibrary.Wait Until Page Contains Element       locator=//div[@data-section='section-header-search']  timeout= 12
    SeleniumLibrary.click element                          locator=//div[@data-section='section-header-search']
    SeleniumLibrary.Wait Until Page Contains Element       locator=(//input[contains(@name,'s')])[1]             timeout= 12
    SeleniumLibrary.Input Text                             locator=(//input[contains(@name,'s')])[1]             text=01/05/2024
    sleep  8
    SeleniumLibrary.click element                          locator=//div[@data-section='section-header-search']
    SeleniumLibrary.Capture Page Screenshot
Então realizo uma pesquisa com dados inválidos
    SeleniumLibrary.Wait Until Page Contains Element       locator=//div[@data-section='section-header-search']  timeout= 12
    SeleniumLibrary.click element                          locator=//div[@data-section='section-header-search']
    SeleniumLibrary.Wait Until Page Contains Element       locator=(//input[contains(@name,'s')])[1]             timeout= 12
    SeleniumLibrary.Input Text                             locator=(//input[contains(@name,'s')])[1]             text=!@#
    SeleniumLibrary.Wait Until Page Contains Element       locator=(//input[contains(@name,'s')])[1]             timeout= 12
    SeleniumLibrary.click element                          locator=//div[@data-section='section-header-search']
    SeleniumLibrary.Capture Page Screenshot
    SeleniumLibrary.wait until page contains               text=Lamentamos, mas nada foi encontrado para sua pesquisa, tente novamente com outras palavras.  timeout= 5
    SeleniumLibrary.Capture Page Screenshot
Então realizo a validação de opção de inscrição
    SeleniumLibrary.Wait Until Page Contains Element       locator=//div[@data-section='section-header-search']  timeout= 12
    SeleniumLibrary.click element                          locator=//div[@data-section='section-header-search']
    SeleniumLibrary.Wait Until Page Contains Element       locator=(//input[contains(@name,'s')])[1]             timeout= 12
    sleep  8
    SeleniumLibrary.Input Text                             locator=(//input[contains(@name,'s')])[1]             text=01/05/2024
    sleep  8
    SeleniumLibrary.click element                          locator=//div[@data-section='section-header-search']
    SeleniumLibrary.Capture Page Screenshot
    SeleniumLibrary.wait until page contains element       locator=//aside[contains(@id,'blog_subscription-3')]  timeout= 12
    SeleniumLibrary.Capture Page Screenshot
