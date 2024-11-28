*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Right click
    #Right click on the element
    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html   chrome
    maximize browser window
    open context menu    xpath://span[@class='context-menu-one btn btn-neutral']
    sleep    2


    #Double clicking on the element
    go to    https://testautomationpractice.blogspot.com/
    maximize browser window
    double click element    xpath://*[@id="HTML10"]/div[1]/button
    sleep    3

    ##Drad and drop
    go to    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    maximize browser window
    drag and drop   id:box3     id:box103

