*Settings*
Documentation       Shared Actions



*Keywords*
Modal Content Should Be
    [Arguments]         ${expect_text}
    
    ${title}        Set Variable        css=.swal2-title
    ${content}      Set Variable        css=.swal2-html-container
    
    Wait For Elements State      ${title}       visible     5                   
    Get text                     ${title}       equal       Oops...

    Wait For Elements State      ${content}     visible     5
    Get text                     ${content}     equal       ${expect_text}     


Alert Spans Should Be
    [Arguments]     ${expect_alerts}

    @{got_alerts}       Create List

    ${spans}            Get Elements        xpath=//span[@class="error"]

    FOR     ${span}     IN      @{spans}

        ${text}             Get text            ${span}
        Append To List      ${got_alerts}       ${text}

    END

    Lists Should Be Equal       ${expect_alerts}        ${got_alerts}