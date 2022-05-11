*** Settings ***
Documentation       this suite will handle valid credential

Resource        ../Resource/CommonFunctionality_resource.robot
Test Setup      launch browser



*** Test Cases ***
register credential template
    Click Element    xpath=//a[@id='createAccountSubmit']
    Input Text    xpath=//input[@id='ap_customer_name']       sakthi
    Input Text    xpath=//input[@id='ap_email']    sakthivelramachandran96@gmail.com
    Input Password    xpath=//input[@id='ap_password']    password@123
    Input Password    xpath=//input[@name='passwordCheck']    password@123
    Click Element    id=continue
    Sleep    60s
    # enter otp
    Click Element    xpath=//input[@type='submit']
    Input Text    xpath=//input[@type='tel']    8637439881
    Click Element    //input[@type='submit']
    Sleep    30s
    # enter otp
    Click Element    xpath=//input[@type='submit']
    Element Should Contain    //h4[text()='Mobile number already in use']    Mobile number already in use

