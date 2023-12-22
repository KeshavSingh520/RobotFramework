*** Settings ***
Library    RequestsLibrary
Library     ../tests/api/RequestBody.py
Library    Collections
Library     DateTime
Resource    ../resources/Resources.robot
Suite Setup    Generate Token   ${Global.apiTokenEndpoint}
Force Tags    All

*** Variables ***
${baseUrl}  ${Global.createPlayListAPi}
${playlistUrl}  ${Global.getPlayListAPi}


*** Test Cases ***
TC1:Create Spotify Playlist
    [Tags]  sanity
    ${response}=    Post Request Method
#    Print    ${response}

TC2: Get Playlist
    [Tags]  smoke
    Get Request Method

*** Keywords ***
Post Request Method
#    [Arguments]    @{expbody}
    ${body}=    Create Dictionary   name=Workout9923    description=This is workout playlist.   public=false
    ${header}=  Create Dictionary   Content-Type=text/plain  Authorization=Bearer ${token}
    ${response}=    POST    ${baseUrl}  json=${body}    headers=${header}
    ${id}    Set Variable    ${response.json()}[id]
    Set Suite Variable    ${id}
    Return From Keyword    ${response}
#    ${name}    Set Variable    ${response.json()}[name]
#    ${description}    Set Variable   ${response.json()}[description]

Get Request Method
    ${id}=    Get Variable Value    $id
    ${header}=  Create Dictionary   Content-Type=text/plain  Authorization=Bearer ${token}
    ${response}=    Get    https://api.spotify.com/v1/playlists/${id}    headers=${header}
    Print    ${response}


