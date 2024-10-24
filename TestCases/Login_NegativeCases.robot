*** Settings ***
Library     SeleniumLibrary
Resource        ../Resource/Login_NegativeCases_resource.robot
Suite Setup     Open My Browser    ${url}    ${browser}
Suite Teardown      Close My browsers
Test Template       Login Negative Testcase



*** Test Cases ***      username                    password
Right user empty pass   zach.bonham@tridius.co     ${EMPTY}
Right user wrong pass   zach.bonham@tridius.co     12
Wrong user right pass   zach                       Testlab!02
Wrong user empty pass   bonham                     ${EMPTY}
Right user Right pass   zach.bonham@tridius.co     Testlab!02


*** Keywords ***
Login Negative Testcase
            Set Selenium Speed    2s
            [Arguments]     ${email_id}    ${pass}
            Input usernames    ${email_id}
            Input pas    ${pass}
            Click Login buttons
            Error Message Displayed
            Verify Successful Login
            Log out of Application
            Close My browsers