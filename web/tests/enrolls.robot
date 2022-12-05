*** Settings ***
Documentation    Suite de testes de matricula - Administrador uma vez logado consegue matricular alunos na academia

Library    Browser

Resource    ../resources/base.resource


    

*** Test Cases ***
Deve matricular um aluno
    ${admin}    Get fixtures    admin
    

    ${student}    Get fixtures    student

    Reset student enroll    ${student}[email]

    Do Login       ${admin}
    Go to Enrolls
    Go to Enrolls Forms
    Select Studant    ${student}[name]
    Select Plan    ${student}[enroll][plan]
    Fill Start Date    2022-11-11   
    submit enrolls Forms
    Verify Toaster    Matrícula cadastrada com sucesso
   
    Sleep    1
    ##${temp}        Get Page Source
    ##Log    ${temp}
    
