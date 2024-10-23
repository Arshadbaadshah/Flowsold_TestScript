*** Settings ***
Library    SeleniumLibrary
Variables    ../POM/delete_locators.py
Variables    ../POM/Locators.py

*** Keywords ***

Login With Credentials
    [Arguments]    ${email}    ${passwd}
    [Documentation]    Log in to the web app using the provided email and password.
    Open Browser    ${url}    ${browser}
    Wait Until Element Is Visible    ${app_email}
    Input Text    ${app_email}    ${email}
    Input Password    ${app_pwd}    ${passwd}
    Click Button    ${app_login}

Single Delete 
        Set Selenium Implicit Wait    5s
        Click Element    ${kebab_icon}
        Click Element    ${delete_option}
        Click Element    ${delete_yes_cta}