*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Closingbrowser
    open browser    https://demowebshop.tricentis.com/register  chrome
    maximize browser window

    open browser    https://www.flipkart.com/account/login?ret=/    chrome
    maximize browser window
    #close browser   # Will close only one browser
    close all browsers  #Close all browsers
