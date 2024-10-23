*** Settings ***

Library    SeleniumLibrary
Resource    ../Resource/Login_Resource.robot
Variables    ../POM/Locators.py

*** Variables ***
${url}        https://uat-my.flowsold.com/
${browser}        chrome
${email}        zach.bonham@tridius.co
${passwd}        Testlab!02
${fb_id}        javier.nunez@tridius.co
${fb_pwd}        123@Quesito
${event_name}    Arshad

*** Test Cases ***
MainTest
           Set Selenium Speed    1s
           ${prefs}    create dictionary    profile.default_content_setting_values.media_stream_camera=${1}    profile.default_content_setting_values.media_stream_mic=${1}
           ${options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
           Call Method    ${options}    add_experimental_option    prefs    ${prefs}
           Open Browser    ${url}    ${browser}    options=${options}
           Maximize Browser Window
           Login With Credentials    ${email}    ${passwd}
           Go To Events
           Switch To Facebook Window
           Login To Facebook    ${fb_id}    ${fb_pwd}
           Switch Window    title:FlowSold
           Create Events    ${event_name}
           Add Inventory
           Launch
           Live Streaming

