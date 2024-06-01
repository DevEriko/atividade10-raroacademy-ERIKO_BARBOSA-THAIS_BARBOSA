*** Settings ***
Resource            ../utils/config.robot

Test Setup          Abrir App
Test Teardown       Teardown


*** Test Cases ***
CT001 - Deve ser possível importar um arquivo .csv. com os registros de produtos, suas entradas, saídas e grupos de produtos
    Dado que o usuário acessou a tela de menu do aplicativo
    Quando acessar a função impotar dados
    Então visualizará as 4 opções de importação do cenário

CT002 - Deve ser possível gerar um arquivo .csv após o registro de produtos e todas informações
    Dado que o usuário acessou a tela de menu do aplicativo
    E acessou a impotar dados
    Quando selecionar a opção de restauração desejada
    E selecionar a pasta estoque
    E selecionar a pasta .csv
    E confirmar a operação
    Então o sistema exibirá o alerta com a mensagem "Operação concluída! 1 registros inseridos"

# CT003 - Deve ser possível visualizar todos os arquivos gerados pelo sistema na pasta Estoque

# CT004 - Deve ser possível visualizar todos os arquivos a serem importados para o sistema na pasta Estoque
