*** Settings ***
Resource    ../base.robot
Library     XML


*** Variables ***
${BOTÃO_OK}                     xpath=//android.widget.Button[@resource-id="android:id/button1"]

# TELA - CADASTRO DE PRODUTO
${BOTÃO_NOVO}                   xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/Button1"]
${NOME_CÓDIGO}                  xpath=//android.widget.TextView[@text="Código"]
${CAMPO_CÓDIGO}                 xpath=//android.widget.EditText[@resource-id="br.com.pztec.estoque:id/txt_codigo"]
${NOME_DESCRIÇÃO}               xpath=//android.widget.TextView[@text="Descrição"]
${CAMPO_DESCRIÇÃO}              xpath=//android.widget.EditText[@resource-id="br.com.pztec.estoque:id/txt_descricao"]
${NOME_UNIDADE}                 xpath=//android.widget.TextView[@text="Unidade"]
${CAMPO_UNIDADE}                xpath=//android.widget.EditText[@resource-id="br.com.pztec.estoque:id/txt_unidade"]
${NOME_QUANTIDADE}              xpath=//android.widget.TextView[@text="Quantidade"]
${CAMPO_QUANTIDADE}             xpath=//android.widget.EditText[@resource-id="br.com.pztec.estoque:id/txt_quantidade"]
${NOME_VAL.UNIT}                xpath=//android.widget.TextView[@text="Val.Unit."]
${CAMPO_VAL.UNIT}               xpath=//android.widget.EditText[@resource-id="br.com.pztec.estoque:id/txt_valunit"]
${NOME_LOTE}                    xpath=//android.widget.TextView[@text="Lote"]
${CAMPO_LOTE}                   xpath=//android.widget.EditText[@resource-id="br.com.pztec.estoque:id/txt_lote"]
${NOME_VALIDADE}                xpath=//android.widget.TextView[@text="Validade"]
${DATA_VALIDADE}                xpath=//android.widget.TextView[@resource-id="br.com.pztec.estoque:id/data"]
${BOTÃO_SALVAR}                 xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/btn_gravar_assunto"]
${INFORMAÇÕES_PRODUTO}          xpath=//android.widget.LinearLayout[@resource-id="br.com.pztec.estoque:id/linha_parte1"]
${TELA_NÃO_VALVOU}              xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout
${CAMPO_ADICIONAR}              xpath=//android.widget.EditText[@resource-id="br.com.pztec.estoque:id/txt_qtdentrada"]
${CAMPO_DIMINUI}                xpath=//android.widget.EditText[@resource-id="br.com.pztec.estoque:id/txt_qtdsaida"]
${CAMPO_MOTIVO}                 xpath=//android.widget.EditText[@resource-id="br.com.pztec.estoque:id/txt_motivo"]
${CAMPO_DOC/REF}                xpath=//android.widget.EditText[@resource-id="br.com.pztec.estoque:id/txt_referencia"]
${MENSAGEM_ESTOQUE_INSUFI}      xpath=//android.widget.TextView[@resource-id="android:id/message"]
${BOTÃO_SIM_CONFIRMA}           xpath=//android.widget.Button[@resource-id="android:id/button1"]
${TELA_NENHUM_PRODUTO}          xpath=//android.widget.ScrollView[@resource-id="br.com.pztec.estoque:id/scrollView1"]
${CAMPO_PESQUISAR}              xpath=//android.widget.AutoCompleteTextView[@resource-id="android:id/search_src_text"]
${DESC_PRODUTO}                 xpath=//android.widget.TextView[@resource-id="br.com.pztec.estoque:id/txt_descricao"]
${BOTÃO_BUSCAR}                 xpath=//android.widget.ImageView[@content-desc="Buscar"]

# DADOS EXIBIDOS APÓS CRIAR UM PRODUTO
${BOTÃO_DELETAR}                xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/deletar"]
${BOTÃO_EDITAR}                 xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/editar"]
${BOTÃO_ENTRADA}                xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/entrada"]
${BOTÃO_SAIDA}                  xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/saida"]

# MENU - GRUPO DE PRODUTOS
${BOTÃO_MENU}                   xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/Button3"]
${CAMPO_GRUPO_PRODUTOS}         xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/btn_grupo"]
${BOTÃO_ADICIONAR}              xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/addgrupo"]
${BOTÃO_PESQUISAR}              xpath=//android.widget.ImageView[@content-desc="Pesquisar"]
${TEXTO_GERAL}                  xpath=//android.widget.TextView[@resource-id="br.com.pztec.estoque:id/descricao"]
${BOTÃO_EDITAR}                 xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/editar"]
${BOTÃO_SALVAR_GERAL}           xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/btn_salvar"]

# MENU - RELATÓRIO
${CAMPO_RELATÓRIO}              xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/btn_relatorios"]
${INVENTÁRIO_ESTOQUE}           xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/inventario"]
${ENTRADAS_ESTOQUE}             xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/relentrada"]
${SAIDAS_ESTOQUE}               xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/relsaida"]
${BOTÃO_GERAR-PDF}              xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/btn_gerar"]
${DATA_INVENTÁRIO_GERADO}       xpath=//android.widget.TextView[@resource-id="br.com.pztec.estoque:id/datafile"]
${BOTÃO_VISUALIZAR_PDF}         xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/btn_abrir"]
${BOTÃO_ENVIAR_PDF}             xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/btn_email"]
${BOTÃO_DATA_INI}               xpath=//android.widget.TextView[@resource-id="br.com.pztec.estoque:id/data1"]
${BOTÃO_DATA_FIN}               xpath=//android.widget.TextView[@resource-id="br.com.pztec.estoque:id/data2"]
${ICONE_DRIVE}                  xpath=(//android.widget.ImageView[@resource-id="com.android.intentresolver:id/icon"])[1]
${ICONE_ONEDRIVE}               xpath=(//android.widget.ImageView[@resource-id="com.android.intentresolver:id/icon"])[2]
${ICONE_MICROSOFT}              xpath=(//android.widget.ImageView[@resource-id="com.android.intentresolver:id/icon"])[3]
${ICONE_SAMSUNG}                xpath=(//android.widget.ImageView[@resource-id="com.android.intentresolver:id/icon"])[4]

# MENU - BACKUP
${CAMPO_BACKUP}                 xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/btn_backup"]
${BOTÃO_GERAR_BACKUP}           xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/btn_gerar"]
${BOTÃO_ENVIAR}                 xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/btn_send"]
${TEXTO_OPERAÇÃO-CONCLUIDA}     xpath=//android.widget.TextView[@resource-id="android:id/alertTitle"]
${TEXTO_ENVIAR}                 xpath=//android.widget.TextView[@resource-id="android:id/message"]

# MENU - RESTORE
${CAMPO_RESTORE}                xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/btn_restore"]
${TEXTO_ATENÇÃO}                xpath=//android.widget.TextView[@resource-id="br.com.pztec.estoque:id/lbl_mensagem"]
${BOTÃO_SELECIONAR_ARQUIVO}     xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/btn_procurar"]
${BOTÃO_ESTOQUE}                xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="Estoque"]
${GRUPOS.CSV}                   xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="grupos.csv"]
${PRODUTOS_CSV}                 xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="produtos.csv"]
${CONFIRMA_RESTAURAÇÃO_SIM}     xpath=//android.widget.Button[@resource-id="android:id/button1"]
${MENSAGEM_OP.CONCLUIDA}        xpath=//android.widget.TextView[@resource-id="android:id/message"]

# MENU - EXPORTAR DADOS
${CAMPO_EXPORTAR}               xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/btn_exportar"]
${LABEL_ENVIAR1}                xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/btn_prod"]
${LABEL_ENVIAR2}                xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/btn_ent"]
${LABEL_ENVIAR3}                xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/btn_sai"]
${LABEL_ENVIAR4}                xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/btn_grupo"]

# MENU - IMPORTAR DADOS
${CAMPO_IMPORTAR}               xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/btn_importar"]
${BOTÃO_RESTAURAR-PRODUTOS}     xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/btn_produtos"]
${BOTÃO_RESTAURAR-ENTRADAS}     xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/btn_entradas"]
${BOTÃO_RESTAURAR-SAÍDAS}       xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/btn_saidas"]
${BOTÃO_GRUPO-PRODUTOS}         xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/btn_grupos"]

# MENU - AJUDA
${CAMPO_AJUDA}                  xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/btn_ajuda"]
${TEXTO_AJUDA}                  xpath=//android.webkit.WebView[@text="Ajuda"]


*** Keywords ***
Dado que o usuário acessou a tela inicial do aplicativo
    FOR    ${counter}    IN RANGE    1    15
        ${STATUS}=    Run Keyword And Return Status    Element Should Be Visible    ${BOTÃO_OK}
        IF    '${STATUS}'== ${true}
            Click Element    ${BOTÃO_OK}
        ELSE
            Log    Elemento não encontrado, siga.
        END
    END

Dado que o usuário acessou a tela de cadastro de produtos
    Dado que o usuário acessou a tela inicial do aplicativo
    Click Element    ${BOTÃO_NOVO}

Dado que o usuário acessou a tela de menu do aplicativo
    Dado que o usuário acessou a tela inicial do aplicativo
    Click Element    ${BOTÃO_MENU}

Dado que o usuário acessou a tela de menu do aplicativo e possui produtos registrados
    Criar vários produtos    teclado    5    10
    Criar vários produtos    mouse    3    50
    Criar vários produtos    microfone    20    80
    Click Element    ${BOTÃO_MENU}

Quando selecionar a função novo
    Click Element    ${BOTÃO_NOVO}

Quando preencher as informações obrigatórias
    Input Text    ${CAMPO_CÓDIGO}    131415
    Input Text    ${CAMPO_DESCRIÇÃO}    Produtos Barbosas
    Input Text    ${CAMPO_UNIDADE}    São Paulo
    Input Text    ${CAMPO_QUANTIDADE}    2
    Input Text    ${CAMPO_VAL.UNIT}    100
    Input Text    ${CAMPO_LOTE}    30

Quando preencher todas as informações exceto o campo Descrição
    Input Text    ${CAMPO_CÓDIGO}    131415
    Input Text    ${CAMPO_UNIDADE}    São Paulo
    Input Text    ${CAMPO_QUANTIDADE}    2
    Input Text    ${CAMPO_VAL.UNIT}    100
    Input Text    ${CAMPO_LOTE}    30

Quando preencher todas as informações exceto o campo Quantidade
    Input Text    ${CAMPO_CÓDIGO}    131415
    Input Text    ${CAMPO_DESCRIÇÃO}    Produtos Barbosas
    Input Text    ${CAMPO_UNIDADE}    São Paulo
    Input Text    ${CAMPO_VAL.UNIT}    100
    Input Text    ${CAMPO_LOTE}    30

Quando preencher todas as informações exceto o campo Valor unitário
    Input Text    ${CAMPO_CÓDIGO}    E.R.T.H
    Input Text    ${CAMPO_DESCRIÇÃO}    Produtos Barbosas
    Input Text    ${CAMPO_UNIDADE}    São Paulo
    Input Text    ${CAMPO_QUANTIDADE}    2
    Input Text    ${CAMPO_LOTE}    30

Quando acessar a função entrada e indicar o valor a ser acrescentado
    Click Element    ${BOTÃO_ENTRADA}
    Input Text    ${CAMPO_ADICIONAR}    10
    Input Text    ${CAMPO_MOTIVO}    Adicionando mais itens
    Input Text    ${CAMPO_DOC/REF}    BOX

Quando acessar a função saída e indicar o valor a ser decrementado
    Click Element    ${BOTÃO_SAIDA}
    Input Text    ${CAMPO_DIMINUI}    1
    Input Text    ${CAMPO_MOTIVO}    Removendo mais itens
    Input Text    ${CAMPO_DOC/REF}    BOX

Quando acessar a função saída e indicar um valor maior que o total disponível em estoque
    Click Element    ${BOTÃO_SAIDA}
    Input Text    ${CAMPO_DIMINUI}    50
    Input Text    ${CAMPO_MOTIVO}    Removendo mais itens
    Input Text    ${CAMPO_DOC/REF}    BOX

Quando acessar a função editar e alterar os dados do produto
    Click Element    ${BOTÃO_EDITAR}
    Clear Text    ${CAMPO_DESCRIÇÃO}
    Input Text    ${CAMPO_DESCRIÇÃO}    Os Barbosas são demais

Quando acessar a função deletar
    Click Element    ${BOTÃO_DELETAR}

Quando selecionar a função Gerar backup
    Click Element    ${BOTÃO_GERAR_BACKUP}

Quando selecionar o arquivo desejado
    Click Element    ${BOTÃO_SELECIONAR_ARQUIVO}

Quando acessar a função impotar dados
    Click Element    ${CAMPO_IMPORTAR}

Quando acessar a função relatórios
    Click Element    ${CAMPO_RELATÓRIO}

Quando selecionar a opção de restauração desejada
    Wait Until Element Is Visible    ${BOTÃO_RESTAURAR-PRODUTOS}
    Click Element    ${BOTÃO_RESTAURAR-PRODUTOS}

Quando selecionar a data inicial e final
    Wait Until Element Is Visible    ${BOTÃO_DATA_INI}
    Wait Until Element Is Visible    ${BOTÃO_DATA_FIN}
    Click Element    ${BOTÃO_DATA_INI}
    Click Element    ${BOTÃO_OK}
    Click Element    ${BOTÃO_DATA_FIN}
    Click Element    ${BOTÃO_OK}

Quando acessar a função visualizar pdf
    Então o arquivo será gerado em pdf com o filtro selecionado

Então terá acesso a tela de cadastro de produtos
    Element Should Be Visible    ${CAMPO_CÓDIGO}
    Element Should Be Visible    ${CAMPO_DESCRIÇÃO}
    Element Should Be Visible    ${CAMPO_UNIDADE}
    Element Should Be Visible    ${CAMPO_QUANTIDADE}
    Element Should Be Visible    ${CAMPO_VAL.UNIT}
    Element Should Be Visible    ${CAMPO_LOTE}

Então o produto será registrado com sucesso
    Element Should Be Visible    ${INFORMAÇÕES_PRODUTO}

Então o sistema exibirá um ícone vermelho com uma interrogação
    Element Should Be Visible    ${CAMPO_QUANTIDADE}

Então a quantidade indicada será acresentada ao estoque com sucesso
    Element Should Be Visible    ${INFORMAÇÕES_PRODUTO}

Então a quantidade indicada será decrementada do estoque com sucesso
    Element Should Be Visible    ${INFORMAÇÕES_PRODUTO}

Então o sistema exibirá o alerta com a mensagem "Estoque insuficiente"
    Element Should Contain Text    ${MENSAGEM_ESTOQUE_INSUFI}    Estoque insuficiente

Então as informações do produto serão alteradas com sucesso
    Element Should Be Visible    ${INFORMAÇÕES_PRODUTO}

Então o produto será deletado com sucesso
    Element Should Be Visible    ${TELA_NENHUM_PRODUTO}

Então o sistema exibirá o alerta com a mensagem "Operação concluída!"
    Element Should Be Visible    ${TEXTO_OPERAÇÃO-CONCLUIDA}

Então visualizará as 4 opções de importação do cenário
    Element Should Be Visible    ${BOTÃO_RESTAURAR-PRODUTOS}
    Element Should Be Visible    ${BOTÃO_RESTAURAR-ENTRADAS}
    Element Should Be Visible    ${BOTÃO_RESTAURAR-SAÍDAS}
    Element Should Be Visible    ${BOTÃO_GRUPO-PRODUTOS}

Então visualizará as 3 opções de relatórios do cenário
    Element Should Be Visible    ${INVENTÁRIO_ESTOQUE}
    Element Should Be Visible    ${ENTRADAS_ESTOQUE}
    Element Should Be Visible    ${SAIDAS_ESTOQUE}

Então o sistema exibirá o alerta com a mensagem "Operação concluída! 1 registros inseridos"
    Wait Until Element Is Visible    ${MENSAGEM_OP.CONCLUIDA}
    Element Should Not Contain Text    ${MENSAGEM_OP.CONCLUIDA}    3 registros inseridos.
    Click Element    ${BOTÃO_SIM_CONFIRMA}

Então o arquivo será gerado em pdf com o filtro selecionado
    Wait Until Element Is Visible    ${BOTÃO_VISUALIZAR_PDF}
    Click Element    ${BOTÃO_VISUALIZAR_PDF}

Então o sistema exibirá opções para abrir o arquivo e enviá-lo por e-mail
    Page Should Contain Element    ${BOTÃO_VISUALIZAR_PDF}
    Page Should Contain Element    ${BOTÃO_ENVIAR_PDF}

E exibirá uma botão para enviar o arquivo .bkp
    Click Element    ${BOTÃO_SIM_CONFIRMA}

E acessou a função restore
    Click Element    ${CAMPO_RESTORE}

E confirmar a restauração do arquivo
    Swipe By Percent    80    50    50    10
    Click Element    ${BOTÃO_ESTOQUE}
    Click Element    ${GRUPOS.CSV}
    Click Element    ${BOTÃO_SIM_CONFIRMA}

E acessar a salvar
    Click Element    ${BOTÃO_SALVAR}

E confirmar a exclusão
    Click Element    ${BOTÃO_SIM_CONFIRMA}

E acessou a função backup
    Click Element    ${CAMPO_BACKUP}

E o produto não será registrado com sucesso
    Element Should Be Visible    ${TELA_NÃO_VALVOU}

E possui um produto registrado
    Click Element    ${BOTÃO_NOVO}
    Input Text    ${CAMPO_CÓDIGO}    BOX2
    Input Text    ${CAMPO_DESCRIÇÃO}    Produtos Barbosas
    Input Text    ${CAMPO_UNIDADE}    São Paulo
    Input Text    ${CAMPO_QUANTIDADE}    10
    Input Text    ${CAMPO_VAL.UNIT}    100
    Input Text    ${CAMPO_LOTE}    30
    Click Element    ${BOTÃO_SALVAR}

E acessar a função salvar
    Click Element    ${BOTÃO_SALVAR_GERAL}

E acessou a função backup
    Click Element    ${CAMPO_BACKUP}

E salvar a operação
    Click Element    ${BOTÃO_SALVAR}

<<<<<<< HEAD
E acessou a opção inventário de estoque
    Click Element    ${CAMPO_RELATÓRIO}
    Click Element    ${INVENTÁRIO_ESTOQUE}

Quando concluir a operação sem filtrar o perídodo
    Page Should Not Contain Element    ${BOTÃO_DATA_INI}
    Page Should Not Contain Element    ${BOTÃO_DATA_FIN}
    Click Element    ${BOTÃO_GERAR-PDF}

Então o sistema não processará o relatório com sucesso
    Page Should Not Contain Element    ${BOTÃO_GERAR-PDF}

E gerou o relatório de inventário de estoque
    Click Element    ${CAMPO_RELATÓRIO}
    Click Element    ${INVENTÁRIO_ESTOQUE}

Quando acessar a função visualizar pdf
    Click Element    ${BOTÃO_VISUALIZAR_PDF}

Então o sistema exibirá o arquivo e a opção para enviar por e-mail estará disponível
    Element Should Be Visible    ${ICONE_DRIVE}
    Element Should Be Visible    ${ICONE_ONEDRIVE}
    Element Should Be Visible    ${ICONE_MICROSOFT}
    Element Should Be Visible    ${ICONE_SAMSUNG}
=======
E acessou a tela de impotar dados
    Click Element    ${CAMPO_IMPORTAR}

E selecionar a pasta estoque
    Swipe By Percent    90    50    50    10
    Swipe By Percent    60    50    50    10
    Wait Until Element Is Visible    ${BOTÃO_ESTOQUE}
    Click Element    ${BOTÃO_ESTOQUE}

E selecionar a pasta .csv
    Wait Until Element Is Visible    ${PRODUTOS_CSV}
    Click Element    ${PRODUTOS_CSV}

E confirmar a operação
    Wait Until Element Is Visible    ${BOTÃO_SIM_CONFIRMA}
    Click Element    ${BOTÃO_SIM_CONFIRMA}

E acessou a opção de relatório desejada
    Wait Until Element Is Visible    ${ENTRADAS_ESTOQUE}
    Click Element    ${ENTRADAS_ESTOQUE}

E selecionar a função gerar pdf
    Wait Until Element Is Visible    ${BOTÃO_GERAR-PDF}
    Click Element    ${BOTÃO_GERAR-PDF}

E gerou o relatório desejado
    Click Element    ${BOTÃO_MENU}
    Click Element    ${CAMPO_RELATÓRIO}
    Click Element    ${ENTRADAS_ESTOQUE}
    Wait Until Element Is Visible    ${BOTÃO_GERAR-PDF}
    Click Element    ${BOTÃO_GERAR-PDF}
>>>>>>> bdde13f6eee85024d548cb35ab35010d99d338e0
