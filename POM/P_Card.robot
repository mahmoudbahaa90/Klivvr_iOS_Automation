*** Settings ***
Library  AppiumLibrary



*** Variables ***
${CARD_OPTIONS_BUTTON}  //XCUIElementTypeButton[@name="ic cards"]
${CARD_FRONT}  //XCUIElementTypeImage[@name="KlivvrCard_front"]
${FREEZE_CARD_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeButton[1]
${PASSWORD_FIELD}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther
${PASSCODE}  258369
${SEND_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton

*** Keywords ***
Freeze Card
   wait until keyword succeeds  100s  1s   wait until page contains element  ${CARD_OPTIONS_BUTTON}
   click element  ${CARD_OPTIONS_BUTTON}
   wait until keyword succeeds  100s  1s   wait until page contains element  ${CARD_FRONT}
   click element  ${CARD_FRONT}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${FREEZE_CARD_BUTTON}
   click element  ${FREEZE_CARD_BUTTON}
   input text  ${PASSWORD_FIELD}  ${PASSCODE}
   click element  ${SEND_BUTTON}



#
Unfreeze_Card
   wait until keyword succeeds  100s  1s   wait until page contains element  //XCUIElementTypeButton[@name="ic cards"]
   click element  //XCUIElementTypeButton[@name="ic cards"]
   wait until keyword succeeds  100s  1s   wait until page contains element  //XCUIElementTypeImage[@name="KlivvrCard_front"]
   click element  //XCUIElementTypeImage[@name="KlivvrCard_front"]
   wait until keyword succeeds  100s  1s   wait until page contains element  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeButton[1]
   click element  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeButton[1]
   input text  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther  258369
   click element  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton