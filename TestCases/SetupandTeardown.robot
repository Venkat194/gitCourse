*** Settings ***
Library    SeleniumLibrary

Suite Setup     log to console      opening browser
Suite Teardown    log to console    closing browser
Test Setup    log to console        log into application
Test Teardown    log to console     log out from application

*** Test Cases ***
TC1:
    log to console    prepaid recharge
TC2:
    log to console    postpaid recharge
TC3:
    log to console    search
TC4:
    log to console    advanced search
