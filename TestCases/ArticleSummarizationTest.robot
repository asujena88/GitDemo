*** Settings ***
Library     SeleniumLibrary
Variables      ../PageObjects/Locators.py
Resource        ../Resources/ArticleKeyword.robot

*** Variables ***

${browser}  chrome
${url}  https://aira.evalueserve.com/login
${username}     test@evalueserve.com
${password}     evs1234$

*** Test Cases ***
ArticleSummerizationTest
    Open My Browser     ${url}  ${browser}
    Enter User Name     ${username}
    Enter Password      ${password}
    Sleep    3
    Submit
    Sleep    5
    Tools
    Article Summerization
    Language
    Select Language
    Sleep    3
    EnterLink
    Sleep    2
    GenerateSummary
    Capture Page Screenshot     Article.png
    Close My Browser

ArticleSummerizationBulkURLTest
    Open My Browser     ${url}  ${browser}
    Enter User Name     ${username}
    Enter Password      ${password}
    Sleep    3
    Submit
    Sleep    5
    Tools
    Article Summerization
    ClickOnRadio
    Language
    Select Language
    FileUploadButton
    SelectFile
    Sleep    2
    GenerateSummary1
    Capture Page Screenshot     ArticleBulk.png
    Close My Browser