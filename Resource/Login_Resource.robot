*** Settings ***
Library    SeleniumLibrary
Variables    ../POM/Locators.py

*** Keywords ***

Login With Credentials
    [Arguments]    ${email}    ${passwd}
    [Documentation]    Log in to the web app using the provided email and password.
    Wait Until Element Is Visible    ${app_email}
    Input Text    ${app_email}    ${email}
    Input Password    ${app_pwd}    ${passwd}
    Click Button    ${app_login}

go to events
    Wait Until Element Is Visible    ${app_settings}
    Click Element    ${app_settings}
    Click Element    ${app_accounts}
    Click Element    ${app_sign_in}


Switch To Facebook Window
    [Documentation]    Switch to Facebook login window for authentication.
    Switch Window    title:Facebook

Login To Facebook
    [Arguments]    ${facebook_email}    ${facebook_password}
    [Documentation]    Logs in to Facebook using provided credentials.
    Input Text    id=email    ${fb_id}
    Input Text    id=pass    ${fb_pwd}
    Click Button    name=login
    Click Element    xpath://div[@class='x8t9es0 x1fvot60 xxio538 x1heor9g xuxw1ft x6ikm8r x10wlt62 xlyipyv x1h4wwuj x1pd3egz xeuugli'][normalize-space()='Reconnect']

create events
    [Arguments]    ${event_name}
    Wait Until Element Is Visible    ${app_events}
    Click Element    ${app_events}
    Click Element    ${close_signin_notification}
    Wait Until Element Is Visible    ${create_event}
    Click Element    ${create_event}
    Input Text    ${input_event}    ${event_name}
    Click Element    ${event_create_cta}
    
    
add inventory
    Wait Until Element Is Visible    ${add_item_cta}
    Click Element    ${add_item_cta}
    Click Element    ${select_item_cta}
    Click Element    ${item_checkbox}
    Click Element    ${item_added_cta}
    Wait Until Element Is Visible    ${item_done_cta}
    Click Element    ${item_done_cta}
    Wait Until Element Is Visible    ${inventory_cta}
    Click Element    ${inventory_cta}
    
launch
    Wait Until Element Is Visible    ${click_camera}
    Click Element    ${click_camera}
    Click Element    ${click_microphone}
    Click Element    ${select_microphone}
    Click Element    ${click_channel}
    Click Element    ${select_channel}
    Click Element    ${live_cta}
    Click Element    ${go_live_cta}

live streaming
    Wait Until Element Is Visible    ${click_products}
    Click Element    ${click_products}
    Input Text    ${input_product}    input_products
    Click Element    ${submit_product}



    
    

