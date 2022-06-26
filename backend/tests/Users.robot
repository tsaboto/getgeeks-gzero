*Settings*

Documentation       Users rout test suite
Library             RequestsLibrary

Resource            ${EXECDIR}/resources/Base.robot


*Test Cases*
Add new user
    ${user}      Factory New User
    Remove user  ${user}
    
    ${response}         Post User   ${user} 
    Status Should Be    201         ${response}

    ${user_id}      Set Variable         ${response.json()}[id]
    Should Be True   ${user_id} > 0    

Get user data

    ${user}         Factory Get User 
    Post User       ${user}
    
    ${token}                GET token       ${user}
    ${response}             GET User       ${token} 
    Status Should Be        200             ${response}  

    Should Be Equal As Strings       ${user}[name]       ${response.json()}[name]   
    Should Be Equal As Strings       ${user}[email]      ${response.json()}[email]   
    Should Be Equal As Strings       None                ${response.json()}[whatsapp] 
    Should Be Equal As Strings       None                ${response.json()}[avatar]
    Should Be Equal As Strings       False               ${response.json()}[is_geek]   
   
Remove user

    ${user}             Factory Remove User
    Post User           ${user}

    ${token}            GET token       ${user}   

    ${response}         DELETE User     ${token} 
    Status Should Be    204             ${response}  

    ${response}         GET User         ${token}  
    Status Should Be    404              ${response}    


Update a user

    ${user}     Factory Update User 
    POST User   ${user}[before]
    
    ${token}        GET token       ${user}[before]

    ${response}     PUT User        ${token}        ${user}[after]
    Status Should Be    200              ${response}    

    ${response}             GET User       ${token} 

    Should Be Equal As Strings       ${user}[after][name]       ${response.json()}[name]   
    Should Be Equal As Strings       ${user}[after][email]      ${response.json()}[email]   
    Should Be Equal As Strings       ${user}[after][whatsapp]   ${response.json()}[whatsapp] 
    Should Be Equal As Strings       ${user}[after][avatar]     ${response.json()}[avatar]
    Should Be Equal As Strings       False                      ${response.json()}[is_geek]   