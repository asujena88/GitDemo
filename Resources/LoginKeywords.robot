*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py


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
    #Click Element    xpath:/html/body/app-root/app-login/div/div/form/div[4]/input
    #Click Button    SubmitButton
    #Click Element    SubmitButton
    #Double Click Element    SubmitButton

Verify Successful Login
    Page Should Contain Image    xpath:/html/body/app-root/app-home/app-header/header/div/nav/a/img
    #Page Should Contain    AiraLogo

Close My Browser
    Close All Browsers
