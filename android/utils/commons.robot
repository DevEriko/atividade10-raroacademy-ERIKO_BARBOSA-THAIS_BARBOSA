*** Settings ***
Resource    ../base.robot


*** Keywords ***
Verifica se o contentDesc contains text
    [Arguments]    ${elemento}    ${validarText}
    ${contentDesc}=    AppiumLibrary.Get Element Attribute    ${elemento}    content-desc
    Should Contain    ${contentDesc}    ${validarText}

Espera o elemento e faz o Click
    [Arguments]    ${elemento}
    Wait Until Element Is Visible    ${elemento}
    Click Element    ${elemento}

Verifica se o contentDesc não contains text
    [Arguments]    ${elemento}    ${validarText}
    ${contentDesc}=    AppiumLibrary.Get Element Attribute    ${elemento}    content-desc
    Should Not Contain    ${contentDesc}    ${validarText}

Criar vários produtos
    [Arguments]    ${descri}    ${qtd}    ${valunit}
    FOR    ${counter}    IN RANGE    1    15
        ${STATUS}=    Run Keyword And Return Status    Element Should Be Visible    ${BOTÃO_OK}
        IF    '${STATUS}'== ${true}
            Click Element    ${BOTÃO_OK}
        ELSE
            Log    Elemento não encontrado, siga.
        END
    END
    Wait Until Element Is Visible    br.com.pztec.estoque:id/Button1
    Click Element    br.com.pztec.estoque:id/Button1
    Wait Until Element Is Visible    br.com.pztec.estoque:id/txt_descricao
    Input Text    br.com.pztec.estoque:id/txt_descricao    ${descri}
    Input Text    br.com.pztec.estoque:id/txt_quantidade    ${qtd}
    Input Text    br.com.pztec.estoque:id/txt_valunit    ${valunit}
    Click Element    br.com.pztec.estoque:id/btn_gravar_assunto
    Wait Until Element Is Visible    android:id/search_button
    Element Should Contain Text    //android.widget.TextView[@text='${descri}']    ${descri}
