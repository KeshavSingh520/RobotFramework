*** Settings ***
Library   SeleniumLibrary
Resource    Resources.robot


*** Variables ***
${inputUsername}    //input[@name='username']
${inputPassword}    //input[@name='password']
${btnPassword}    //button[@type='submit']
    
*** Keywords ***
Login to HRM
    Launch Browser
    ${webElementUsername}=    Get WebElement    ${inputUsername}
    Input Text    ${webElementUsername}    Admin
    ${webElementPassword}=    Get WebElement    ${inputPassword}
    Input Text    ${webElementPassword}   admin123
    ${webElementSubmit}=    Get WebElement    ${btnPassword}
    Click Element    ${webElementSubmit}
    ${title}=    Get Title