*** Settings ***
Documentation    Suite de testes de matricula - Administrador uma vez logado consegue matricular alunos na academia

Library    Browser

Resource    ..//resources/base.resource
Resource    ../resources/pages/enrolls.resource
    

*** Test Cases ***
Deve matricular um aluno
    ${admin}    Create Dictionary
    ...         name=Admin
    ...         email=admin@smartbit.com
    ...         password=qacademy

    Do Login       ${admin}

    Go to Enrolls
    Go to Enrolls Forms
    Select Studant    Ivan Não Mexer
    Select Plan    Smart
    Fill Start Date 2   
    
    
    

   
    Sleep    10
    ##${temp}        Get Page Source
    ##Log    ${temp}
    
