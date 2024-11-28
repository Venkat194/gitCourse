*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
links :
    open browser    https://www.worldometers.info/geography/flags-of-the-world/     chrome
    maximize browser window
    sleep    1 second
    ${alllinks}=    get element count    xpath://a
    log to console    ${alllinks}
    @{linksinpage}  create list
    FOR    ${links}     IN RANGE    1   ${alllinks}+1
    ${pagelinks}=   get text   xpath:(//a)[${links}]
    log to console    ${pagelinks}
    END


