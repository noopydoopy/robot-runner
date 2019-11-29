*** Settings ***
Library    Selenium2Library

*** Keywords ***
See section of targets mentioned
    Wait Until Page Contains   My targets mentioned this week

See section of Related companies
    Wait Until Page Contains   Related companies in the news this week
    sleep   3
    Capture Page Screenshot 
