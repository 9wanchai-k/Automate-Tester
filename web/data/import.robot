*** Settings ***
Library     SeleniumLibrary
# Library     AppiumLibrary
Library     DebugLibrary
Library     JSONLibrary
Library     OperatingSystem
Library     RequestsLibrary
Library     ImapLibrary2
Library     Collections
Library     html2text
Library     DateTime
Library     String

Resource    ../keywords/common/common.robot
Resource    ../keywords/pages/login_page.robot
Resource    ../keywords/pages/register_page.robot
Resource    ../keywords/pages/home_page.robot
Resource    ../keywords/pages/setup_page.robot
Resource    ../keywords/pages/todo_page.robot

Variables   data.yaml