*** Settings ***
Library  AppiumLibrary

*** Variables ***
${SEND_MONEY_ICON}  //XCUIElementTypeStaticText[@name="Send"]
${MOBILE_NUMBER_ICON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeButton[3]
${MOBILE_NUMBER_FIELD}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeTable/XCUIElementTypeCell/XCUIElementTypeTextField
${RECIEVER_MOBILE_NUMBER}  1022031199
${DONE_BUTTON}  //XCUIElementTypeButton[@name="Done"]
${MOBILE_NUMBER_CONTINUE_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeButton
${AMOUNT_FIELD}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeTextField
${AMOUNT}  100
${AMOUNT_CONTINUE_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeButton
${REASON_DROP_DOWN_LIST}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTextField
${REASON_CONTINUE_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton
${PASSWORD_FIELD}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther
${PASSWORD}  258369
${PASSOWRD_CIRCLE}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]
${PASSWORD_CONTINUE_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton


${CONTACTS_ICON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeButton[4]
${CONTACT_CHECK_BOX}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeTable/XCUIElementTypeCell/XCUIElementTypeButton
${CONTACTS_CONTINUE_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeButton


${USERNAME_ICON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeButton[2]
${USERNAME_TEXT_FIELD}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeTable/XCUIElementTypeCell/XCUIElementTypeTextField
${USERNAME}  Nourhan.Jamal266
${USERNAME_CONTINUE_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeButton

${RECENT_USERNAME}  Ahmed.735
${RECENT_USER}  //XCUIElementTypeStaticText[@name="${RECENT_USERNAME}"]
${RECENT_CONTINUE_BUTTON}  //XCUIElementTypeStaticText[@name="Continue"][1]


*** Keywords ***
Send Money Mobile Number
    [Arguments]  ${RECIEVER_MOBILE_NUMBER}  ${AMOUNT}  ${PASSWORD}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${SEND_MONEY_ICON}
    click element  ${SEND_MONEY_ICON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${MOBILE_NUMBER_ICON}
   click element  ${MOBILE_NUMBER_ICON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${MOBILE_NUMBER_FIELD}
    input text  ${MOBILE_NUMBER_FIELD}  ${RECIEVER_MOBILE_NUMBER}
    click element  ${DONE_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${MOBILE_NUMBER_CONTINUE_BUTTON}
    click element  ${MOBILE_NUMBER_CONTINUE_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${AMOUNT_FIELD}
    input text  ${AMOUNT_FIELD}  ${AMOUNT}
    click element  ${DONE_BUTTON}
    click element  ${AMOUNT_CONTINUE_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${REASON_DROP_DOWN_LIST}
    click element  ${REASON_DROP_DOWN_LIST}
    click element  ${DONE_BUTTON}
    click element  ${REASON_CONTINUE_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${PASSWORD_FIELD}
    click element  ${PASSOWRD_CIRCLE}
    input text  ${PASSWORD_FIELD}  ${PASSWORD}
    click element  ${PASSWORD_CONTINUE_BUTTON}


Send Money Contacts
    [Arguments]  ${AMOUNT}  ${PASSWORD}
     wait until keyword succeeds  100s  1s   wait until page contains element  ${SEND_MONEY_ICON}
    click element  ${SEND_MONEY_ICON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${CONTACTS_ICON}
    click element  ${CONTACTS_ICON}
    click element  ${CONTACT_CHECK_BOX}
    click element  ${CONTACTS_CONTINUE_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${AMOUNT_FIELD}
    input text  ${AMOUNT_FIELD}  ${AMOUNT}
    click element  ${DONE_BUTTON}
    click element  ${AMOUNT_CONTINUE_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${REASON_DROP_DOWN_LIST}
    click element  ${REASON_DROP_DOWN_LIST}
    click element  ${DONE_BUTTON}
    click element  ${REASON_CONTINUE_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${PASSWORD_FIELD}
    click element  ${PASSOWRD_CIRCLE}
    input text  ${PASSWORD_FIELD}  ${PASSWORD}
    click element  ${PASSWORD_CONTINUE_BUTTON}



Send Money Username
    [Arguments]  ${USERNAME}  ${AMOUNT}  ${PASSWORD}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${SEND_MONEY_ICON}
    click element  ${SEND_MONEY_ICON}
     wait until keyword succeeds  100s  1s   wait until page contains element  ${USERNAME_ICON}
    click element  ${USERNAME_ICON}
    input text  ${USERNAME_TEXT_FIELD}  ${USERNAME}
    click element  ${DONE_BUTTON}
    click element  ${USERNAME_CONTINUE_BUTTON}
     wait until keyword succeeds  100s  1s   wait until page contains element  ${AMOUNT_FIELD}
    input text  ${AMOUNT_FIELD}  ${AMOUNT}
    click element  ${DONE_BUTTON}
    click element  ${AMOUNT_CONTINUE_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${REASON_DROP_DOWN_LIST}
    click element  ${REASON_DROP_DOWN_LIST}
    click element  ${DONE_BUTTON}
    click element  ${REASON_CONTINUE_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${PASSWORD_FIELD}
    click element  ${PASSOWRD_CIRCLE}
    input text  ${PASSWORD_FIELD}  ${PASSWORD}
    click element  ${PASSWORD_CONTINUE_BUTTON}



Send Money Recent
    [Arguments]  ${RECENT_USERNAME}  ${AMOUNT}  ${PASSWORD}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${SEND_MONEY_ICON}
    click element  ${SEND_MONEY_ICON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${RECENT_USER}
    click element  ${RECENT_USER}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${RECENT_CONTINUE_BUTTON}
    click element  ${RECENT_CONTINUE_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${AMOUNT_FIELD}
    input text  ${AMOUNT_FIELD}  ${AMOUNT}
    click element  ${DONE_BUTTON}
    click element  ${AMOUNT_CONTINUE_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${REASON_DROP_DOWN_LIST}
    click element  ${REASON_DROP_DOWN_LIST}
    click element  ${DONE_BUTTON}
    click element  ${REASON_CONTINUE_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${PASSWORD_FIELD}
    click element  ${PASSOWRD_CIRCLE}
    input text  ${PASSWORD_FIELD}  ${PASSWORD}
    click element  ${PASSWORD_CONTINUE_BUTTON}