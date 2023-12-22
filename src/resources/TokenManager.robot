*** Settings ***
Library    RequestsLibrary

*** Keywords ***
Generate Token
    [Arguments]     ${tokenEnpoint}
    ${body}=    Create Dictionary    grant_type=refresh_token  refresh_token=1AQCjxweIh7Fhj63Qn21PEsuJJZ0OUpcObBayhzTgVJmp8odGHgEtuTmMxtoPbRRfF4iLAn2_QY6hvIzYW9z6c60121_7bqslcnqnzIv_FnUiaftOy7tf9jqYVlzoyMOG1vg  client_id=5e6d0f8abecb477ca92b386476e6cf1a    client_secret=f2e5b468d055481198cc14b489620b49
    ${header}=  Create Dictionary   content-type=application/x-www-form-urlencoded   content-encoding=gzip
    ${response}=    POST    ${tokenEnpoint}   data=${body}    headers=${header}
    ${token}    Set Variable    ${response.json()}[access_token]
    Set Global Variable    ${token}
