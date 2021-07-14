*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/PatentRelevancy.py


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

ClickOnMachine
    Click Element    xpath://h3[contains(text(),'Patent Relevancy Check')]

FileUploadButton
    Wait Until Element Is Enabled    xpath:/html/body/app-root/app-home/app-patent-classification/div/div[2]/div/div[2]/div/div/div[1]/p-fileupload/div/div[1]/span
    Click Element    xpath:/html/body/app-root/app-home/app-patent-classification/div/div[2]/div/div[2]/div/div/div[1]/p-fileupload/div/div[1]/span

SelectFile
    Wait Until Element Is Enabled    xpath:/html/body/app-root/app-home/app-patent-classification/div/div[2]/div/div[2]/div/div/div[1]/p-fileupload/div/div[1]/span/input
    Choose File    xpath:/html/body/app-root/app-home/app-patent-classification/div/div[2]/div/div[2]/div/div/div[1]/p-fileupload/div/div[1]/span/input    C:/Users/asutosh.jena/Documents/AI Playground/upload data/patent/Patent_RNR_Template.xlsx

    
ClickOnLanguage
    Click Element    xpath:/html/body/app-root/app-home/app-patent-classification/div/div[2]/div/div[2]/div/div/div[2]/div/p-dropdown/div

SelectLanguage
    Click Element    xpath://span[contains(text(),'English')]
    
ClickOnStart
    Click Element    xpath://button[contains(text(),'Start Selection')]

Close My Browser
    Close All Browsers