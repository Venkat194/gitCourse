*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
TimeoutTesting
    open browser    https://demowebshop.tricentis.com/register  chrome
    maximize browser window
    set selenium implicit wait    10
    set selenium timeout    10
    wait until page contains    Registration
    #page will wait for 5 seconds to get the value if it not present then it will throw an error
    select radio button    Gender   M
    input text    id:FirstName  Venky
    input text    id:LastName   Y
    input text    id:Email  12345@gmail.com
    close browser