*** Settings ***
Library    Browser

*** Variables ***

*** Keywords ***

Go to Login Page
    New Browser    headless=False              browser=chromium
    New Page    http://localhost:3000

Fill Credentials
    [Arguments]    ${email}    ${password}

    Fill Text                      css=input[id="email"]        ${email}
    Fill Text                      css=input[id="password"]     ${password}

Submit Credentials
    Click                          css=button >> text=Entrar no sistema
                                

Field Type Should be Email
    Get Attribute    css=input[id="email"]    type    equal    email

Alert Text Should Be
    [Arguments]            ${type}            ${expected_text}

    Get Text    xpath=//input[@type="${type}"]//..//span   equal    ${expected_text}
