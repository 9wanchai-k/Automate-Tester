*** Settings ***
Resource    ../../data/import.robot

*** Keywords ***
Input mail
    [Arguments]    ${email}
    common.Input Text To Element When Ready    xpath=//input[@id="email"]   ${email}

Input Password
    [Arguments]    ${password}
    common.Input Text To Element When Ready    xpath=//input[@id="password"]    ${password}

Click Login
    common.Click Element When Ready            xpath=//button[contains(@class,'ist_button_red sel_login')]