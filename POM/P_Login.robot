*** Settings ***
Library  AppiumLibrary


*** Variables ***
${DEV_ENVIRONMENT}  //XCUIElementTypeStaticText[@name="Dev Environment"]
${SIGN_IN_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton[4]
${MOBILE_NUMBER_FIELD}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTextField
${VERIFY_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton
${OTP_FIELD}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther
${OTP_CONTINUE_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton[1]
${PASSCODE_FIELD}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther

*** Keywords ***
Login With Mobile Number
    [Arguments]  ${MOBILE_NUMBER}  ${OTP}  ${PASSCODE}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${DEV_ENVIRONMENT}
    click element  ${DEV_ENVIRONMENT}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${SIGN_IN_BUTTON}
    click element  ${SIGN_IN_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${MOBILE_NUMBER_FIELD}
    click element  ${MOBILE_NUMBER_FIELD}
    input text  ${MOBILE_NUMBER_FIELD}  ${MOBILE_NUMBER}
    click element  ${VERIFY_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${OTP_FIELD}
    input text  ${OTP_FIELD}  ${OTP}
    click element  ${OTP_CONTINUE_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${PASSCODE_FIELD}
    input text  ${PASSCODE_FIELD}  ${PASSCODE}