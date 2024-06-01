*** Settings ***
Resource    ../base.robot
Library     XML


*** Variables ***
${BOTÃO_PERFIL}             xpath=//android.widget.ScrollView/android.view.View[1]
${BOTAO_OCULTAR_SALDO}      xpath=//android.widget.ScrollView/android.widget.Button[1]
${BOTÃO__DÚVIDAS}           xpath=//android.widget.ScrollView/android.


*** Keywords ***
Dado que o usuário esta logado no app
    Wait Until Element Is Visible    ${BOTÃO_PERFIL}

Dado que o usuário acessou a tela inicial de sua conta
    Element Should Be Visible    ${BOTÃO_PERFIL}
    Page Should Contain Element    ${BOTÃO_PERFIL}
