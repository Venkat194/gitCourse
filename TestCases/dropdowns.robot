*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://www.techlistic.com/p/selenium-practice-form.html
${browser}  chrome

*** Test Cases ***
Handling dropdowns
    open browser    ${url}  ${browser}
    maximize browser window
    select from list by index   continents  5
    sleep    3
    select from list by label   selenium_commands   Browser Commands
    sleep   3
    close browser