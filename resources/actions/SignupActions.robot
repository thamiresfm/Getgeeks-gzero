*Settings*
Documentation           Ações do sistema


*Keywords*

Go To Signup Form
    Go To         ${BASE_URL}signup

    Wait For Elements State     css=.signup-form    visible          5      

Fill Signup Form
    [Arguments]                 ${user}

    Fill Text       id=name             ${user}[name]
    Fill Text       id=lastname         ${user}[lastname]
    Fill Text       id=email            ${user}[email]
    Fill Text       id=password         ${user}[password]

Submit Signup Form
    Click                               css=.submit-button >> text=Cadastrar

User Should Be Registered

    ${expect_messege}                   Set Variable        css=p >> text=Agora você faz parte da Getgeeks.
    Wait For Elements State             ${expect_messege}       visible     5


Alert Spans Should Be 
    [Arguments]                         ${expect_alerts}

    @{got_alerts}                       Create List         

    ${spans}                            Get Elements                xpath=//span[@class="error"]

    FOR   ${span}  IN  @{spans}

        ${text}                         Get Text                    ${span}
        Append To List                  ${got_alerts}               ${text}

    END

    Lists Should Be Equal               ${expect_alerts}            ${got_alerts}