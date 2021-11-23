*Settings*
Documentation               Test Helpers


*Keywords*
Add User From Database
    [Arguments]             ${user}

    Connect To Postgress
    Insert User             ${user}
    Disconnect From Database
    # Go To Signup Form
    # Fill Signup Form        ${user}
    # Submit Signup Form
    # User Should Be Registered