*** Settings ***
Resource            ../utils/config.robot

Test Setup          Abrir App
Test Teardown       Teardown


*** Test Cases ***
CT001 - Deve ser possível realizar um backup de todas as informações
    Dado que o usuário acessou a tela de menu do aplicativo
    E acessou a função backup
    Quando selecionar a função Gerar backup
    Então o sistema exibirá o alerta com a mensagem "Operação concluída!"
    E exibirá uma botão para enviar o arquivo .bkp

CT002 - Deve ser possível realizar um restore após o backup
    Dado que o usuário acessou a tela de menu do aplicativo
    E acessou a função restore
    Quando selecionar o arquivo desejado
    E confirmar a restauração do arquivo
    Então o sistema exibirá o alerta com a mensagem "Operação concluída!"
