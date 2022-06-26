*Settings*
Documentation       Authentication action


*Variables*

${input_email}          id=email 
${input_pass}           id=password 

*Keywords*

Go To Login Page
    
    Go to                           ${BASE_URL}
    Wait For Elements State          css=.login-form        visible     5


Fill Credentials        
    [Arguments]     ${user}
    
    Fill Text       ${input_email}        ${user}[email]
    Fill Text       ${input_pass}         ${user}[password]


Submit Credentials
    
    Click               css=.submit-button >> text=Entrar


User Should Be Logged In 
    [Arguments]     ${user}

    ${elements}             Set Variable       css=a[href="/profile"] 
    ${expected_fulname}     Set Variable       ${user}[name] ${user}[lastname]

    # Wait For Elements State     id=user     visible     5
    Wait For Elements State     ${elements}     visible     5
    Get Text                    ${elements}     equal       ${expected_fulname}                       


Should Be Type Email

    Get Property            ${input_email}     type    equal       email