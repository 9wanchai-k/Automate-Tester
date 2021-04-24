*** Settings ***
Resource    ../../data/import.robot

*** Keywords ***
Click Sign Up
    [Documentation]    Click Sign up on home page
    common.Click Element When Ready        xpath=(//a[@primary="primary" and .="Sign up"])[1]

Click Login
    [Documentation]    Click Login in on home page
    common.Click Element When Ready        xpath=(//a[@href="/users/showlogin"])[1]
