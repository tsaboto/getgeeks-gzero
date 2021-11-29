*Settings*
Documentation       trabalhando com listas

Library             Collections


*Test Cases*
Trabalhando com listas

    @{avengers}     Create List      Tony Stark      Kamalakhan      Steve Rogers

    Append To List      ${avengers}     Bruce Banner
    Append To List      ${avengers}     Scott Lang

    FOR     ${i}    IN      @{avengers}

        Log To Console      ${i}
    
    END

    @{avengers2}        Create List      Tony Stark      Missa Marvel    Steve Rogers    Bruce Banner    Scott Lang

    Lists Should Be Equal        ${avengers}     ${avengers2}