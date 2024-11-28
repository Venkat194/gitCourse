*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://demowebshop.tricentis.com/register
${browser}  chrome

*** Test Cases ***
Register page
    open browser    ${url}  ${browser}
    maximize browser window
    ${Speed}=   get selenium speed
    log to console    ${Speed}
    select radio button    Gender   M
    input text    id:FirstName  Venky
    input text    id:LastName   Y
    sleep    3
    input text    id:Email  12345@gmail.com
    ${Speed}=   get selenium speed
    log to console    ${Speed}
    close browser
