*** Settings ***
Resource    ../../data/import.robot

*** Keywords ***
Check go to page setup
    [Documentation]    Check go to page setup
    Wait Until Element Is Visible      xpath=//div[@class='tdo-body']

Select Theme
    [Documentation]     Select Theme on page setup
    [Arguments]    ${select_theme}
    common.Click Element When Ready    xpath=//li[@class='tdo-theme-switches__item']/a[@data-theme="${select_theme}"]

Click Open my Todoist
    [Documentation]    Click Open my Todoist on page
    common.Click Element When Ready    xpath=//a[contains(@class,'tdo-button') and .="Open my Todoist"]