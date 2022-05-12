*** Settings ***
Documentation       this suite will handle valid credential

Resource        ../Resource/CommonFunctionality_resource.robot
Test Setup      launch browser

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
        Click Element    xpath=//*[@id='twotabsearchtextbox']
        Input Text    xpath=//*[@id='twotabsearchtextbox']    boat
        Press Keys      xpath=//*[@id='twotabsearchtextbox']        ARROW_DOWN
        Press Keys      xpath=//*[@id='twotabsearchtextbox']        ENTER
        Click Element    xpath=//img[@src='https://m.media-amazon.com/images/I/51HBom8xz7L._AC_UY218_.jpg']
        Switch Window
        Element Should Contain    xpath=//span[text()='        boAt Airdopes 141 True Wireless Earbuds with 42H Playtime, Beast Mode(Low Latency Upto 80ms) for Gaming, ENx Tech, ASAP Charge, IWP, IPX4 Water Resistance, Smooth Touch Controls(Bold Black)       ']            boAt Airdopes 141 True Wireless Earbuds with 42H Playtime, Beast Mode(Low Latency Upto 80ms) for Gaming, ENx Tech, ASAP Charge, IWP, IPX4 Water Resistance, Smooth Touch Controls(Bold Black)       

