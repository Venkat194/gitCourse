*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Handling Alerts
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    click element    xpath://*[@id="HTML9"]/div[1]/button[2]
    #${confirm box}  set variable    xpath://*[@id="HTML9"]/div[1]/button[2]
    #click element   ${confirm box}
    sleep    3
    #handle alert    accept      #will click on ok button
    alert should be present    Press a button!
    #handle alert    dismiss
    #handle alert    leave

    close browser