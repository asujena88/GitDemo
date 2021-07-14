*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/ArticleSummerization.py

*** Variables ***

${link}     https://www.ndtv.com/education/online-classes-keep-students-in-maharashtras-slums-far-from-studies

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

Submitclick
    Click Element    xpath:/html/body/app-root/app-login/div/div/form/div[4]/input

Verify Successful Login
    Page Should Contain Image    xpath:/html/body/app-root/app-home/app-header/header/div/nav/a/img
    #Page Should Contain    AiraLogo


Tools
    Click Element    xpath://*[@id='navbarSupportedContent']/ul/li[1]

Submit
    Click Element    xpath:/html/body/app-root/app-login/div/div/form/div[4]/input

Article Summerization
    #Click Element    xpath:ClickOnArticle
    Click Element    xpath://h3[contains(text(),'Article Summarization')]
    
Language
    #Click Element    xpath:ClickOnLanguage
    Click Element    xpath:/html/body/app-root/app-home/app-article-summarization/div/div[2]/div/div[1]/div/div[2]/p-dropdown/div/div[2]/span
    
Select Language
    Click Element    xpath://span[contains(text(),'English')]

EnterLink
    Input Text    xpath:/html/body/app-root/app-home/app-article-summarization/div/div[2]/div/div[2]/div[2]/div[1]/div/div[1]/input    ${link}
    
GenerateSummary
    Click Element    xpath://a[contains(text(),'Generate Summary')]

ClickOnRadio
    Click Element    xpath://body/app-root[1]/app-home[1]/app-article-summarization[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/p-radiobutton[1]/div[1]/div[2]/span[1]


FileUploadButton
    Wait Until Element Is Enabled    xpath:/html/body/app-root/app-home/app-article-summarization/div/div[2]/div/div[2]/div/div/div/div[1]/p-fileupload/div/div[1]/span
    Click Element    xpath:/html/body/app-root/app-home/app-article-summarization/div/div[2]/div/div[2]/div/div/div/div[1]/p-fileupload/div/div[1]/span

SelectFile
    Wait Until Element Is Enabled    xpath:/html/body/app-root/app-home/app-article-summarization/div/div[2]/div/div[2]/div/div/div/div[1]/p-fileupload/div/div[1]/span/input
    Choose File    xpath:/html/body/app-root/app-home/app-article-summarization/div/div[2]/div/div[2]/div/div/div/div[1]/p-fileupload/div/div[1]/span/input    C:/Users/asutosh.jena/Documents/AI Playground/upload data/summery/bulkurl.xlsx

GenerateSummary1
    Click Element    xpath:/html/body/app-root/app-home/app-article-summarization/div/div[2]/div/div[2]/div/div/div/div[2]/button

Close My Browser
    Close All Browsers