*** Settings ***

Documentation    representação do componente barra de navegação

Library    Browser

*** Keywords ***

User Should Be Logged In
    [Arguments]                    ${user_name}
    ${Logged_User}                 Set Variable        css=aside strong    
    Wait For Elements State        ${Logged_User}    visible    10   
    Get Text                       ${Logged_User}    equal    ${user_name}