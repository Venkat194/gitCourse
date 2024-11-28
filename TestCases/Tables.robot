*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Webtable:
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    scroll element into view    xpath://*[@id="HTML1"]/div[1]/table
    sleep    2
    ${rows}=        get element count    xpath://table[@name='BookTable']//tbody//tr
    ${columns}=     get element count    xpath://table[@name='BookTable']//tbody//tr//th
    log to console    ${rows}
    log to console    ${columns}
    ${S_name}=  get text    xpath://table[@name='BookTable']//tbody//tr[2]//td[3]
    log to console      ${S_name}
    table row should contain    xpath://table[@name='BookTable']    2   Learn Selenium
    table column should contain    xpath://table[@name='BookTable']     2   Animesh
    table cell should contain    xpath://table[@name='BookTable']       7   2   Amit
    table header should contain    xpath://table[@name='BookTable']     Author
    close browser
    