*** Settings ***
Resource    ../../data/import.robot

*** Keywords ***
Check go to todo page
    [Documentation]  Check go to todo page
    Wait Until Element Is Visible                        xpath=//div[@id='todoist_app']

Click add todo list
    [Documentation]    Click add todo on page todo
    common.Click Element When Ready                      xpath=//button[@class='plus_add_button']

Input in task
    [Documentation]    Input text in task
    [Arguments]    ${text}
    common.Click Element When Ready                      xpath=//div[@class='task_editor__editing_area']
    Press Keys                                           xpath=//div[contains(@id,'placeholder')]    ${text}
    todo_page.Click add task
    common.Click Element When Ready                      xpath=//button[@class='cancel']

Input ${sequence} text in task and random string
    [Documentation]    Input text in task
    FOR    ${index}    IN RANGE    ${sequence}
        ${random_string}        Generate Random String    25
        Run Keywords    todo_page.Click add todo list
        ...  AND
        ...  common.Click Element When Ready                      xpath=//div[@class='task_editor__editing_area']
        ...  AND
        ...  Press Keys                                           xpath=//div[contains(@id,'placeholder')]    ${random_string}
        ...  AND
        ...  todo_page.Click add task
        ...  AND
        ...  common.Click Element When Ready                      xpath=//button[@class='cancel']
    END

Input Edit text in task
    [Documentation]    Input text in task
    [Arguments]    ${text}
    common.Click Element When Ready                      xpath=//div[@class='task_editor__editing_area']
    Press Keys                                           xpath=//div[@class='task_editor__input_fields']    CTRL+a+BACKSPACE
    Press Keys                                           xpath=//div[@class='task_editor__input_fields']    ${text}
    todo_page.Click Save task


Click add task
    [Documentation]    Click add task
    common.Click Element When Ready                      xpath=//button[contains(@class,'ist_button_red')]

Click Edit task
    [Documentation]    Click Edit task
    Mouse Over                                           xpath=//div[contains(@class,'task_list_item__actions')]
    common.Click Element When Ready                      xpath=//button[@data-action-hint='task-edit']

Click more options
    [Documentation]    Click more options
    Mouse Over                                          xpath=//div[contains(@class,'task_list_item__actions')]
    common.Click Element When Ready                     xpath=//button[@data-testid='more_menu']

Click Delect on option more
    [Documentation]    Click Delect on option more
    Mouse Over                                          xpath=//li[@data-action-hint='task-overflow-menu-delete']
    common.Click Element When Ready                     xpath=//li[@data-action-hint='task-overflow-menu-delete']

Click Save task
    [Documentation]    Click Save task
    common.Click Element When Ready                     xpath=//button[contains(@class,'ist_button_red') and .="Save"]

Click Confirm Delete
    [Documentation]    Click Confirm Delect
    common.Click Element When Ready                     xpath=//button[contains(@class,'ist_button_red') and .="Delete"]

Click Sort data
    [Documentation]    Click Sort data
    common.Click Element When Ready                     xpath=//button[@aria-label='Sort options menu']

Select Sort option
    [Documentation]    Select Sort Option on pupuo list
    [Arguments]    ${option_text}
    common.Click Element When Ready                     xpath=//div[@class='icon_menu_item__content']//span[.='${option_text}']