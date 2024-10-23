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
    Wait Until Element Is Visible    xpath://li[2]//ul[1]//li[1]//*[name()='svg']
    Click Element    xpath://li[2]//ul[1]//li[1]//*[name()='svg']
    Wait Until Element Is Visible    xpath://body/div[4]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/*[1]
    Click Element    xpath://body/div[4]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/*[1]
    Wait Until Element Is Visible    xpath://span[contains(text(),'Yes')]
    Click Element    xpath://span[contains(text(),'Yes')]

