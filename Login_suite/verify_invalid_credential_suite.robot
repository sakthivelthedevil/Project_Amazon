*** Settings ***
Documentation       this suite will handle invalid credential
...     test - tittle
Resource        ../Resource/CommonFunctionality_resource.robot
Test Setup      launch browser
Test Teardown       Close Browser

Test Template       Invalid credential template