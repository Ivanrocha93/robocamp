*** Settings ***

Documentation    suite de teste de pedido de ajuda

Resource        ../resources/base.resource

Test Setup      Start App

Test Teardown    Finish App


*** Test Cases ***
Deve poder solicitar ajuda

    ${admin}    Get Fixtures    admin
    ${ramon}    Get Fixtures    ramon

    Reset student    ${ramon}[student][email]

    ${token}             Get Service Token       ${admin}
    ${student_id}        POST New Student        ${token}        ${ramon}[student]
    POST New Enroll      ${token}                ${student_id}

    Login With Student Id       ${student_id}
    Confirm Pop-up
    Go To Help Order 
    Submit Help Order           ${ramon}[help]   
    Wait Until Page Contains    Recebemos a sua dúvida. Agora é só aguardar até 24 horas para receber o nosso feedback.
    Click Text    OK    