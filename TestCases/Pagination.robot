*** Settings ***

Library    SeleniumLibrary

*** Variables ***

${WEB_APP_URL}         https://uat-my.flowsold.com/

${FACEBOOK_USERNAME}   javier.nunez@tridius.co
${URL}    https://uat-my.flowsold.com/
${EMAIL_FIELD}    xpath://input[@id='email']

${PASSWORD_FIELD}    xpath=//input[@id='password']
${FACEBOOK_PASSWORD}   123@Quesito

${BROWSER}             chrome

*** Test Cases ***
SearchTest
    Open Browser    ${WEB_APP_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    1s
    Wait Until Element Is Visible    ${EMAIL_FIELD}
    Input Text    ${EMAIL_FIELD}    zach.bonham@tridius.co
    Input Password    ${PASSWORD_FIELD}    Testlab!02
    Click Button    xpath://button[text()='Sign in']
    Wait Until Element Is Visible    xpath://a[normalize-space()='2']
    Click Element    xpath://a[normalize-space()='2']
    Wait Until Element Is Visible    xpath://a[normalize-space()='4']
    Click Element    xpath://a[normalize-space()='4']
    Click Element    xpath://li[@title='Next Page']//button[@type='button']
    Click Element    xpath://li[@title='Previous Page']//button[@type='button']