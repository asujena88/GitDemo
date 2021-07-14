*** Settings ***
Library     SeleniumLibrary
Variables      ../PageObjects/Locators.py
Resource        ../Resources/MachineKeyword.robot

*** Variables ***

${browser}  chrome
${url}  https://aira.evalueserve.com/login
${username}     test@evalueserve.com
${password}     evs1234$

*** Test Cases ***
MachineTranslationTest
    Open My Browser     ${url}  ${browser}
    Enter User Name     ${username}
    Enter Password      ${password}
    Sleep    2
    Submit
    Sleep    5
    Tools
    MachineTranslation
    ClickOnInputLanguage
    SelectInputLanguage
    ClickOnOutputLanguage
    SelectOutputLanguage
    ClickOnPasteText
    ClickTranslate
    Sleep    4
    Capture Page Screenshot     Machine.png
    Close My Browser

MachineTranslationUploadTest
    Open My Browser     ${url}  ${browser}
    Enter User Name     ${username}
    Enter Password      ${password}
    Sleep    2
    Submit
    Sleep    5
    Tools
    MachineTranslation
    ClickOnInputLanguage
    SelectInputLanguage
    ClickOnOutputLanguage
    SelectOutputLanguage
    ClickOnRadio
    SelectFile
    ClickOnTranslateText
    Sleep    4
    Capture Page Screenshot     MachineUpload.png
    Close My Browser