*** Settings ***
Library     SeleniumLibrary
Variables      ../PageObjects/Locators.py
Resource        ../Resources/PatentKeyword.robot

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
    Sleep    2
    Submit
    Sleep    4
    Tools
    ClickOnMachine
    FileUploadButton
    SelectFile
    ClickOnLanguage
    SelectLanguage
    ClickOnStart
    Sleep    3
    Capture Page Screenshot     Patent.png
    Close My Browser