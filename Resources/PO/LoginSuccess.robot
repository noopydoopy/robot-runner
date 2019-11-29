*** Settings ***
Library  Selenium2Library

*** Variables ***
${Url}    https://app.scout.asia/
${Username}   tawinun@mycostech.com
${Password}   m;boyomN3
${Browser}    chrome

*** Keywords ***
Load
    Open Browser   ${Url}   ${Browser}

Enter Username
    Input Text   id=email   ${Username}
Enter Password
    Input Text   id=password   ${Password}
Click Login
    Click Button   id=signInButton
    Capture Page Screenshot

Verify Page Loaded
    Wait Until Page Contains  Kung
    sleep   3
    Capture Page Screenshot 