*Settings*
Documentation       Authentication action

*Variables*
${INPUT_EMAIL}          id=email
${INPUT_PASS}           id=password

*Keywords*

Go to Login Page
    Go To                           ${BASE_URL}

    Wait For Elements State         css=.login-form     visible     5
    

Fill Credencials 
    [Arguments]                     ${user}            
    Fill Text                       ${INPUT_EMAIL}      ${user}[email]
    Fill Text                       ${INPUT_PASS}          ${user}[password]
    
Submit Credencials
    Click                           css=.submit-button >> text=Entrar 

User Should Be Logged In
    [Arguments]                         ${user}        

    ${elements}                         Set Variable                        css=a[href="/profile"]
    ${expected_fullname}                Set Variable                        ${user}[name] ${user}[lastname]

    Wait For Elements State             ${elements}        visible           5
    Get Text                            ${elements}        equal             ${expected_fullname}  

Should Be Type Email 
    Get Property                       ${INPUT_EMAIL}          type             equal           email        