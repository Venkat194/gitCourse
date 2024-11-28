*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Login_resources.robot
Suite Setup    open my browser
Suite Teardown    close my browser
Test Template       Invalid login
*** Test Cases ***
Right user empty password   admin@yourstore.com     ${empty}
Right user wrong password   admin@yourstore.com     admi
wrong user empty password   adm@yourstore.com       ${EMPTY}
Wrong user right password   adm@yourstore.com       admin
wrong user wrong password   adm@yourstore.com       admi
*** Keywords ***
Invalid login
    [Arguments]    ${username}  ${password}
    Input username  ${username}
    Input pwd       ${password}
    #sleep    2seconds
    click on login button
    Error message