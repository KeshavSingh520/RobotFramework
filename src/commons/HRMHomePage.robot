*** Settings ***
Library   SeleniumLibrary
Resource    Resources.robot
Library    String

*** Variables ***
${lnksNavigation}    //nav//ul[@class='oxd-main-menu']//span
${link}    //nav//ul[@class='oxd-main-menu']//span[text()='Admin']


*** Keywords ***
Get All Links From Application
    @{lstLinks}=    Get WebElements    ${lnksNavigation}
    ${length}=    Get Length    ${lstLinks}
    Print    ${length}
    Return From Keyword If    '${length}' <= '0'
    FOR    ${link}    IN    @{lstLinks}
        Print    ${link.text}
    END
    
Navigate to Link
    [Documentation]    This keyword is used to navigate to link by passing
...                     link name as argument. Ex: Admin, PIM
    [Arguments]    ${lnk}
    Click Element    //nav//ul[@class='oxd-main-menu']//span[text()='${lnk}']
    ${url}=    Get Location
    ${expectedLink}=    Convert To Lower Case    Admin
    Should Contain    ${url}    ${expectedLink}
    Print    Navigated to Link ${lnk}
