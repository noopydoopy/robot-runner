*** Settings ***
Resource  ./PO/LoginSuccess.robot
Resource  ./PO/article_loading_in_homepage.robot
Resource  ./PO/article_loading_in_news_search.robot
Resource  ./PO/article_loading_in_company_search.robot

*** Keywords ***
Login to website success
    LoginSuccess.Load
    LoginSuccess.Enter Username
    LoginSuccess.Enter Password
    LoginSuccess.Click Login
    LoginSuccess.Verify Page Loaded

Display section targets mentioned and Related companies
    article_loading_in_homepage.See section of targets mentioned
    article_loading_in_homepage.See section of Related companies

Search article from NEWS Tab and click article bring to article view page
    article_loading_in_news_search.Click the "News" Tab
    article_loading_in_news_search.Click at title "Eight more arrested in UK human trafficking case"
    article_loading_in_news_search.bring to the article view page

Search company name from COMPANIES Tab and click company name bring to companies page
    article_loading_in_company_search.Search keyword in field of Companies Tab
    article_loading_in_company_search.Click the "COMPANIES" Tab
    article_loading_in_company_search.Click at company name "Toyota Motor Corp"