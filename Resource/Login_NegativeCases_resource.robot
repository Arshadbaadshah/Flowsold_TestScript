*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${url}      https://uat-my.flowsold.com/
${browser}      chrome


*** Keywords ***
Open My Browser
        [Arguments]     ${url}      ${browser}
        Open Browser    ${url}      ${browser}
        Maximize Browser Window

Input usernames
        [Arguments]     ${email_id}
        Input Text    xpath://input[@id='email']    ${email_id}

Input pas
        [Arguments]     ${pass}
        Input Text    xpath=//input[@id='password']    ${pass}

Click Login buttons
        Click Element    xpath://button[text()='Sign in']

Error Message Displayed
       Page Should Contain    Please enter
   
Verify Successful Login
        Page Should Contain    EVENTS

Log out of Application
        Wait Until Element Is Visible    xpath://span[normalize-space()='Logout']
        Click Element    xpath://span[normalize-space()='Logout']

Close My browsers
        Close All Browsers
