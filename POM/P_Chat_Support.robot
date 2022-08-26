*** Settings ***
Library  AppiumLibrary


*** Variables ***
${OK_GOT_IT_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton
${CHAT_WITH_US_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeButton[2]
${CHAT_TEXT_FIELD}  //XCUIElementTypeTextView[@name="Type your message here"]
${CHAT_TEXT}  Hi
${SEND_BUTTON}  //XCUIElementTypeButton[@name="Send"]
${DONE_BUTTON}  //XCUIElementTypeButton[@name="Done"]
*** Keywords ***
Chat Support
    [Arguments]  ${CHAT_TEXT}
    sleep  5s
    shake
    wait until keyword succeeds  100s  1s   wait until page contains element  ${OK_GOT_IT_BUTTON}
    click element  ${OK_GOT_IT_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${CHAT_WITH_US_BUTTON}
    click element  ${CHAT_WITH_US_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${CHAT_TEXT_FIELD}
    click element  ${CHAT_TEXT_FIELD}
    input text  ${CHAT_TEXT_FIELD}   ${CHAT_TEXT}
    click element  ${SEND_BUTTON}
    click element  ${DONE_BUTTON}