*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/POM1.robot

*** Variables ***
${url}=     https://www.saucedemo.com/v1/
${browser}=     headlesschrome
${user}=    standard_user
${pass}=    secret_sauce

*** Test Cases ***
login page testcase:
    Open my browser     ${url}      ${browser}
    Enter user name    ${user}
    Enter Password     ${pass}
    Click on login button
    close my browser
