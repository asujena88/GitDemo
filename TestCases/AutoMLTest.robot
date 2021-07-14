*** Settings ***
Library     SeleniumLibrary
Variables      ../PageObjects/Locators.py
Resource        ../Resources/AutoKeyword.robot

*** Variables ***

${browser}  chrome
${url}  https://aira.evalueserve.com/login
${username}     test@evalueserve.com
${password}     evs1234$

*** Test Cases ***
AutoMLTest
    Open My Browser     ${url}  ${browser}
    Enter User Name     ${username}
    Enter Password      ${password}
    Sleep    2
    Submit
    Sleep    4
    Tools
    ClickOnAutoML
    FileUploadButton
    SelectFile
    ClickOnLanguage
    SelectLanguage
    ClickOnDecesionTree
    ClickOnCountVectorizer
    ClickOnStartTraining
    Sleep    30
    ClickOnCheckbox
    ClickonSave
    PopUpBox
    ClickOnCloseProject
    Sleep    20
    Capture Page Screenshot     AuoML.png
    Close My Browser