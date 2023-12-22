*** Settings ***
Library   SeleniumLibrary
Variables   ../pageobjects/LoginHRM.py



*** Keywords ***
Login to HRM
    ${webElementUsername}=    Get WebElement    ${inputUsername}
    Input Text    ${webElementUsername}    Admin
    ${webElementPassword}=    Get WebElement    ${inputPassword}
    Input Text    ${webElementPassword}   admin123
    ${webElementSubmit}=    Get WebElement    ${btnPassword}
    Click Element    ${webElementSubmit}
    ${title}=    Get Title
    Return From Keyword    ${title}