*Settings*
Documentation           Login test suit

Resource            ${EXECDIR}/resources/Base.robot


Test Setup          Start Session
Test Teardown       Finish Session

*Test Cases*
User login
    
    ${user}                     Factory User Login

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials
    User Should Be Logged In    ${user}  

Incorrect Pass
    
    ${user}     Create Dictionary       email=tsaboto@gmail.com     password=abc123

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials
    Modal Content Should Be     Usuário e/ou senha inválidos.

User not Found 
    
    ${user}     Create Dictionary       email=tsaboto@404.net     password=abc123

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials
    Modal Content Should Be     Usuário e/ou senha inválidos.

Incorrect Email 
    [Tags]      i_email
    ${user}     Create Dictionary       email=tsaboto@404.net     password=abc123

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials
    Should Be Type Email  

# Starting the tests for challenge 1 of module 2 begins.

Required Email
    [Tags]      r_email         req_f
    ${user}     Create Dictionary       email=${EMPTY}              password=abc123

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials
    Alert Span Should Be       E-mail obrigatório

Required Pass
    [Tags]      r_email         req_f
    ${user}     Create Dictionary       email=tsaboto@gmail.com     password=${EMPTY}

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials
    Alert Span Should Be       Senha obrigatória

Required Fields
    [Tags]      r_login          req_f
    
    @{expect_alerts}            Create List
    ...                         E-mail obrigatório
    ...                         Senha obrigatória

    Go To Login Page 
    Submit Credentials
    Alert Spans Should Be       ${expect_alerts}
    
# Finishing the tests for challenge 1 of module 2 begins.