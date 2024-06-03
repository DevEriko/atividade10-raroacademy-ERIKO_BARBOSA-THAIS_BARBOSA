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
