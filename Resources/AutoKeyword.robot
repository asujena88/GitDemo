*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/AutoML.py

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
    
ClickOnAutoML
    Click Element    xpath://div[1]/div[2]/a/div[2]/h3

FileUploadButton
    Wait Until Element Is Enabled    xpath:/html/body/app-root/app-home/app-auto-ml/div/div[2]/div/div[2]/div/div/div/div/p-fileupload/div/div[1]/span
    Click Element    xpath:/html/body/app-root/app-home/app-auto-ml/div/div[2]/div/div[2]/div/div/div/div/p-fileupload/div/div[1]/span

SelectFile
    Wait Until Element Is Enabled    xpath:/html/body/app-root/app-home/app-auto-ml/div/div[2]/div/div[2]/div/div/div/div/p-fileupload/div/div[1]/span/input
    Choose File    xpath:/html/body/app-root/app-home/app-auto-ml/div/div[2]/div/div[2]/div/div/div/div/p-fileupload/div/div[1]/span/input    C:/Users/asutosh.jena/Documents/AI Playground/New folder/AutoML/Tagged Data Set.xlsx

    
ClickOnLanguage
    Click Element    xpath:/html/body/app-root/app-home/app-auto-ml/div/div[2]/div/div[1]/div/div[2]/p-dropdown
    
SelectLanguage
    Click Element    xpath://span[contains(text(),'English')]
    
ClickOnDecesionTree
    Click Element    xpath:/html/body/app-root/app-home/app-auto-ml/div/div[2]/div/div[3]/div/div[2]/div/div[1]/div/div/div[1]/p-checkbox/div/div[2]

ClickOnCountVectorizer
    Click Element    xpath:/html/body/app-root/app-home/app-auto-ml/div/div[2]/div/div[3]/div/div[1]/div/div[1]/div/div/div[1]/p-checkbox/div/div[2]

ClickOnStartTraining
    Click Element    xpath:/html/body/app-root/app-home/app-auto-ml/div/div[2]/div/div[4]/button

ClickOnCheckbox
    # Wait Until Element Is Visible    xpath://*[@id="ui-tabpanel-0"]/div/div/div[2]/table/tbody/tr/td[1]/p-checkbox/div/div[2]
    Click Element    xpath://*[@id="ui-tabpanel-0"]/div/div/div[2]/table/tbody/tr/td[1]/p-checkbox/div/div[2]

ClickonSave
    Click Button    xpath://button[contains(text(),'Save Selected Model')]

PopUpBox
    Input Text    xpath://body/app-root[1]/app-home[1]/app-auto-ml[1]/p-dialog[3]/div[1]/div[1]/div[2]/div[1]/div[1]/input[1]    Test
    Click Button    xpath://button[contains(text(),'Yes')]
    Sleep    5
    #Click Element    xpath://body/app-root[1]/app-home[1]/app-auto-ml[1]/p-dialog[3]/div[1]/div[1]/div[1]/div[1]/a[1]/span[1]
    Click Element       xpath:/html/body/app-root/app-home/app-auto-ml/p-dialog[1]/div/div/div[1]/div/a
ClickOnCloseProject
    Click Button    xpath://button[contains(text(),'Close Project')]
    Click Element    xpath://body/app-root[1]/app-home[1]/app-auto-ml[1]/p-dialog[4]/div[1]/div[1]/div[2]/div[1]/div[2]/input[1]    Test
    Click Element    xpath://body/app-root[1]/app-home[1]/app-auto-ml[1]/p-dialog[4]/div[1]/div[1]/div[2]/div[1]/div[3]/input[1]     Test
    Click Button    xpath://button[contains(text(),'Yes')]

Close My Browser
    Close All Browsers