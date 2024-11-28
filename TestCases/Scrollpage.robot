*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://www.worldometers.info/geography/flags-of-the-world/
${browser}  chrome

*** Test Cases ***
1.Scrolling page by pixel number
    # Scrolling the page to the certain [ixel number
    open browser    ${url}  ${browser}
    maximize browser window
    execute javascript    window.scrollTo(0,1500)
    sleep    3
    close browser


2.Scrolling the page till find the element on page

    open browser    ${url}  ${browser}
    maximize browser window
    scroll element into view    xpath:/html/body/div[2]/div[2]/div[1]/div/div/div/div[125]/div/a/img
    sleep    3
    close browser

3.Scrolling to the bottom of ghe page
    open browser    ${url}  ${browser}
    maximize browser window
    execute javascript    window.scrollTo(0,document.body.scrollHeight)         ##Scrolling till the end of the page
    execute javascript    window.scrollTo(0,-document.body.scrollleight)        ## Scrolling to the top of the page
    sleep    3
    close browser