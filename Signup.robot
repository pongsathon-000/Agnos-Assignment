#This file is to store test cases for testing signup functionality.
*** Setting ***
Test Teardown      Close All Browsers
Library            SeleniumLibrary
Resource           Signup_keyword.robot
Resource           Common_keyword.robot
Resource           Common_variable.robot

*** Test Cases ***
User Should Be Unable to Create a New Account with Invalid Email Format.
    [Tags]    Signup
    Open Agnos Website              Signup           Agnos
    Input Invalid Signup Credentials       testgmail.com    @Testing123    @Testing123
    Click Button Confirm
    Verify Error Message Invalid Email Format        The email should be in the format 'test@example.com'

User Should Be Unable to Create a new Account with Invalid Password Format.
    [Tags]    Signup
    Open Agnos Website              Signup           Agnos
    Input Invalid Signup Credentials       test@gmail.com   @Test    @Test
    Click Button Confirm
    Verify Error Message Invalid Password Format     The password must be at least 8 characters long and include at least one uppercase letter, one digit, and one special character.