*** Settings ***
Resource    ../../data/import.robot

*** Variables ***
${common.loading}    id=android:id/progress

*** Keywords ***
Open app from installed app
    [Documentation]  Open application from installed app
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...    deviceName=Test
    ...    platformVersion=11.0
    ...    platformName=Android
    ...    appPackage=com.neversitup.todo
    ...    appActivity=com.neversitup.todo.MainActivity

Input Text To Element When Ready
    [Documentation]  Input Text To Element
    [Arguments]     ${locator_element}   ${text_to_input}
    AppiumLibrary.Wait Until Page Does Not Contain Element    ${common.loading}
    AppiumLibrary.Wait Until Element Is Visible   ${locator_element}
    AppiumLibrary.Input Text     ${locator_element}    ${text_to_input}

Tap Element When Ready
    [Documentation]  Tap Element When Ready
    [Arguments]    ${locator_element}
    AppiumLibrary.Wait Until Page Does Not Contain Element    ${common.loading}
    AppiumLibrary.Wait Until Element Is Visible    ${locator_element}
    AppiumLibrary.Click Element   ${locator_element}

Clear Text To Element When Ready
    [Documentation]  Clear Text To Element When Ready
    [Arguments]    ${locator_element}
    AppiumLibrary.Wait Until Page Does Not Contain Element    ${common.loading}
    AppiumLibrary.Wait Until Element Is Visible    ${locator_element}
    AppiumLibrary.Clear Text    ${locator_element}
