*** Settings ***
Documentation            Suite de testes de login

Library            AppiumLibrary
Library            JSONLibrary

Resource           ../resources/screens/login.resource
Resource           ../resources/screens/components/pop_up.resource
Resource           ../resources/screens/components/footer.resource
Resource           ../resources/screens/help.resource

Resource           ../resources/database.resource

Resource           ../resources/services/sessions.resource
Resource           ../resources/services/students.resource
Resource           ../resources/services/enrolls.resource


*** Keywords ***

Start App
    Open Application	http://localhost:4723/wd/hub	
    ...                 alias=Smartbit	
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Android Simulator	
    ...                 app=${EXECDIR}/app/smartbit-beta.apk
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true

    Wait Until Page Contains    Informe seu código de acesso

Finish App
    Capture Page Screenshot
    Close Application

#helpers
Get Fixtures
    [Arguments]            ${fixture_file}

    ${fixture}        Load Json From File    
    ...               ${EXECDIR}/resources/fixtures/${fixture_file}.json
    ...               encoding=UTF-8

    [Return]          ${fixture}
    