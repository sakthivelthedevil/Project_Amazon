*** Settings ***
Documentation       this suite will handle valid credential

Resource        ../Resource/CommonFunctionality_resource.robot
Test Setup      launch browser
Test Teardown       Close Browser
Test Template       valid credential template
Library     DataDriver      file=../Test_data/Login_data.xlsx     sheet_name=valid credentials
*** Test Cases ***
TC1
TC2
*** Keywords ***
valid credential template
        [Arguments]     ${phone_number}   ${password}    ${xpath}        ${excepted}        ${welcomepage_xpath}    ${excepted_outcome}
        Input Text    id=ap_email    ${phone_number}
        Click Element    id=continue
        Input Password    id=ap_password    ${password}
        Click Element    id=signInSubmit
        Element Should Contain    xpath=${xpath}    ${excepted}
        Sleep    30s
        Element Should Contain    xpath=${welcomepage_xpath}   ${excepted_outcome}
