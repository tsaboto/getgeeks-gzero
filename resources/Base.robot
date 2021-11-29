*Settings*
Documentation       Base Test

Library     Browser
Library     factories/User.py     

Library     Collections

Resource    actions/_SharedActions.robot
Resource    actions/AuthActions.robot
Resource    actions/SignupActions.robot

Resource    Database.robot
Resource    Helpers.robot


*Variables*
${BASE_URL}         https://getgeeks-tsaboto.herokuapp.com

*Keywords
Start Session
    New Browser     chromium       headless=False      slowMo=00:00:00
    New Page        ${BASE_URL}


Finish Session
    Take Screenshot