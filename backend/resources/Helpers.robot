*Settings*

Documentation       Helpers

*Keywords*

GET token
    [Arguments]     ${user}

    #obtendo o token
    ${payload}              Create Dictionary          
    ...                     email=${user}[email]      
    ...                     password=${user}[password]

    ${response}             POST Session        ${payload}
    ${result}               Set Variable        ${EMPTY}

    IF  '200' in '${response}'
        ${result}      Set Variable        Bearer ${response.json()}[token]
    END 

    [Return]        ${result}

Remove user
    [Arguments]     ${user}

    ${token}    GET token  ${user}

    IF  '${token}'
        DELETE User  ${token}
    END
    
