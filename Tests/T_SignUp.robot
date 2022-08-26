*** Settings ***
Library  AppiumLibrary
Resource  ../POM/P_SignUp.robot
Resource  ../POM/P_Common.robot

Test Setup  Open APP
#Test Teardown  SuiteTeardownKW



*** Variables ***
${INVITATION_CODE}  E2Y0Z
${MOBILE_NUMBER}  1114173344
${OTP}  1234
${LEGAL_FIRST_NAME}  Ahmed
${LEGAL_LAST_NAME}  Youssef
${EMAIL}  a.youssef.afifi@gmail.com
${PASSCODE}  258369
${RE-ENTER_PASSCODE}  258369



*** Test Cases ***
Sign_Up
    sign up  ${INVITATION_CODE}  ${MOBILE_NUMBER}  ${OTP}  ${LEGAL_FIRST_NAME}  ${LEGAL_LAST_NAME}  ${EMAIL}  ${PASSCODE}  ${RE-ENTER_PASSCODE}