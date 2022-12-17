*** Settings ***
Documentation        Suite de testes de recebimento de ajuda

Resource    ..//resources/base.resource

Test Teardown    Sleep    2

*** Test Cases ***

Deve receber uma notificação de um pedido de ajuda

    ${joao}        Get fixtures            joao
    ${admin}       Get fixtures            admin
    ${token}       Get Service Token       ${admin}

    Reset student    ${joao}[student][email]

    ${student_id}    POST New Student          ${token}                ${joao}[student]
    POST Question    ${student_id}             ${joao}[question]

    Do Login    ${admin}
    Open Notification
    Notification Should Be    ${joao}[question]
Deve responder o pedido de ajuda
    
    ${mariana}         Get fixtures            mariana
    ${admin}           Get fixtures            admin
    ${token}           Get Service Token       ${admin}

    Reset student    ${mariana}[student][email]

    ${student_id}    POST New Student            ${token}                ${mariana}[student]
    POST Question    ${student_id}               ${mariana}[question]

    Do Login                  ${admin}

    Open Notification
    Notification Should Be    ${mariana}[question]

    Send Help answer      ${mariana}[question]    ${mariana}[answer]
    Verify Toaster        Resposta enviada com sucesso