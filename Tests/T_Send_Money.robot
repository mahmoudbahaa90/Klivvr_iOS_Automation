*** Settings ***
Library  AppiumLibrary
Resource  ../POM/P_Send_Money.robot
Resource  ../POM/P_Common.robot

Test Setup  SuiteSetUpKW  ${MOBILE_NUMBER}  ${OTP}  ${PASSCODE}
#Test Teardown  SuiteTeardownKW


*** Variables ***
${MOBILE_NUMBER}  1111111112
${OTP}  1234
${PASSCODE}  258369
${RECIEVER_MOBILE_NUMBER}  1022031199
${AMOUNT}  100
${PASSWORD}  258369
${USERNAME}  Nourhan.Jamal266
${RECENT_USERNAME}  Ahmed.735


*** Test Cases ***
Send_Money_Mobile_Number
    Send Money Mobile Number  ${RECIEVER_MOBILE_NUMBER}  ${AMOUNT}  ${PASSWORD}

Send_Money_Contacts
    Send Money Contacts  ${AMOUNT}  ${PASSWORD}

Send Money Username
    Send Money Username  ${USERNAME}  ${AMOUNT}  ${PASSWORD}

Send Money Recent
    Send Money Recent  ${RECENT_USERNAME}  ${AMOUNT}  ${PASSWORD}


