*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Capturing Screenshots
    open browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login  chrome
    maximize browser window
    #capture element screenshot  name:username   C:/Users/Venkatesh Yedla/PycharmProjects/Python Robotic framework/first.png
    capture page screenshot     C:/Users/Venkatesh Yedla/PycharmProjects/Python Robotic framework/first.png
    close browser