*** Settings ***
Resource  ../Resources/articles_loading.robot 



*** Test Cases ***
User see section targets mentioned and Related companies in home page
    articles_loading.Login to website success
    articles_loading.Display section targets mentioned and Related companies
    Close Browser
    

User can search article from NEWS Tab and select a article bring to article view page
    articles_loading.Login to website success
    articles_loading.Search article from NEWS Tab and click article bring to article view page
    Close Browser

User can search company name from COMPANIES Tab and click company name bring to companies page  
    articles_loading.Login to website success
    articles_loading.Search company name from COMPANIES Tab and click company name bring to companies page
    Close Browser
