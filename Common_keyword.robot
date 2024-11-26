#This file is to store test step keywords that are commonly used in any functionality.
*** Settings ***
Library        SeleniumLibrary
Resource       Common_variable.robot

*** Keywords ***
Open Agnos Website
    #input Signup or Login as an option to select website URL in Open Agnos Website keyword
    [Arguments]    ${website}    ${title}
    IF         '${website}' == 'Signup'
        Open Browser    ${AgnosSignup}    chrome
    ELSE IF    '${website}' == 'Login'
        Open Browser    ${AgnotLogin}     chrome
    ELSE
        Fail    
    END
    Title Should Be    ${title}
    Maximize Browser Window

Common Input Text
    [Arguments]    ${locator}    ${text}    
    Wait Until Element Is Visible    ${locator}
    Input Text                       ${locator}    ${text}
