*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${browser}  chrome
${url}  https://demo.nopcommerce.com/
*** Test Cases ***
Inputboxes
    Open browser    ${url}  ${browser}
    Maximize browser window
    Title should be     nopCommerce demo store
    Click link  xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
    Sleep   3
    ${email_txt}    set variable    id:Email
    element should be visible   ${email_txt}
    element should be enabled   ${email_txt}
    input text  ${email_txt}    12345@gmail.com
    sleep   2
    clear element text  ${email_txt}
    sleep   2
    close browser
*** Keywords ***
