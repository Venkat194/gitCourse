*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://testautomationpractice.blogspot.com/
${browser}  chrome

*** Test Cases ***
loginTest
    open browser    ${url}  ${browser}
    maximize browser window
    title should be    Automation Testing Practice
    ${"name"}   set variable    xpath://input[@id='name']

    element should be visible    ${"name"}
    element should be enabled    ${"name"}
    input text    ${"name"}     venkatesh
    sleep    3
    clear element text  ${"name"}
    sleep    3
    close browser
*** Keywords ***
