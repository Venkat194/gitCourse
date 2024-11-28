*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Navigational commands
    open browser    https://www.google.co.in/   chrome
    maximize browser window
    ${location1}=   get location
    log to console    ${location1}

    go to    https://www.bing.com/
    maximize browser window
    ${location2}=   get location
    log to console    ${location2}
    go back
    ${location3}=  get location
    log to console    ${location3}
    close all browsers