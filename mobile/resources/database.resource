*** Settings ***
Documentation            Gerenciando a massa de testes através do banco de dados

Library            DatabaseLibrary

*** Keywords ***
conect to postgres
    Connect To Database    psycopg2
    ...                    bmkpgfpr
    ...                    bmkpgfpr
    ...                    cyxYhKve94HesNKIxipYUXWSM4l9yqnP	
    ...                    babar.db.elephantsql.com
    ...                    5432
Select student WHERE email
    [Arguments]        ${email}

    ${query}           Set Variable
    ...                SELECT * FROM public.students WHERE email = '${email}'

   ${result}           Query            ${query}

   [Return]    ${result}[0]

Delete Student by EMAIL
    [Arguments]    ${email}

     ${query}        Set Variable
    ...             DELETE FROM public.students WHERE email = '${email}';
    Execute Sql String    ${query}
Delete enrolls by Email
    [Arguments]     ${email}

    ${user}        Select student WHERE email    ${email}

    ${query}        Set Variable
    ...             DELETE FROM public.enrollments WHERE student_id = '${user}[0]';
    Execute Sql String    ${query}

Reset student
    [Arguments]            ${email}
    
    conect to postgres
    Delete Student by EMAIL    ${email}
    Disconnect From Database