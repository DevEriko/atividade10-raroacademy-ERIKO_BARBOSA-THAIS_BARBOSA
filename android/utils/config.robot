*** Settings ***
Resource    ../base.robot


*** Variables ***
${ANDROID_AUTOMATION_NAME}      UIAutomator2
${ANDROID_PLATFORM_VERSION}     10
${APP_PACKAGE}                  br.com.pztec.estoque
${APP_ACTIVITY}                 .Inicio
${ANDROID_PLATFORM_NAME}        Android
${PERMISSÃO}                    true


*** Keywords ***
Abrir App
    Open Application
    ...    http://127.0.0.1:4723
    ...    automationName=${ANDROID_AUTOMATION_NAME}
    ...    platformName=${ANDROID_PLATFORM_NAME}
    ...    platformVersion=${ANDROID_PLATFORM_VERSION}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    ...    autoGrantPermissions=${PERMISSÃO}

Teardown
    Run Keyword If Test Failed    Capture Page Screenshot
    Close All Applications
