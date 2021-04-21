*** Settings ***
Resource    ${CURDIR}../../android/data/import.robot
*** Test Cases ***
Login Todo
    common.Open app from installed app
    login_page.Clear text on username
    login_page.Input username    ${android['user']}
    login_page.Clear text on password
    login_page.Input password    ${android['pass']}
    login_page.Tap login

Add Todo
    home_page.Tap add todo
    add_todo.Input text in todo    ${android['add_todo']}
    add_todo.Tap add button

Edit todo
    home_page.Select edit or delect by name todo    ${android['add_todo']}
    add_todo.Input text in todo    ${android['edit_todo']}
    add_todo.Tap save button

Delete todo
    home_page.Select edit or delect by name todo    ${android['edit_todo']}
    add_todo.Tap delete button
    add_todo.Tap confirm delete