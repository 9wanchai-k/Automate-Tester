*** Settings ***
Resource    ../../data/import.robot

*** Variables ***
${login_page.email_txt}           id=com.neversitup.todo:id/edtEmail
${login_page.password_txt}        id=com.neversitup.todo:id/edtPassword
${login_page.btn_login}           id=com.neversitup.todo:id/btnLogin       

*** Keywords ***

Clear text on username
    [Documentation]    Clear Text On element username
    common.Clear Text To Element When Ready    ${login_page.email_txt}

Clear text on password
    [Documentation]    Clear Text On element password
    common.Clear Text To Element When Ready    ${login_page.password_txt}

Input username
    [Documentation]    input Text On element username
    [Arguments]    ${username}
    common.Input Text To Element When Ready    ${login_page.email_txt}       ${username}

Input password
    [Documentation]    input Text On element password
    [Arguments]    ${password}
    common.Input Text To Element When Ready    ${login_page.password_txt}    ${password}

Tap login
    [Documentation]    Tap to button login
    common.Tap Element When Ready    ${login_page.btn_login}



