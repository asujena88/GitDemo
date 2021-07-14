*** Settings ***
Library     SeleniumLibrary
Variables      ../PageObjects/NewsClassification.py

*** Keywords ***

Open My Browser
    [Arguments]     ${url}  ${browser}
    Open Browser    ${url}  ${browser}
    Maximize Browser Window

Enter User Name
    [Arguments]     ${username}
    Input Text    ${txt_loginUserName}    ${username}

Enter Password
    [Arguments]     ${password}
    Input Text    ${txt_loginPassword}    ${password}

Submit
    Click Element    xpath:/html/body/app-root/app-login/div/div/form/div[4]/input

Tools
    Click Element    xpath://*[@id='navbarSupportedContent']/ul/li[1]
    #Click Element    ClickOnTools

News
    Click Element    xpath://h3[contains(text(),'News Classification')]
    #Click Element    ClickOnNews

Language
    Click Element    xpath://span[contains(text(),'Select Language')]
    #Click Element    InputLanguage

Select Language
    Click Element    xpath://p-dropdownitem[3]/li/span
    #Click Element    SelectLanguage

FileUploadButton
    Wait Until Element Is Enabled    xpath:/html/body/app-root/app-home/app-news-classification/div/div[2]/div/div[2]/div/div/div[1]/p-fileupload/div/div[1]/span
    Click Element    xpath:/html/body/app-root/app-home/app-news-classification/div/div[2]/div/div[2]/div/div/div[1]/p-fileupload/div/div[1]/span

SelectFile
    Wait Until Element Is Enabled    xpath:/html/body/app-root/app-home/app-news-classification/div/div[2]/div/div[2]/div/div/div[1]/p-fileupload/div/div[1]/span/input
    Choose File    xpath:/html/body/app-root/app-home/app-news-classification/div/div[2]/div/div[2]/div/div/div[1]/p-fileupload/div/div[1]/span/input    C:/Users/asutosh.jena/Documents/AI Playground/upload data/new/test_api_chinese.xlsx
    
Start
    Click Element    xpath:/html[1]/body[1]/app-root[1]/app-home[1]/app-news-classification[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[3]/button[1]
    #Click Element    xapth://button[contains(text(),'Start Classification')]
    #Click Element    StartClassification

Close My Browser
    Close All Browsers
