*** Settings ***
Resource            ../utils/config.robot

Test Setup          Abrir App
Test Teardown       Teardown


*** Test Cases ***
CT001 - Deve ser possível acessar a funcionalidade cadastro de produtos
    Dado que o usuário acessou a tela inicial do aplicativo
    Quando selecionar a função novo
    Então terá acesso a tela de cadastro de produtos

CT002 - Deve ser possível cadastrar um produto preenchendo os campos obrigatórios
    Dado que o usuário acessou a tela de cadastro de produtos
    Quando preencher as informações obrigatórias
    E salvar a operação
    Então o produto será registrado com sucesso

CT003 - Não deve ser possível cadastrar um produto sem preencher a Descriçao
    Dado que o usuário acessou a tela de cadastro de produtos
    Quando preencher todas as informações exceto o campo Descrição
    E salvar a operação
    Então o sistema exibirá um ícone vermelho com uma interrogação
    E o produto não será registrado com sucesso

CT004 - Não deve ser possível cadastrar um produto sem preencher a Quantidade
    Dado que o usuário acessou a tela de cadastro de produtos
    Quando preencher todas as informações exceto o campo Quantidade
    E salvar a operação
    Então o sistema exibirá um ícone vermelho com uma interrogação
    E o produto não será registrado com sucesso

CT005 - Não deve ser possível cadastrar um produto sem preencher o Valor unitário
    Dado que o usuário acessou a tela de cadastro de produtos
    Quando preencher todas as informações exceto o campo Valor unitário
    E salvar a operação
    Então o sistema exibirá um ícone vermelho com uma interrogação
    E o produto não será registrado com sucesso

CT006 - Deve ser possível acrescentar a quantidade de produto
    Dado que o usuário acessou a tela inicial do aplicativo
    E possui um produto registrado
    Quando acessar a função entrada e indicar o valor a ser acrescentado
    E acessar a função salvar
    Então a quantidade indicada será acresentada ao estoque com sucesso

CT007 - Deve ser possível decrementar a quantidade de produto
    Dado que o usuário acessou a tela inicial do aplicativo
    E possui um produto registrado
    Quando acessar a função saída e indicar o valor a ser decrementado
    E acessar a função salvar
    Então a quantidade indicada será decrementada do estoque com sucesso

CT008 - Não deve ser possível deixar o estoque do produto negativo
    Dado que o usuário acessou a tela inicial do aplicativo
    E possui um produto registrado
    Quando acessar a função saída e indicar um valor maior que o total disponível em estoque
    E acessar a função salvar
    Então o sistema exibirá o alerta com a mensagem "Estoque insuficiente"

CT009 - Deve ser possível editar as informações do produto
    Dado que o usuário acessou a tela inicial do aplicativo
    E possui um produto registrado
    Quando acessar a função editar e alterar os dados do produto
    E acessar a salvar
    Então as informações do produto serão alteradas com sucesso

CT010 - Deve ser possível excluir o produto
    Dado que o usuário acessou a tela inicial do aplicativo
    E possui um produto registrado
    Quando acessar a função deletar
    E confirmar a exclusão
    Então o produto será deletado com sucesso

CT011- Deve ser possível criar mais de 1 produto
    [Template]    Criar vários produtos
    Telcado 5    20    3700
    Mouse    20    3700
    Microfone    15    2300
