*** Settings ***
Library     SeleniumLibrary
Variables      ../PageObjects/Locators.py
Resource    ../Resources/LoginKeywords.robot

*** Variables ***

${browser}  chrome
${url}  https://aira.evalueserve.com/login
${username}     test@evalueserve.com
${password}     evs1234$

*** Test Cases ***
LoginTest
    Open My Browser     ${url}  ${browser}
    Enter User Name     ${username}
    Enter Password      ${password}
    Submitclick
    Capture Page Screenshot     Login.png
    Close My Browser