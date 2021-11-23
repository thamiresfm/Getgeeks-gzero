*Settings*
Documentation   Signup  Test Suite

Resource        ${EXECDIR}/resources/Base.robot


Test Setup      Start Session
Test Teardown   Finish Session

*Test Cases*

# Register a new user

#     ${user}         Factory User

#     Go To Signup Form
#     Fill Signup Form        ${user}
#     Submit Signup Form
#     User Should Be Registered

# Duplicate user
#     ${user}                         Factory User
#    Add User From Database           ${user}

#     Go To Signup Form
#     Fill Signup Form                ${user}
#     Submit Signup Form
#     Modal Content Should Be         Já temos um usuário com o e-mail informado.

# Wrong Email
#     ${user}                         Factory Wrong Email

#     Go To Signup Form
#     Fill Signup Form                ${user}
#     Submit Signup Form
#     Alert Span Should Be             O email está estranho

Required Fields

    @{expect_alert}                 Create List
    ...                             Cadê o seu nome?
    ...                             E o sobrenome?
    ...                             O email é importante também!
    ...                             Agora só falta a senha!
   
    Go To Signup Form
    Submit Signup Form      
    Alert Spans Should Be            ${expect_alert}

 

# Short Password
#     [Template]          Signup With Short Pass
#     1
#     12
#     123
#     1234
#     12345
#     a 
#     a2
#     ab3
#     ab3c
#     a23bc
#     -1
    # acb#1

*Keywords*

# Signup With Short Pass
#     [Arguments]         ${short_pass}

#     ${user}             Create Dictionary
#     ...                 name=Fernando                   lastname=Papito
#     ...                 email=papito@hotmail.com        password=12345

#     Go To Signup Form
#     Fill Signup Form                ${user}
#     Submit Signup Form
#     Alert Span Should Be            Informe uma senha com pelo menos 6 caracteres


