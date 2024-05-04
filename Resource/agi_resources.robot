*** Settings ***
# Lib para aplicação Web
Library  SeleniumLibrary
# Lib Python, criada para gerenciar, baixar e instalar, drivers do webdriver do browser
Library  Mycode.py

*** Keywords ***
Abrir Browser
    # variável criada para gerenciar, baixar e instalar, drivers dos browser
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
    Clickar na lupa para apresentação da caixa de texto de pesquisa
    #Faço o input do texto
    SeleniumLibrary.Input Text                             locator=(//input[contains(@name,'s')])[1]             text= teste
    Clickar e tirar print na página de retorno da pesquisa
 
Então faço a pesquisa por data
    Clickar na lupa para apresentação da caixa de texto de pesquisa
    #Faço o input do texto
    SeleniumLibrary.Input Text                             locator=(//input[contains(@name,'s')])[1]             text= 01/05/2024
    Clickar e tirar print na página de retorno da pesquisa

Então faço uma pesquisa com dados inválidos
    Clickar na lupa para apresentação da caixa de texto de pesquisa
    #Faço o input do texto
    SeleniumLibrary.Input Text                             locator=(//input[contains(@name,'s')])[1]             text= !@#
    Clickar e tirar print na página de retorno da pesquisa
    #Realizo a validação do texto da página que retornou da pesquisa
    SeleniumLibrary.wait until page contains               text=Lamentamos, mas nada foi encontrado para sua pesquisa, tente novamente com outras palavras.  timeout= 5
    SeleniumLibrary.Capture Page Screenshot

Então faço a validação de, opção de inscrição
    Clickar na lupa para apresentação da caixa de texto de pesquisa
    #Faço o input do texto
    SeleniumLibrary.Input Text                             locator=(//input[contains(@name,'s')])[1]             text= 01/05/2024
    #Valido o banner de incrição do blog na página que retornou da pesquisa
    Clickar e tirar print na página de retorno da pesquisa
    SeleniumLibrary.wait until page contains element       locator=//input[contains(@id,'subscription-3')]       timeout= 12
    SeleniumLibrary.Capture Page Screenshot

# keywords utilizadas somente no resources;
Clickar na lupa para apresentação da caixa de texto de pesquisa
    SeleniumLibrary.page should contain element            locator=//div[@data-section='section-header-search']
    SeleniumLibrary.Wait Until Page Contains Element       locator=//div[@data-section='section-header-search']  timeout= 12
    SeleniumLibrary.click element                          locator=//div[@data-section='section-header-search']
    SeleniumLibrary.Wait Until Page Contains Element       locator=(//input[contains(@name,'s')])[1]             timeout= 12
    SeleniumLibrary.wait until page contains element       locator=//input[contains(@id,'search-field')]         timeout= 12

Clickar e tirar print na página de retorno da pesquisa
    sleep  5
    SeleniumLibrary.click element                          locator=//div[@data-section='section-header-search']
    SeleniumLibrary.Capture Page Screenshot
 