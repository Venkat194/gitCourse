*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot

*** Variables ***

${url}  https://www.flipkart.com/account/login?ret=/
${browser}  chrome

*** Test Cases ***
Opening the login page
    launch browser  ${url}  ${browser}
    input text    xpath://*[@id="container"]/div/div[3]/div/div[2]/div/form/div[1]/input     9182367290
    sleep    3
    close browser






