*** Settings ***

Library    SeleniumLibrary

*** Variables ***

${WEB_APP_URL}         https://uat-my.flowsold.com/

${FACEBOOK_USERNAME}   javier.nunez@tridius.co
${URL}    https://uat-my.flowsold.com/
${EMAIL_FIELD}    xpath://input[@id='email']

${PASSWORD_FIELD}    xpath=//input[@id='password']
${FACEBOOK_PASSWORD}   123@Quesito

${BROWSER}             Chrome

*** Test Cases ***
SearchTest
    Open Browser    ${WEB_APP_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    1s
    Wait Until Element Is Visible    ${EMAIL_FIELD}
    Input Text    ${EMAIL_FIELD}    zach.bonham@tridius.co
    Input Password    ${PASSWORD_FIELD}    Testlab!02
    Click Button    xpath://button[text()='Sign in']
    Wait Until Element Is Visible    xpath://input[@placeholder='Search / Filter']
    Input Text    xpath://input[@placeholder='Search / Filter']    Andy
    Sleep    2s
    Click Element    xpath://li[1]//div[1]//div[1]//h4[1]//span[1]

