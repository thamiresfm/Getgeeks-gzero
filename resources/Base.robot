*Settings*

Documentation       Base de Test

Library     Browser
Library     Collections

Library     factories/Users.py

Resource     actions/_SharedAtions.robot   
Resource     actions/AuthActions.robot
Resource     actions/SignupActions.robot

Resource     Database.robot
Resource     Helpers.robot           

*Variables*
${BASE_URL}      https://getgeeks-thamires.herokuapp.com/


*Keywords*

Start Session
    New Browser     chromium        headless=False          slowMo=00:00:00.5
    New Page        https://getgeeks-thamires.herokuapp.com/


Finish Session
    Take Screenshot