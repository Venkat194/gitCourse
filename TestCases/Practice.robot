*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

*** Variables ***
${browser}  chrome
${URL}  https://www.techlistic.com/p/selenium-practice-form.html
*** Test Cases ***
#Opening login page
#    open browser    ${URL}  ${browser}
#    maximize browser window
#    sleep   2seconds
#    close browser
Radio button testcase:
    open browser    ${URL}  ${browser}
    maximize browser window
    sleep    5seconds
    input text    name:firstname    Venkatesh
    sleep    3seconds
    input text    name:lastname     Yedla
    select radio button    sex      Male
    select radio button    sex      Female
    sleep    3seconds
    select checkbox     Manual Tester
    select checkbox     Automation Tester
    sleep    3seconds
    close browser