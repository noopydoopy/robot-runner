*** Settings ***

Library  Selenium2Library

*** Variables ***
#${Url}    https://app.scout.asia/
${Browser}    chrome


*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${Browser}
    # Maximize Browser Window

End Web Test
    Close Browser