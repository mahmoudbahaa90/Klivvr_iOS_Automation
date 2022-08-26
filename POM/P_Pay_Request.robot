*** Settings ***
Library  AppiumLibrary


*** Variables ***
${RECIEVED-REQUEST}  //XCUIElementTypeStaticText[@name="EGP 10.0"]
${NOTE_FIELD}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTextField
${NOTE}  important
${DONE_BUTTON}  //XCUIElementTypeButton[@name="Done"]
${PAY_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton
${PASSCODE_FIELD}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther
${PASSCODE_CIRCLE}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]
${PASSCODE}  258369
${PAY_CONTINUE_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton
${GO_BACK_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton


${RECIEVED_SPLIT_REQUEST}  //XCUIElementTypeStaticText[@name="EGP 166.67"]
${SPLIT_PAY_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton
${SPLIT_NOTE_FIELD}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTextField
${SPLIT_NOTE}  important
${SPLIT_CONTINUE_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeButton

*** Keywords ***
Pay Request
    wait until keyword succeeds  100s  1s   wait until page contains element  ${RECIEVED-REQUEST}
    click element  ${RECIEVED-REQUEST}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${NOTE_FIELD}
    input text  ${NOTE_FIELD}  ${NOTE}
    click element  ${DONE_BUTTON}
    click element  ${PAY_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${PASSCODE_FIELD}
    click element  ${PASSCODE_CIRCLE}
    input text    ${PASSCODE_FIELD}  ${PASSCODE}
    click element  ${PAY_CONTINUE_BUTTON}
    click element  ${GO_BACK_BUTTON}


Pay Split Request
    wait until keyword succeeds  100s  1s   wait until page contains element  ${RECIEVED_SPLIT_REQUEST}
    click element  ${RECIEVED_SPLIT_REQUEST}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${SPLIT_PAY_BUTTON}
    click element  ${SPLIT_PAY_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${SPLIT_NOTE_FIELD}
    input text  ${SPLIT_NOTE_FIELD}  ${SPLIT_NOTE}
    click element  ${SPLIT_CONTINUE_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${PASSCODE_FIELD}
    click element  ${PASSCODE_CIRCLE}
    input text    ${PASSCODE_FIELD}  ${PASSCODE}
    click element  ${PAY_CONTINUE_BUTTON}
    click element  ${GO_BACK_BUTTON}