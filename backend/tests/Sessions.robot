*Settings*

Documentation       Sessions rout tes suite
Library             RequestsLibrary

Resource            ${EXECDIR}/resources/Base.robot

*Variables*
&{inv_pass}             email=betao@gmail.com       password=awd123
&{empty_pass}           email=betao@gmail.com       password=${EMPTY}
&{wo_pass}              email=betao@gmail.com       
&{inv_email}            email=betao.gmail.com       password=awd123
&{email.nf}             email=betao@notfound.com    password=awd123
&{empty_email}          email=${EMPTY}              password=awd123
&{wo_email}             password=awd123


*Test Cases*

User sessions

    ${payload}      Factory User Session        signup
    POST User           ${payload}


    ${payload}      Factory User Session        login
    ${response}      POST Session           ${payload}

    Status should Be    200        ${response}      

    ${size}             Get Length              ${response.json()}[token]
    ${expected_size}    Convert To Integer      140    
    
    Should Be Equal     ${expected_size}        ${size}
    Should Be Equal     10d                     ${response.json()}[expires_in]   

# **** USANDO TEMPLATES *********
Should Not Get token
    [Template]          Attempt POST Session

    ${inv_pass}         401         Unauthorized
    ${empty_pass}       400         Required pass
    ${wo_pass}          400         Required pass
    ${inv_email}        400         Incorrect email
    ${email.nf}         401         Unauthorized
    ${empty_email}      400         Required email
    ${wo_email}         400         Required email

*Keywords*
Attempt POST Session

    [Arguments]         ${payload}          ${status_code}          ${error_message}

    ${response}         POST Session  ${payload}

    Status Should Be        ${status_code}          ${response}
    Should Be Equal         ${error_message}        ${response.json()}[error]

# **** FORMA TRADICIONAL COM REPETÇÃO DE CODIGO*****

# Incorrect pass

#     ${payload}          Create Dictionary   email=betao@gmail.com       password=abc123

#     ${response}      POST Session           ${payload}

#     Status should Be    401                 ${response}      
#     Should Be Equal     Unauthorized        ${response.json()}[error]


# User not found

#     ${payload}          Create Dictionary   email=betao@401.com       password=abc123

#     ${response}      POST Session           ${payload}

#     Status should Be    401                 ${response}      
#     Should Be Equal     Unauthorized        ${response.json()}[error]

# Incorrect email

#     ${payload}          Create Dictionary   email=betao.gmail.com       password=abc123

#     ${response}      POST Session           ${payload}

#     Status should Be    400                     ${response}      
#     Should Be Equal     Incorrect email         ${response.json()}[error]

# Empty email

#     ${payload}          Create Dictionary   email=${Empty}      password=abc123

#     ${response}      POST Session           ${payload}

#     Status should Be    400                     ${response}      
#     Should Be Equal     Required email         ${response.json()}[error]


# Without email

#     ${payload}          Create Dictionary    password=abc123

#     ${response}      POST Session           ${payload}

#     Status should Be    400                     ${response}      
#     Should Be Equal     Required email         ${response.json()}[error]


# Empty pass

#     ${payload}          Create Dictionary   email=betao@gmail.com    password=${Empty}

#     ${response}      POST Session           ${payload}

#     Status should Be    400                     ${response}      
#     Should Be Equal     Required pass         ${response.json()}[error]


# Without pass

#     ${payload}          Create Dictionary    email=betao@gmail.com

#     ${response}      POST Session           ${payload}

#     Status should Be    400                     ${response}      
#     Should Be Equal     Required pass         ${response.json()}[error]