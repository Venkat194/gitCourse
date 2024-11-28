*** Test Cases ***
#Forloop1:
#    FOR    ${i}    IN RANGE    1   10
#    log to console    ${i}
#    END

#Forloop2:
#    FOR    ${i}     IN   1    2    3    4  5  6  7  8  9
#    log to console    ${i}
#    END

#Forloop3 with list:
#    @{items}    create list    1    2   3   4   5
#   FOR    ${i}  IN    @{items}
#   log to console    ${i}
#    END

Exitforloop4:
    @{items}    create list     1   2   3   4   5   6   7   8   9   10
    FOR    ${i}     IN    @{items}
    log to console    ${i}
    exit for loop if    ${i} == 7
    END

