
*** Settings ***
Library  AppiumLibrary
Resource  ../POM/P_Common.robot
Resource  ../POM/P_Chat_Support.robot

Test Setup  SuiteSetUpKW  ${MOBILE_NUMBER}  ${OTP}  ${PASSCODE}
#Test Teardown  SuiteTeardownKW


*** Variables ***
${MOBILE_NUMBER}  1111111112
${OTP}  1234
${PASSCODE}  258369
${CHAT_TEXT}  Hi

*** Test Cases ***
Chat_Support
    Chat Support  ${CHAT_TEXT}




