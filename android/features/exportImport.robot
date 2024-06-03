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
    Dado que o usuário acessou a tela de menu do aplicativo e possui produtos registrados
    E acessou a tela de impotar dados
    Quando selecionar a opção de restauração desejada
    E selecionar a pasta estoque
    E selecionar a pasta .csv
    E confirmar a operação
    Então o sistema exibirá o alerta com a mensagem "Operação concluída! 1 registros inseridos"
