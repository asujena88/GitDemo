*** Settings ***
Library     SeleniumLibrary
Variables      ../PageObjects/Locators.py
Resource        ../Resources/NewsKeywords.robot

*** Variables ***

${browser}  chrome
${url}  https://aira.evalueserve.com/login
${username}     test@evalueserve.com
${password}     evs1234$
${Choose}   xpath:/html/body/app-root/app-home/app-news-classification/div/div[2]/div/div[2]/div/div/div[1]/p-fileupload/div/div[1]/span
${Filepath}     C:\\Users\\asutosh.jena\\Documents\\AI Playground\\upload data\\new\\test_api_chinese.xlsx
${Filepath1}     C:\Users\asutosh.jena\Documents\AI Playground\upload data\new\test_api_chinese.xlsx

*** Test Cases ***
NewsClassificationTest
    Open My Browser     ${url}  ${browser}
    Enter User Name     ${username}
    Enter Password      ${password}
    Sleep    2
    Submit
    Sleep    2
    Tools
    News
    Language
    Select Language
    Sleep    5
    FileUploadButton
    SelectFile
    Start
    Sleep    2
    Capture Page Screenshot     News.png
    Close My Browser