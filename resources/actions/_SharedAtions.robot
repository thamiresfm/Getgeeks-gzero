
*Settings*

Documentation       Shared actions


*Keywords*

Modal Content Should Be
    [Arguments]                         ${expect_text}

    ${title}                            Set Variable     css=.swal2-title
    ${content}                          Set Variable     css=.swal2-html-container 

    Wait For Elements State             ${title}       visible     5
    Get Text                            ${title}       equal       Oops...

    Wait For Elements State             ${content}     visible     5
    Get Text                            ${content}     equal       ${expect_text}

Alert Span Should Be
    [Arguments]                         ${expect_alert}

    Wait For Elements State             css=span[class=error] >> text=${expect_alert}
    ...                                 visible     5