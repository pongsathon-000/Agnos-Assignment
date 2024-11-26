#This file is to store test step keywords for signup functionality.
*** Settings ***
Library        SeleniumLibrary
Resource       Common_variable.robot
Resource       Common_keyword.robot

*** Keywords ***
Input Valid Signup Credentials
    [Arguments]    ${username}    ${password}    ${confirmPw}
    Common Input Text    //input[@id='Email']                                    ${username}
    Common Input Text    //input[@id='password']                                 ${password}
    Common Input Text    //div[@class='css-1euqg25'][2]/input[@id='password']    ${confirmPw}

Input Invalid Signup Credentials
    [Arguments]    ${username}    ${password}    ${confirmPw}
    Common Input Text    //input[@id='Email']                                    ${username}
    Common Input Text    //input[@id='password']                                 ${password}
    Common Input Text    //div[@class='css-1euqg25'][2]/input[@id='password']    ${confirmPw}

Click Button Confirm
    Wait Until Element Is Enabled    //div[@class='css-1ukmdrv']/button
    Click Button                     //div[@class='css-1ukmdrv']/button

Verify Error Message Invalid Email Format
    [Arguments]    ${message}
    Wait Until Element Is Visible    //div[@class='css-1gln6ol']
    Element Should Be Visible        //div[@class='css-1gln6ol']    ${message}

Verify Error Message Invalid Password Format
    [Arguments]    ${message}
    Wait Until Element Is Visible    //div[@class='css-wqvqdc']
    Element Should Be Visible        //div[@class='css-wqvqdc']     ${message}