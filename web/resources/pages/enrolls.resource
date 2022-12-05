*** Settings ***

Documentation    Keywords que representam a pagina de matricula

Library    Browser
Library    libs/DateTricks.py

*** Keywords ***
Go to Enrolls
    Click    css=a[href="/matriculas"]

Go to Enrolls Forms
    click       css=a[href="/matriculas/new"]

Select Studant
    [Arguments]        ${name}
    Fill Text    xpath=//div[contains(text(),"nome do aluno")]//..//input    ${name}
    Click        css=div[class$=option] >> text=${name}

Select Plan
    [Arguments]        ${Plan}
    Click        xpath=//label[text()="PLANO"]//..//div[contains(text(), "Selecione")]
    Click        css=div[class$=option] >> text=${Plan}

Fill Start Date
    [Arguments]        ${Date}
    Fill Text    css=input[name="start_date"]   ${Date}

Fill Start Date 2
    Focus    css=input[name="start_date"]

    ${start_date}    Get Start Date

    FOR    ${number}    IN    @{start_date}
        Keyboard Key    press    ${number}

    END
       

submit enrolls Forms
    
    Click    css=button >> text=Salvar
    