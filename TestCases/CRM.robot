*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://testautomationpractice.blogspot.com/
${browser}  chrome
*** Keywords ***

*** Test Cases ***
Testcase1
    [Documentation]    This is to open the browser
    [Tags]    SMOKE
    open browser    ${url}      ${browser}
    maximize browser window
    sleep    3s
    page should contain    Automation Testing Practice
    close browser
