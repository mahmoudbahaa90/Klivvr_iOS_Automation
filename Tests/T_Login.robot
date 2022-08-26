*** Settings ***
Library  AppiumLibrary
Resource  ../POM/P_Common.robot
Resource  ../POM/P_Login.robot

Test Setup  Open APP

*** Variables ***
${MOBILE_NUMBER}  1111111112
${OTP}  1234
${PASSCODE}  258369


*** Test Cases ***
Login
    Login With Mobile Number  ${MOBILE_NUMBER}  ${OTP}  ${PASSCODE}
