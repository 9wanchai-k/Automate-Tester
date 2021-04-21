*** Settings ***
Resource    ../../data/import.robot

*** Variables ***
${home_page.add_todo}    id=com.neversitup.todo:id/btnAddTodo 

*** Keywords ***
Tap add todo
    [Documentation]    Tap add todo button
    common.Tap Element When Ready    ${home_page.add_todo}

Select edit or delect by name todo
    [Documentation]    Select edit by name todo
    [Arguments]    ${text_select}
    # common.Tap Element When Ready    xpath=//android.view.ViewGroup[@resource-id="com.neversitup.todo:id/layoutItem"]//android.widget.TextView[@text="${text_select}"]
    common.Tap Element When Ready    xpath=//android.view.ViewGroup[@resource-id="com.neversitup.todo:id/layoutItem"][1]