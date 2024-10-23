*** Settings ***
Resource    ../Login_Resource.robot
Variables    ../Login_Locators.py

*** Test Cases ***

Login With Facebook Test
    [Documentation]    Logs into the application using Facebook credentials.
    Open Web Application
    Login With Credentials    zach.bonham@tridius.co    Testlab!02
    Wait Until Element Is Visible    ${SETTINGS_BUTTON}
    Click Element    ${SETTINGS_BUTTON}
    Wait Until Element Is Visible    ${ACCOUNTS_BUTTON}
    Click Element    ${ACCOUNTS_BUTTON}
    Click Element    ${SIGN_IN_BUTTON}

    # Switch to Facebook login and perform login
    Switch To Facebook Window
    Login To Facebook    javier.nunez@tridius.co    123@Quesito
    Wait Until Element Is Visible    ${FACEBOOK_RECONNECT}
    Click Element    ${FACEBOOK_RECONNECT}

    # Switch back to the main window
    Switch Window    title:FlowSold

    Wait Until Element Is Visible    ${EVENTS_TAB}
    Click Element    ${EVENTS_TAB}

Submit Comment Test
    [Documentation]    Submits a comment and verifies its submission.
    Open Web Application
    Login With Credentials    zach.bonham@tridius.co    Testlab!02

    Wait Until Element Is Visible    ${EVENTS_TAB}
    Click Element    ${EVENTS_TAB}

    Wait Until Element Is Visible    ${COMMENT_INPUT}
    Input Text    ${COMMENT_INPUT}    Product Accepted
    Click Element    ${SUBMIT_COMMENT_BUTTON}
    Wait Until Page Contains    Product Accepted
