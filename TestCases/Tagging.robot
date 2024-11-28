*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1:
    [Tags]    regression
    log to console    login testcase
TC2:
    [Tags]    regression
    log to console    logout testcase
TC3:
    [Tags]    sanity
    log to console    searh user testcase
TC4:
    [Tags]    sanity
    log to console    change user permissions
