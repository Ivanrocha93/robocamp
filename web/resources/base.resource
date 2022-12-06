*** Settings ***


Library    Browser
Library    JSONLibrary

Resource    ../resources/pages/login.resource
Resource    ../resources/components/navbar.resource
Resource    ../resources/components/toast.resource
Resource    ../resources/pages/enrolls.resource
Resource    ../resources/database.resource
Resource    ../resources/services/sessions.resource
Resource    ../resources/services/students.resource


*** Keywords ***

Do Login
    [Arguments]    ${user}    
    Go to Login Page
    Fill Credentials    ${user}[email]   ${user}[password]      
    Submit Credentials
    User Should Be Logged In     ${user}[name]

Get fixtures
    [Arguments]    ${fixture_file}
    
    ${fixtures}    Load Json From File
    ...    ${EXECDIR}/resources/fixtures/${fixture_file}.json
    ...     encoding=UTF-8

    [Return]    ${fixtures}