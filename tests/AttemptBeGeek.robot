*Settings*
Documentation       Attempt BeGeek test suit

Resource        ${EXECDIR}/resources/Base.robot

Suite Setup      Start Session For Attempt Be a Geek
Test Template    Attempt Be a Geek

*Variables*

${long_desc}   Instalo todos os tipos de software, dou manutenção em impressoras, celulares, computadores, laptops, e qualquer eletronico que você precisar, se estiver precisando de ajuda não exite em me mandar uma mensagem, será um prazer responder sua mensagem e te ajudar no que for preciso 

*Test Cases*
Short desc          desc    Formato o seu PC    A descrição deve ter no minimo 80 caracteres
Empty desc          desc    ${EMPTY}            Informe a descrição do seu Trabalho
Long desc           desc    ${long_desc}        A descrição deve ter no máximo 255 caracteres
Whats only DDD      whats   11                  O Whatsapp deve ter 11 digitos contando com o DDD 
Whats only number   whats   999999999           O Whatsapp deve ter 11 digitos contando com o DDD
Empty whats         whats   ${EMPTY}            O Whatsapp deve ter 11 digitos contando com o DDD
Cost letters        cost    aaa                 Valor hora deve ser numérico
Cost alpha          cost    aa123               Valor hora deve ser numérico
Cost special        cost    *#@%$##             Valor hora deve ser numérico
Empty cost          cost    ${EMPTY}            Valor hora deve ser numérico    


*Keywords*

Attempt Be a Geek
    [Arguments]     ${key}      ${input_field}        ${output_message}  

    ${user}     Factory User    attempt_be_geek

    Set To Dictionary       ${user}[geek_profile]       ${key}      ${input_field}

    Fill Geek Form      ${user}[geek_profile]
    Submit Geek Form       
    Alert Span Should Be    ${output_message}

    Take Screenshot     fullPage=True

Start Session For Attempt Be a Geek
    
    ${user}     Factory User    attempt_be_geek
    
    Start Session
    Do Login        ${user}
    Go to Geek Form