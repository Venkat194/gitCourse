*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://www.techlistic.com/p/selenium-practice-form.html
${browser}  chrome

*** Test Cases ***
Radiobuttons
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed  2seconds
    ${"Firstname"}  set variable    xpath://*[@id="post-body-3077692503353518311"]/div[1]/div/div/h2[2]/div[1]/div/div[2]/input
    input text  ${"Firstname"}  venkatesh
    clear element text    ${"Firstname"}
    select checkbox    profession-0
    unselect checkbox    profession-0
    select checkbox    profession-1
    unselect checkbox    profession-1