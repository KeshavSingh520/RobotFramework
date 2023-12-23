*** Settings ***
Library  SeleniumLibrary
Resource    ../resources/TokenManager.robot
Variables  ../resources/config.py

*** Variables ***
${appTitle}    OrangeHRM

*** Keywords ***
Launch Browser
    Open Browser    ${Global.url}    browser=${Global.browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    30
    Title Should Be    ${appTitle}
    Print    ${Global.url} application is opened.

Select from dropdown
    [Arguments]    ${locator}
    Select From List By Value   ${locator}    de
    ${selected}=    Get Selected List Label    searchLanguage
    Print    Selected value is ${selected}

Print
    [Arguments]    ${msg}
    Log    ${msg}
    Log To Console    ${msg}

Switch to Window By Url
    [Arguments]     ${expectedUrl}
    @{lstWindows}=    Get Window Handles
    FOR    ${win}    IN    @{lstWindows}
        Switch Window   ${win}
        ${url}=    Get Location
        IF    $expectedUrl in $url
            ${text}=    Get Text    //a[contains(text(),'Open')]
            Log To Console    Link is ${text}
             BREAK
        END
    END


Close Current Browser
    Close Browser
    Print    Browser is closed.