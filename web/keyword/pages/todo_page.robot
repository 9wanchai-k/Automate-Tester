*** Settings ***
Resource    ../../data/import.robot

*** Keywords ***
Check go to todo page
    [Documentation]  Check go to todo page
    Wait Until Element Is Visible    id="editor"

Click add todo list
    [Documentation]    Click add todo on page todo
    common.Click Element When Ready    xpath=//button[@class='plus_add_button']

Input in task
    [Documentation]    Input text in task
    [Arguments]    ${text}
    common.Input Text To Element When Ready    xpath=//div[@data-contents='true']    ${text}

Click add task
    [Documentation]    Click add task
    common.Click Element When Ready    xpath=//button[contains(@class,'ist_button_red')]

Click Edit task
    [Documentation]    Click Edit task
    Mouse Over    xpath=//button[@data-action-hint='task-edit']
    common.Click Element When Ready    xpath=//button[@data-action-hint='task-edit']

Click more options
    [Documentation]    Click more options
    Mouse Over    xpath=//button[@data-testid='more_menu']
    common.Click Element When Ready    xpath=//button[@data-testid='more_menu']

Click Delect on option more
    [Documentation]    Click Delect on option more
    Mouse Over    xpath=//li[@data-action-hint='task-overflow-menu-delete']
    common.Click Element When Ready    xpath=//li[@data-action-hint='task-overflow-menu-delete']

Click Save task
    [Documentation]    Click Save task
    common.Click Element When Ready    xpath=//button[contains(@class,'ist_button_red') .="Save"]

Click Confirm Delete
    [Documentation]    Click Confirm Delect
    common.Click Element When Ready    xpath=//button[contains(@class,'ist_button_red') and .="Delete"]

Click Sort data
    [Documentation]    Click Sort data
    common.Click Element When Ready    xpath=//button[@aria-label='Sort options menu']

Select Sort option
    [Documentation]    Select Sort Option on pupuo list
    [Arguments]    ${option_text}
    common.Click Element When Ready    xpath=//div[@class='icon_menu_item__content']//span[.='${option_text}']