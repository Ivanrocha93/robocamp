*** Settings ***

Documentation    Verifica se a aplicação está online

Library          Browser

*** Test Cases ***
Portal admin deve estar online
    New Browser    headless=False    browser=chromium

    New Page    http://localhost:3000
    Get Text    h1    contains    Painel do Administrador
