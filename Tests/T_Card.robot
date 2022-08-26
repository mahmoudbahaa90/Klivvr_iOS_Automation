*** Settings ***
Library  AppiumLibrary
Resource  ../POM/P_Card.robot
Resource  ../POM/P_Common.robot

Test Setup  SuiteSetUpKW  ${MOBILE_NUMBER}  ${OTP}  ${PASSCODE}
#Test Teardown  SuiteTeardownKW


*** Variables ***
${MOBILE_NUMBER}  1111111112
${OTP}  1234
${PASSCODE}  258369


*** Test Cases ***
Freeze_Card
    Freeze Card


Unfreeze_Card
    Unfreeze_Card
