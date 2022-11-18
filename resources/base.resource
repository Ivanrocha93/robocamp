*** Settings ***


Library    Browser

Resource    ../resources/pages/login.resource
Resource    ../resources/components/navbar.resource
Resource    ../resources/components/toast.resource

*** Keywords ***

Do Login
    [Arguments]    ${user}    
    Go to Login Page
    Fill Credentials    ${user}[email]   ${user}[password]      
    Submit Credentials
    User Should Be Logged In     ${user}[name]

    