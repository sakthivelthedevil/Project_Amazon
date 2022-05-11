*** Settings ***
Documentation       this suite will handle valid credential

Resource        ../Resource/CommonFunctionality_resource.robot
Test Setup      launch browser
Test Teardown       Close Browser


*** Test Cases ***
register credential template
    Click Element    xpath=//a[@id='createAccountSubmit']
    Input Text    xpath=//input[@id='ap_customer_name']       sakthi
    Input Text    xpath=//input[@id='ap_email']    sakthivelramachandran96@gmail.com
    Input Password    xpath=//input[@id='ap_password']    password@123
    Input Password    xpath=//input[@id='ap_password_check']    password@123
    Click Element    id=continue
