*** Settings ***
Documentation    Suite de testes de autenticação

Library    Browser

Resource    ..//resources/base.resource
    

*** Test Cases ***

Login do Administrador    
    Go to Login Page
    Fill Credentials    admin@smartbit.com    qacademy      
    Submit Credentials
    User Should Be Logged In    Admin

Email não cadastrado
    Go to Login Page
    Fill Credentials    404@smartbit.com    qacademy   
    Submit Credentials
    Verify Toaster    Suas credenciais são inválidas, por favor tente novamente!

Senha inválida
    Go to Login Page
    Fill Credentials   admin@smartbit.com    qacademy123    
    Submit Credentials

Email no formato incorreto
    Go to Login Page
    Fill Credentials    @com.br    abc123
    Submit Credentials
    Field Type Should be Email

Senha em branco
    Go to Login Page
    Fill Credentials    admin@smartbit.com   ${EMPTY} 
    Submit Credentials
    Alert Text Should Be    password    A senha é obrigatória

Email em branco
    Go to Login Page
    Fill Credentials    ${EMPTY}    abc123
    Submit Credentials
    Alert Text Should Be     email   O e-mail é obrigatório

Email e senha são obrigatórios
    Go to Login Page
    Fill Credentials    ${EMPTY}    ${EMPTY}
    Submit Credentials
    Alert Text Should Be    password    A senha é obrigatória
    Alert Text Should Be    email   O e-mail é obrigatório

    
