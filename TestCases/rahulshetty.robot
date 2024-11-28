*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://rahulshettyacademy.com/AutomationPractice/
${browser}  chrome

*** Test Cases ***
practice page
    open browser    ${url}  ${browser}
    maximize browser window
    title should be    Practice Page
    select radio button    radioButton  radio1
    select radio button    radioButton  radio2
    select radio button    radioButton  radio3
    select checkbox    checkBoxOption1
    select checkbox    checkBoxOption2
    select checkbox    checkBoxOption3
    unselect checkbox    checkBoxOption1
    unselect checkbox    checkBoxOption2
    sleep    2
    unselect checkbox    checkBoxOption3
    click element    id:dropdown-class-example
    select from list by value   dropdown-class-example  option1
    sleep    2
    close browser