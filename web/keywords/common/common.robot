*** Settings ***
Resource    ../../data/import.robot

*** Keywords ***
Open Website 
    ${chrome options}=      Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver  
    Call Method    ${chrome_options}   add_argument    disable-gpu
    Create Webdriver    Chrome    chrome_options=${chrome options}
    Maximize Browser Window
    Goto    ${url_todo}

Input Text To Element When Ready
    [Documentation]  Input Text To Element
    [Arguments]     ${locator_element}   ${text_to_input}
    Wait Until Element Is Visible   ${locator_element}
    Input Text     ${locator_element}    ${text_to_input}

Click Element When Ready
    [Documentation]  Tap Element When Ready
    [Arguments]    ${locator_element}
    Wait Until Element Is Visible    ${locator_element}
    Click Element   ${locator_element}

Clear Text To Element When Ready
    [Documentation]  Clear Text To Element When Ready
    [Arguments]    ${locator_element}
    Wait Until Element Is Visible    ${locator_element}
    Clear Text    ${locator_element}

Replace with epoch
    [Documentation]    Replace string "epoch" with ${epoch} instead
    ...                ${string} is word you want to replace with epoch variable
    [Arguments]        ${string}
    ${current_time}    Get current date    result_format=epoch
    ${current_time}    Convert to string    ${current_time}
    ${string}          Replace string    ${string}    epoch    ${current_time}
    [Return]           ${string}