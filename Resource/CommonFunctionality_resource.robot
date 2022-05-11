*** Settings ***
Documentation   this file will keep the configuration details

Library     SeleniumLibrary
Library     OperatingSystem
*** Variables ***
${BROWSER}      chrome
${URL}      https://www.amazon.in/
*** Keywords ***
launch browser
    Append To Environment Variable    path      ${EXECDIR}${/}Driver
    Open Browser        browser=${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Screenshot Directory    ${EXECDIR}${/}screenshot
    Go To    url=${URL}