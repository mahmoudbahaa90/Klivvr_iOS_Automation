*** Settings ***
Library  AppiumLibrary


*** Variables ***
${REQUEST_MONEY_BUTTON}  //XCUIElementTypeStaticText[@name="Request"]
${MOBILE_NUMBER_ICON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeButton[3]
${MOBILE_NUMBER_FIELD}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeTable/XCUIElementTypeCell/XCUIElementTypeTextField
${RECIEVER_MOBILE_NUMBER}  1022031199
${DONE_BUTTON}  //XCUIElementTypeButton[@name="Done"]
${CONTINUE_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeButton
${AMOUNT_FIELD}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeTextField
${AMOUNT}  100
${AMOUNT_CONTINUE_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeButton
${REQUEST_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton
${DUE_DATE_FIELD}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTextField
${ADD_NOTE_FIELD}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTextField
${NOTE}  so important
${REQUEST_NOW_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeButton
${GO_BACK_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton

${USERNAME_ICON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeButton[2]
${USERNAME_FIELD}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeTable/XCUIElementTypeCell/XCUIElementTypeTextField
${USERNAME}  Nourhan.Jamal266
${USERNAME_CONTINUE_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeButton

${SELECT_RECENT_CONTACT_ABBREVIATION}  NJ
${RECENT_USER}  //XCUIElementTypeStaticText[@name="${SELECT_RECENT_CONTACT_ABBREVIATION}"]
${RECENT_CONTINUE_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeButton


${CONTACTS_ICON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeButton[4]
${CONTACT}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeTable/XCUIElementTypeCell/XCUIElementTypeButton
${CONTACTS_CONTINUE_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeButton


*** Keywords ***

Request Money Mobile Number
    [Arguments]  ${RECIEVER_MOBILE_NUMBER}  ${AMOUNT}  ${NOTE}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${REQUEST_MONEY_BUTTON}
    click element  ${REQUEST_MONEY_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${MOBILE_NUMBER_ICON}
    click element  ${MOBILE_NUMBER_ICON}
    input text  ${MOBILE_NUMBER_FIELD}  ${RECIEVER_MOBILE_NUMBER}
    click element  ${DONE_BUTTON}
    click element  ${CONTINUE_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${AMOUNT_FIELD}
    input text  ${AMOUNT_FIELD}  ${AMOUNT}
    click element  ${DONE_BUTTON}
    click element  ${AMOUNT_CONTINUE_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${REQUEST_BUTTON}
    click element  ${REQUEST_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${DUE_DATE_FIELD}
    click element  ${DUE_DATE_FIELD}
    click element  ${DONE_BUTTON}
    input text  ${ADD_NOTE_FIELD}  ${NOTE}
    click element  ${REQUEST_NOW_BUTTON}
    click element  ${GO_BACK_BUTTON}


Request Money Username
    [Arguments]  ${USERNAME}  ${AMOUNT}  ${NOTE}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${REQUEST_MONEY_BUTTON}
    click element  ${REQUEST_MONEY_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${USERNAME_ICON}
    click element  ${USERNAME_ICON}
    input text  ${USERNAME_FIELD}  ${USERNAME}
    click element  ${DONE_BUTTON}
    click element  ${USERNAME_CONTINUE_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${AMOUNT_FIELD}
    input text  ${AMOUNT_FIELD}  ${AMOUNT}
    click element  ${DONE_BUTTON}
    click element  ${AMOUNT_CONTINUE_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${REQUEST_BUTTON}
    click element  ${REQUEST_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${DUE_DATE_FIELD}
    click element  ${DUE_DATE_FIELD}
    click element  ${DONE_BUTTON}
    input text  ${ADD_NOTE_FIELD}  ${NOTE}
    click element  ${REQUEST_NOW_BUTTON}
    click element  ${GO_BACK_BUTTON}



Request Money Recent
    [Arguments]  ${SELECT_RECENT_CONTACT_ABBREVIATION}  ${AMOUNT}  ${NOTE}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${RECENT_USER}
    click element  ${RECENT_USER}
    click element  ${RECENT_CONTINUE_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${AMOUNT_FIELD}
    input text  ${AMOUNT_FIELD}  ${AMOUNT}
    click element  ${DONE_BUTTON}
    click element  ${AMOUNT_CONTINUE_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${REQUEST_BUTTON}
    click element  ${REQUEST_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${DUE_DATE_FIELD}
    click element  ${DUE_DATE_FIELD}
    click element  ${DONE_BUTTON}
    input text  ${ADD_NOTE_FIELD}  ${NOTE}
    click element  ${REQUEST_NOW_BUTTON}
    click element  ${GO_BACK_BUTTON}


Request Money Contacts
    [Arguments]  ${AMOUNT}  ${NOTE}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${REQUEST_MONEY_BUTTON}
    click element  ${REQUEST_MONEY_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${CONTACTS_ICON}
    click element  ${CONTACTS_ICON}
    click element  ${CONTACT}
    click element  ${CONTACTS_CONTINUE_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${AMOUNT_FIELD}
    input text  ${AMOUNT_FIELD}  ${AMOUNT}
    click element  ${DONE_BUTTON}
    click element  ${AMOUNT_CONTINUE_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${REQUEST_BUTTON}
    click element  ${REQUEST_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${DUE_DATE_FIELD}
    click element  ${DUE_DATE_FIELD}
    click element  ${DONE_BUTTON}
    input text  ${ADD_NOTE_FIELD}  ${NOTE}
    click element  ${REQUEST_NOW_BUTTON}
    click element  ${GO_BACK_BUTTON}