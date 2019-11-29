*** Settings ***
Library  Selenium2Library

*** Variables ***
${Titlearticle}   Eight more arrested in UK human trafficking case   

*** Keywords ***  
Click the "News" Tab
    Click Element   xpath=//*[@id="react-mount"]/div/div[2]/div/div[2]/div[1]/aside/div/div/div[1]/div[2]/a
    sleep   8
    Input Text   xpath=//*[@id="react-mount"]/div/div[2]/div/div[2]/div[1]/aside/div/div/div[2]/div[1]/div/form/div[2]/input   ${Titlearticle}
    sleep   3 
    Click Button    class=search-button
    sleep   5
    Wait Until Page Contains   ${Titlearticle}


Click at title "Eight more arrested in UK human trafficking case"
    Capture Page Screenshot
    Click Link   link:Eight more arrested in UK human trafficking case
    sleep   3

bring to the article view page
    sleep   2
    Wait Until Page Contains   ${Titlearticle}
    Capture Page Screenshot
    
