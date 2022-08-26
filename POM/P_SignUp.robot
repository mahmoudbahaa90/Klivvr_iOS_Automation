*** Settings ***
Library  AppiumLibrary



*** Variables ***
${DEV_ENVIRONMENT}   //XCUIElementTypeStaticText[@name="Dev Environment"]
${GET_STARTED_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton[3]
${INVITATION_CODE_TEXT_FIELD}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTextField
${INVITATION_CODE}  E2Y0Z
${INVITATION_CODE_CONTINUE_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton
${MOBILE_NUMBER_FIELD}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTextField
${MOBILE_NUMBER}  1114173344
${VERIFY_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton
${OTP_FIELD}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther
${OTP}  1234
${OTP_CONTINUE_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton
${LEGAL_FIRST_NAME_FIELD}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTextField
${LEGAL_FIRST_NAME}  Ahmed
${LEGAL_LAST_NAME_FIELD}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTextField
${LEGAL_LAST_NAME}  Youssef
${EMAIL_FILED}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTextField
${EMAIL}  a.youssef.afifi@gmail.com
${PROFILE_CONTINUE_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton
${CREATE_PASSCODE_FIELD}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther
${PASSCODE}  258369
${PASSCODE_CONTINUE_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton
${RE-ENTER_PASSCODE_FIELD}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther
${RE-ENTER_PASSCODE}  258369
${RE-ENTER-PASSCODE-CONFIRM-BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton
${REQUEST_MY_CARD_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeButton
${SCAN_NATIONAL_ID_FRONT_SIDE_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeImage


*** Keywords ***
Sign Up
    [Arguments]  ${INVITATION_CODE}  ${MOBILE_NUMBER}  ${OTP}  ${LEGAL_FIRST_NAME}  ${LEGAL_LAST_NAME}  ${EMAIL}  ${PASSCODE}  ${RE-ENTER_PASSCODE}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${DEV_ENVIRONMENT}
    click element  ${DEV_ENVIRONMENT}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${GET_STARTED_BUTTON}
    click element  ${GET_STARTED_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${INVITATION_CODE_TEXT_FIELD}
    input text  ${INVITATION_CODE_TEXT_FIELD}  ${INVITATION_CODE}
    click element  ${INVITATION_CODE_CONTINUE_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${MOBILE_NUMBER_FIELD}
    input text  ${MOBILE_NUMBER_FIELD}  ${MOBILE_NUMBER}
    click element  ${VERIFY_BUTTON}
     wait until keyword succeeds  100s  1s   wait until page contains element  ${OTP_FIELD}
    input text  ${OTP_FIELD}  ${OTP}
    click element  ${OTP_CONTINUE_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${LEGAL_FIRST_NAME_FIELD}
    input text  ${LEGAL_FIRST_NAME_FIELD}  ${LEGAL_FIRST_NAME}
    input text  ${LEGAL_LAST_NAME_FIELD}  ${LEGAL_LAST_NAME}
    input text  ${EMAIL_FILED}  ${EMAIL}
    click element  ${PROFILE_CONTINUE_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${CREATE_PASSCODE_FIELD}
    input text  ${CREATE_PASSCODE_FIELD}  ${PASSCODE}
    click element  ${PASSCODE_CONTINUE_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${RE-ENTER_PASSCODE_FIELD}
    input text  ${RE-ENTER_PASSCODE_FIELD}  ${RE-ENTER_PASSCODE}
    click element  ${RE-ENTER-PASSCODE-CONFIRM-BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${REQUEST_MY_CARD_BUTTON}
    click element  ${REQUEST_MY_CARD_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${SCAN_NATIONAL_ID_FRONT_SIDE_BUTTON}
    click element  ${SCAN_NATIONAL_ID_FRONT_SIDE_BUTTON}
