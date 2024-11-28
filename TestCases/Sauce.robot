*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Saucelabs_resources.robot
Suite Setup     open my browser
Suite Teardown    close my browser
Test Template    Negative Scenarios
*** Test Cases ***
Right username wrong password       standard_user       12345
Right username empty password       standard_user       ${EMPTY}
Wrong username empty password       standard_u          ${EMPTY}
Wrong username wrong password       standard_           bhvhj
wrong username right password       standard_           secret_sauce
*** Keywords ***
Negative Scenarios
    [Arguments]    ${username}  ${password}
    input username  ${username}
    input pwd       ${password}
    sleep    1second
    click on login button
    Error message

