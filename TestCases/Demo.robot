*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***

*** Test Cases ***
LoginTest
    open browser    https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F      chrome
    maximize browser window
    close browser
