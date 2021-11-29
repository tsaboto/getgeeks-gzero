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
