*** Settings ***
Resource    ../../data/import.robot

*** Variables ***
${add_todo.txt_input}          id=com.neversitup.todo:id/edtTodo
${add_todo.btn_add}            id=com.neversitup.todo:id/btnAdd
${add_todo.btn_save}           id=com.neversitup.todo:id/btnSave
${add_todo.btn_del}            id=com.neversitup.todo:id/btnDelete
${add_todo.btn_confirm_del}    xpath=//android.widget.Button[@text="DELETE"]
*** Keywords ***
Input text in todo
    [Documentation]    input text in todo
    [Arguments]    ${text_input}
    common.Input Text To Element When Ready    ${add_todo.txt_input}    ${text_input}

Tap add button
    [Documentation]    Tap to add item on todo
    common.Tap Element When Ready    ${add_todo.btn_add}

Tap save button
    [Documentation]    Tap to save button
    common.Tap Element When Ready    ${add_todo.btn_save}

Tap delete button
    [Documentation]    Tap to delete button
    common.Tap Element When Ready    ${add_todo.btn_del}

Tap confirm delete
    [Documentation]    Tap tp confirm delete
    common.Tap Element When Ready    ${add_todo.btn_confirm_del}