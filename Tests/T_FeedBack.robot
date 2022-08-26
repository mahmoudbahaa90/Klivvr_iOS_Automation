*** Settings ***
Library  AppiumLibrary
Resource  ../POM/P_Common.robot
Resource  ../POM/P_FeedBack.robot

Test Setup  SuiteSetUpKW  ${MOBILE_NUMBER}  ${OTP}  ${PASSCODE}
#Test Teardown  SuiteTeardownKW


*** Variables ***
${MOBILE_NUMBER}  1111111112
${OTP}  1234
${PASSCODE}  258369
${WHAT_HAPPEND}  App Crashed
${IMPROVEMENT_TIPS}  need to be user friendly


*** Test Cases ***
Feed_Back_Report_a_Bug
    FeedBack Report a Bug  ${WHAT_HAPPEND}



Feed_Back_Suggest_an_Improvement
    FeedBack Suggest an Improvement  ${IMPROVEMENT_TIPS}
