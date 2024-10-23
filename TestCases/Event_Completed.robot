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
#//li[@class="ant-pagination-item ant-pagination-item-2 ant-pagination-item-active"]

*** Test Cases ***
SearchTest
    Open Browser    ${WEB_APP_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    1s
    Wait Until Element Is Visible    ${EMAIL_FIELD}
    Input Text    ${EMAIL_FIELD}    zach.bonham@tridius.co
    Input Password    ${PASSWORD_FIELD}    Testlab!02
    Click Button    xpath://button[text()='Sign in']
    Wait Until Element Is Visible    xpath://div[@class='ant-tabs-tab']
    Click Element    xpath://div[@class='ant-tabs-tab']
    Wait Until Element Is Visible    xpath://div[@id='rc-tabs-0-panel-completed']//li[1]//div[1]//div[1]//h4[1]//span[1]
    Set Selenium Implicit Wait    5s
    Click Element    xpath://div[@id='rc-tabs-0-panel-completed']//li[1]//div[1]//div[1]//h4[1]//span[1]
    #Click Element    xpath://span[normalize-space()='omar hd 2']
    Set Selenium Implicit Wait    5s
    Page Should Contain    Items Shown
    Page Should Contain    Duration