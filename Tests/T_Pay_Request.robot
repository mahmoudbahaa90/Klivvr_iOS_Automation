*** Settings ***
Library  AppiumLibrary
Resource  ../POM/P_Common.robot
Resource  ../POM/P_Pay_Request.robot

Test Setup  SuiteSetUpKW  ${MOBILE_NUMBER}  ${OTP}  ${PASSCODE}
#Test Teardown  SuiteTeardownKW


*** Variables ***
${MOBILE_NUMBER}  1111111112
${OTP}  1234
${PASSCODE}  258369


*** Test Cases ***
Pay_Request
    Pay Request


Pay_Split_Request
    Pay Split Request
