*** Settings ***
Documentation       this suite will handle invalid credential
...     test - tittle
Resource        ../Resource/CommonFunctionality_resource.robot
Test Setup      launch browser
Test Teardown       Close Browser

Test Template       Invalid credential template
Library     DataDriver      file=../Test_data/Login_data.xlsx     sheet_name=Invalid credentials
*** Test Cases ***
TC1
TC2
*** Keywords ***
Invalid credential template
        [Arguments]     ${phone_number}   ${xpath}       ${excepted_error}
        Input Text    id=ap_email    ${phone_number}
        Click Element    id=continue
        Element Should Contain    xpath=${xpath}    ${excepted_error}

