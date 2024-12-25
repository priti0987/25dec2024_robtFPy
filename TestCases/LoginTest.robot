*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKaywords.robot


*** Variables ***
${browser}       Chrome
${siteURL}      https://demo.guru99.com/test/newtours
${username}     25dec2024821
${password}     Pratap@1

*** Test Cases ***
LoginTest
    Open My Browser     ${siteURL}      ${browser}
    Enter username      ${username}
    Enter password      ${password}
    Click Signin
    Sleep    3 seconds
    Verify Successful Login
    Close My Browers