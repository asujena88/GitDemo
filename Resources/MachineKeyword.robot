*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/MachineTranslation.py


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

MachineTranslation
    Click Element    xpath://h3[contains(text(),'Machine Translation')]

ClickOnInputLanguage
    Click Element    xpath:/html/body/app-root/app-home/app-machine-translation/div/div[2]/div/div[1]/div/div[2]/p-dropdown/div/div[2]

SelectInputLanguage
    Click Element    xpath://span[contains(text(),'English')]

ClickOnOutputLanguage
    Click Element    xpath:/html/body/app-root/app-home/app-machine-translation/div/div[2]/div/div[1]/div/div[3]/p-dropdown/div

SelectOutputLanguage
    Click Element    xpath:/html/body/app-root/app-home/app-machine-translation/div/div[2]/div/div[1]/div/div[3]/p-dropdown/div/div[4]/div[2]/ul/p-dropdownitem[7]/li/span

ClickOnPasteText
    # Click Element    PasteText
    Input Text    xpath:/html/body/app-root/app-home/app-machine-translation/div/div[2]/div/div[2]/div[2]/div/div/div[1]/textarea    How to claim income tax refund

ClickTranslate
    Click Element    xpath://a[contains(text(),'Translate Text')]

ClickOnRadio
    Click Element    xpath://body/app-root[1]/app-home[1]/app-machine-translation[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/p-radiobutton[1]/div[1]/div[2]/span[1]

FileUploadButton
    Wait Until Element Is Enabled    xpath:/html/body/app-root/app-home/app-machine-translation/div/div[2]/div/div[2]/div/div/div/div[1]/p-fileupload/div/div[1]/span
    Click Element    xpath:/html/body/app-root/app-home/app-machine-translation/div/div[2]/div/div[2]/div/div/div/div[1]/p-fileupload/div/div[1]/span

SelectFile
    Wait Until Element Is Enabled    xpath:/html/body/app-root/app-home/app-machine-translation/div/div[2]/div/div[2]/div/div/div/div[1]/p-fileupload/div/div[1]/span/input
    Choose File    xpath:/html/body/app-root/app-home/app-machine-translation/div/div[2]/div/div[2]/div/div/div/div[1]/p-fileupload/div/div[1]/span/input    C:/Users/asutosh.jena/Documents/AI Playground/upload data/translate/eng.xlsx

ClickOnTranslateText
    Click Element    xpath://button[contains(text(),'Translate Document')]

Close My Browser
    Close All Browsers
   

