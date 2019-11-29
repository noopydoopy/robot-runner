*** Settings ***
Library  Selenium2Library

*** Variables ***
${companiesname}   Toyota Motor

*** Keywords ***  
Search keyword in field of Companies Tab
    Click Element   xpath=//*[@id="react-mount"]/div/div[2]/div/div[2]/div[1]/aside/div/div/div[1]/div[1]/a
    sleep   5
    Wait Until Page Contains   COMPANIES FOUND
    Capture Page Screenshot

Click the "COMPANIES" Tab
    Click Element   xpath=//*[@id="react-mount"]/div/div[2]/div/div[2]/div[1]/aside/div/div/div[2]/div[1]/div/form/div[2]/input
    Input Text   xpath=//*[@id="react-mount"]/div/div[2]/div/div[2]/div[1]/aside/div/div/div[2]/div[1]/div/form/div[2]/input   ${companiesname}
    sleep   2
    Capture Page Screenshot
    Click Button    class=search-button

Click at company name "Toyota Motor Corp"
    Capture Page Screenshot
    Click Link   link:TOYOTA MOTOR CORP
    sleep   5
    Capture Page Screenshot
    Wait Until Page Contains   Toyota Motor Corp
