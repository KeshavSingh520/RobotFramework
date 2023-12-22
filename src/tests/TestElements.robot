*** Settings ***
Resource    ../resources/Resources.robot
Test Setup  Launch Browser
Test Teardown  Close Current Browser

*** Variables ***
${inputGoogle}=   //textarea[@name='q']

#Alt+Shift+F10 - Run
*** Test Cases ***
TC1: Test Orange HRM HomePage
#    [Tags]      robot:skip
    ${title}=    Login to HRM
    Print    ${title}
    Title Should Be    ${title}
    Get All Links From Application

TC2: Test Keyboard Keys
    Input Text    ${inputGoogle}    Robot Framework
    Press Keys    ${inputGoogle}    ALT+ENTER
    Sleep    3

TC3: Test Windows
    Go To    https://www.way2automation.com/way2auto_jquery/frames-and-windows.php#load_box
    Click Element    //a[text()='Open Multiple Windows']
    Select Frame    //div[@id='example-1-tab-4']//iframe
    Click Element    //a[text()='Open multiple pages']
    Switch to Window By Url    defult4-window2.html
