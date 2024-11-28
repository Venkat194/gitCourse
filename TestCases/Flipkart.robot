*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/FlipkartDashboard.robot


*** Test Cases ***
User Navigated to loginpage when user trying to buy the product without login to the application
    [Documentation]    User alerted with appropriate error
    #set selenium speed    5s
    open browser    ${url}  ${browser}
    User landed on Flipkart homepage
    Search for the product
    select the product
    Add that product to the add to cart
    User alerted wth enter valid email/mobilenumber error.
    close all browsers