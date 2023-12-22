*** Settings ***
Library   SeleniumLibrary
Variables   ../pageobjects/HRMHomepage.py


*** Keywords ***
Get All Links From Application
    @{lstLinks}=    Get WebElements    ${lnksNavigation}
    FOR    ${link}    IN    @{lstLinks}
        Log    ${link.text}
    END