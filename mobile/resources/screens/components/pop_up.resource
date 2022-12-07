*** Settings ***
Documentation        componente que representa o pop-up

Library            AppiumLibrary

*** Variables ***

${ok_button}        id=android:id/button1

*** Keywords ***
Confirm Pop-up
    
    Wait Until Element Is Visible        ${ok_button} 
    Click Element                        ${ok_button} 