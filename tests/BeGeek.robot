*Settings*
Documentation       BeGeek test suit

Resource        ${EXECDIR}/resources/Base.robot

Test Setup      Start Session
Test Teardown   Finish Session


*Test Cases*

Be a BeGeek
    [Tags]      smoke
    ${user}     Factory User    be_geek

    Do Login  ${user}

    # Quando submeto o formulario para me torncar um geek (prestador de seriço)
    Go to Geek Form
    Fill Geek Form      ${user}[geek_profile]
    Submit Geek Form

    #Então devo ver a mensagem de sucesso
    Geek Form Should Be Success