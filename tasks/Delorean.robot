*Settings*
Documentation       Delorean

Resource            ${EXECDIR}/resources/Database.robot


# robot -l NONE tasks/Delorean.robot

*Tasks*

Back To The Past
    Connect To Postgress
    Reset Env
    Users Seed
    Disconnect from Database

    