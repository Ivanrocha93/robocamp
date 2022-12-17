*** Settings ***
Documentation    representação do componente de notificação

Library    Browser

*** Variables ***

${class_notification}        @class="sc-jzJRlG imzoGf"

*** Keywords ***

Open Notification
    Click    xpath=(//aside//button)[1]

Notification Should Be
    [Arguments]    ${text}

    ${element}    Set Variable    xpath=//div[${class_notification}]//p[text()="${text}"]

    Wait For Elements State    ${element}        visible    timeout=2

    Get Text    ${element}    equal     ${text}

Send Help Answer
    [Arguments]    ${question}        ${answer}

    Click    xpath=//div[${class_notification}]//p[text()="${question}"]

    Fill Text    textarea[id="answer"]    ${answer}

    Click    css=button >> "Enviar resposta"

    
