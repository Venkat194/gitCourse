*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/
*** Test Cases ***
loginTest
    open browser    ${url}  ${browser}
    click link  xpath://a[normalize-space()='Log in']
    input text  id:Email        1234@gmail.com
    input text  id:Password     12345
    click element   xpath://button[normalize-space()='Log in']
    close browser
*** Keywords ***
