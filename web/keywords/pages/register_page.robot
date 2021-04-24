*** Settings ***
Resource    ../../data/import.robot

*** Keywords ***
Input email with epoch
    [Documentation]    input email on register page
    [Arguments]    ${input_email}
    ${replaced_username}    common.Replace with epoch    ${input_email}
    common.Input Text To Element When Ready    xpath=//input[@class="input_email"]    ${replaced_username}
    Set global variable    ${replaced_username}

Click Submit
    [Documentation]    Click submit on register page
    common.Click Element When Ready            xpath=//button[@id='step_one_submit']

Input user name
    [Documentation]    Input user name on register page step 2
    [Arguments]    ${input_name}
    common.Input Text To Element When Ready    xpath=//input[@id="full_name"]    ${input_name}

Input password
    [Documentation]    Input password on register page step 2
    [Arguments]    ${input_password}
    common.Input Text To Element When Ready    xpath=//input[@id="pwd"]    ${input_password}

Click Submit Register Step 2
    [Documentation]    Click Submit on Register page Step 2
    common.Click Element When Ready            xpath=//button[@id="step_two_submit"]