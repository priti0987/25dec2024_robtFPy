*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***
Open My Browser
    [Arguments]          ${SiteUrl}       ${Browser}
    Open Browser         ${SiteUrl}       ${Browser}
    Maximize Browser Window


Enter username
    [Arguments]          ${username}
    Input Text           ${txt_loginusername}    ${username}

Enter password
    [Arguments]          ${password}
    Input Text           ${txt_loginpassword}    ${password}

Click Signin
    Click Button    ${btn_signin}

Verify Successful Login
    Page Should Contain Element    ${signoffLink}

Close My Browers
    Close All Browsers