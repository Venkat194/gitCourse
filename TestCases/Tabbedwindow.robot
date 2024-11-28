*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Tabbedwindow
    open browser    https://rahulshettyacademy.com/AutomationPractice/  chrome
    maximize browser window
    click link    Open Tab
    #switch window   title=QAClick Academy - A Testing Academy to Learn, Earn and Shine
    switch window    url=https://www.qaclickacademy.com/
    sleep   3
    click link    Courses
    sleep    3
    close all browsers