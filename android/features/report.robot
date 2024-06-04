*** Settings ***
Resource            ../utils/config.robot

Test Setup          Abrir App
Test Teardown       Teardown


*** Test Cases ***
CT001 - Deve ser possível visualizar o inventário de estoque, as entradas e saídas de produtos via relatorios
    Dado que o usuário acessou a tela de menu do aplicativo
    Quando acessar a função relatórios
    Então visualizará as 3 opções de relatórios do cenário

CT002 - Deve ser possível filtrar as entradas e saídas de produtos por um periodo de tempo e o resultado deve ser exibido em pdf
    Dado que o usuário acessou a tela de relatórios
    E acessou a opção de relatório desejada
    Quando selecionar a data inicial e final
    E selecionar a função gerar pdf
    Então o arquivo será gerado em pdf com o filtro selecionado

CT003 - Deve ser possível visualizar o documento gerado em pdf
    Dado que o usuário acessou a tela de relatórios
    E gerou o relatório desejado
    Quando acessar a função visualizar pdf
    Então o sistema exibirá opções para abrir o arquivo e enviá-lo por e-mail

CT004 - Não deve ser possível emitir um relatório sem informar um período
    Dado que o usuário acessou a tela de relatórios
    E acessou a opção de relatório desejada
    Quando não selecionar a data inicial e final e gerar o PDF
    Então o sistema exibirá o alerta com a mensagem: "Por favor selecione um período de datas"

CT005 - Deve ser possível obter o inventário de estoque sem informar um filtro por período
    Dado que o usuário acessou a tela de relatórios
    E acessou a opção inventário de estoque
    Quando concluir a operação sem filtrar o perídodo
    Então o sistema exibirá opções para abrir o arquivo e enviá-lo por e-mail

CT006 - Deve ser possível visualizar o inventário de estoque e enviá-lo por e-mail
    Dado que o usuário acessou a tela de relatórios
    E gerou o relatório de inventário de estoque
    Quando acessar a função visualizar pdf
    Então o sistema exibirá opções para abrir o arquivo e enviá-lo por e-mail
