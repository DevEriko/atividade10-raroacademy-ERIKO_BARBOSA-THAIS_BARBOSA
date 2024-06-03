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

Cria produtos com template
    [Arguments]    ${codigo}    ${descricao}    ${unidade}    ${quantidade}    ${valor}    ${lote}=
    Wait Until Element Is Visible    ${BOTÃO_NOVO}
    Click Element    ${BOTÃO_NOVO}
    Input Text    ${CAMPO_CÓDIGO}    ${codigo}
    Input Text    ${CAMPO_DESCRIÇÃO}    ${descricao}
    Input Text    ${CAMPO_UNIDADE}    ${unidade}
    Input Text    ${CAMPO_QUANTIDADE}    ${quantidade}
    Swipe By Percent    80    50    50    10
    Input Text    ${CAMPO_VAL.UNIT}    ${valor}
    Input Text    ${CAMPO_LOTE}    ${lote}
    Click Element    ${BOTÃO_SALVAR}
    Wait Until Element Is Visible    ${BOTÃO_BUSCAR}
    Element Should Contain Text    //android.widget.TextView[@text='${descricao}']    ${descricao}
