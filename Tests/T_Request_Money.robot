*** Settings ***
Library  AppiumLibrary
Resource  ../POM/P_Common.robot
Resource  ../POM/P_Request_Money.robot

Test Setup  SuiteSetUpKW  ${MOBILE_NUMBER}  ${OTP}  ${PASSCODE}
#Test Teardown  SuiteTeardownKW


*** Variables ***
${MOBILE_NUMBER}  1111111112
${OTP}  1234
${PASSCODE}  258369
${RECIEVER_MOBILE_NUMBER}  1022031199
${AMOUNT}  100
${NOTE}  so important
${SELECT_RECENT_CONTACT_ABBREVIATION}  NJ


*** Test Cases ***
Request_Money_Mobile_Number
    Request Money Mobile Number  ${RECIEVER_MOBILE_NUMBER}  ${AMOUNT}  ${NOTE}


Request_Money_Username
    Request Money Username  ${USERNAME}  ${AMOUNT}  ${NOTE}


Request_Money_Recent
    Request Money Recent  ${SELECT_RECENT_CONTACT_ABBREVIATION}  ${AMOUNT}  ${NOTE}




Request_Money_Contacts
    Request Money Contacts   ${AMOUNT}  ${NOTE}



