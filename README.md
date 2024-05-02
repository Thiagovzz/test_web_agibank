Prezados, 

Segue abaixo as premissas para a realização do teste.

------------------------------------------------------------------------------------------------------------------------

Proposta para a realização do teste:

        Acesse o blog do Agi: https://blogdoagi.com.br/
        Considerando a pesquisa de artigos do blog (lupa no canto superior esquerdo):  **( A lupa está no canto superior direito. ) 
         
        * Levantar ao menos dois dos cenários mais relevantes para a automação dos testes.
        * Escolha a linguagem de programação de sua preferência para automatizar estes cenários.
        
------------------------------------------------------------------------------------------------------------------------

Técnologia escolhida para a realização do teste.

        Optei pela linguagem Robotframework, pois tenho um certo domínio na linguagem, a mesma têm uma curva de aprendizagem
        curta e com resultados satisfátorios, tornando simples o seu desenvolvimento podendo envolver os demais menbros do time.
        Para saber mais sobre o robotframework: https://robotframework.org/

-----------------------------------------------------------------------------------------------------------------------

Design Pattern.

        Utilizei o padrão mais difuso para testes web e que utilizo Page Objects, onde faço o mapeamento dos  objetos da 
        página e posso reutilizar os mesmos em N cenários similares, isolado do código do teste.

-----------------------------------------------------------------------------------------------------------------------

Configurações para a realização do teste.

        O teste foi realizado pelo robotframework, para configuração do ambiente e execução do mesmo, seguir os passos abaixo:
        
        obs: Sistema Operacional Linux.
        
        1 - instalação do python 3, link : https://docs.python-guide.org/starting/install3/linux/
        
        2 - instalção do pip3: https://linuxgenie.net/how-to-install-pip-on-ubuntu-22-04/
        
        3 - O teste foi realizado no browser Chrome, logo a versão do chrome e do chromedriver devem ser a mesma, para baixar o chromedriver: https://  chromedriver.chromium.org/downloads
        
        3.1 - o chromedriver deve estar na pasta do projeto para o funcionamento correto.
        
        4 - instalação do robot: https://robotframework.org/ ( contém tbm as instruções para instalação das libs ex: Selenium ).

-----------------------------------------------------------------------------------------------------------------------

WebDriver Manager

        Utilizei um Lib Python, para gerenciar o webdriver da máquina, assim garantindo que se não estiver na ultima versão
        ou com incompatibilidade o mesmo fará a instalação da versão correta.
        
-----------------------------------------------------------------------------------------------------------------------

Executando teste localmente.

        1 - Abrir o  terminal, no diretório onde está o arquivo com os cenários de testes, .robot .
        Ex: '/home/thiago/teste_agibank/agi_testes.robot'

        2 - Executar como o exemplo abaixo.
        Ex: teste_agibank$ robot agi_testes.robot

        Após a execução será gerado três arquivos: Output, Log, Report.
        Os links podem ser copiados, para visualizar basta abrir em um navegador para ver de forma detalhada o resultado do teste.
-----------------------------------------------------------------------------------------------------------------------

Executando teste por pipeline GitHub Actions.

-----------------------------------------------------------------------------------------------------------------------

Qualquer duvida estou a disposição.

Att Thiago

