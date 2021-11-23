*Settings*
Documentation     Login test suite  

Resource        ${EXECDIR}/resources/Base.robot


Test Setup      Start Session
Test Teardown   Finish Session



*Test Cases*

User Login

    ${user}                         Factory User Login

    Go to Login Page
    Fill Credencials                ${user}         
    Submit Credencials
    User Should Be Logged In        ${user}

Incorrect Pass

    ${user}               Create Dictionary                 email=thamiresfernandesm@gmail.com   password=teste1234

    Go To Login Page
    Fill Credencials                ${user}
    Submit Credencials
    Modal Content Should Be         Usuário e/ou senha inválidos.

User not found

    ${user}               Create Dictionary                 email=thamiresfernasm@gmail.com   password=teste1234

    Go To Login Page
    Fill Credencials                ${user}
    Submit Credencials
    Modal Content Should Be         Usuário e/ou senha inválidos.


Incorrect Email

    ${user}               Create Dictionary                 email=thamiresfernasmgmail.com   password=teste1234

    Go To Login Page
    Fill Credencials                ${user}
    Submit Credencials
    Should Be Type Email            