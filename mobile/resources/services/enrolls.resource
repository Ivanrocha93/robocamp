*** Settings ***

Documentation    consumindo a rota enrollments da api rest

Library          RequestsLibrary
Library          DateTime
Resource         ../base.resource

*** Keywords ***

POST New Enroll
    [Arguments]    ${token}    ${student_id}

    ${headers}    Create Dictionary    Authorization=${token}

    ${start_date}    Get Current Date

    ${enroll}        Create Dictionary
    ...              start_date=${start_date}
    ...              plan_id=1
    ...              student_id=${student_id}


    
    ${response}        POST     http://localhost:3333/enrollments
    ...                         json=${enroll}
    ...                         headers=${headers}
    ...                         expected_status=201
