*** Settings ***
Library  AppiumLibrary


*** Variables ***
${OK_GOT_IT_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton
${REPORT_BUG_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeButton
${CONTINUE_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeButton[1]
${CHOOSE_AN_APP_SCREEN_DROPDOWN}  //XCUIElementTypeImage[@name="ic_down_arrow_large"]
${DONE_BUTTON}  //XCUIElementTypeButton[@name="Done"]
${WHAT_HAPPEND_TEXT_FIELD}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTextView
${WHAT_HAPPEND}   App Crashed
${SUBMIT_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton
${BACK_TO_APP_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton


${SUGGEST_IMPROVEMENT_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[3]/XCUIElementTypeButton
${HOW_CAN_WE_IMPROVE_THINGS_TEXT_FIELD}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTextView
${IMPROVEMENT_TIPS}  need to be user friendly
${SUBMIT_SUGGESTION_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton


*** Keywords ***
FeedBack Report a Bug
    [Arguments]  ${WHAT_HAPPEND}
    sleep  5s
    shake
    wait until keyword succeeds  100s  1s   wait until page contains element  ${OK_GOT_IT_BUTTON}
    click element  ${OK_GOT_IT_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${REPORT_BUG_BUTTON}
    click element  ${REPORT_BUG_BUTTON}
    click element  ${CONTINUE_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${CHOOSE_AN_APP_SCREEN_DROPDOWN}
    click element  ${CHOOSE_AN_APP_SCREEN_DROPDOWN}
    click element  ${DONE_BUTTON}
    input text  ${WHAT_HAPPEND_TEXT_FIELD}  ${WHAT_HAPPEND}
    click element  ${DONE_BUTTON}
    click element  ${SUBMIT_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${BACK_TO_APP_BUTTON}
    click element  ${BACK_TO_APP_BUTTON}



FeedBack Suggest an Improvement
    [Arguments]  ${IMPROVEMENT_TIPS}
    sleep  5s
    shake
     wait until keyword succeeds  100s  1s   wait until page contains element  ${OK_GOT_IT_BUTTON}
    click element  ${OK_GOT_IT_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${SUGGEST_IMPROVEMENT_BUTTON}
    click element  ${SUGGEST_IMPROVEMENT_BUTTON}
    click element  ${CONTINUE_BUTTON}
     wait until keyword succeeds  100s  1s   wait until page contains element  ${CHOOSE_AN_APP_SCREEN_DROPDOWN}
    click element  ${CHOOSE_AN_APP_SCREEN_DROPDOWN}
    click element  ${DONE_BUTTON}
    input text  ${HOW_CAN_WE_IMPROVE_THINGS_TEXT_FIELD}  ${IMPROVEMENT_TIPS}
    click element  ${DONE_BUTTON}
    click element  ${SUBMIT_SUGGESTION_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${BACK_TO_APP_BUTTON}
    click element  ${BACK_TO_APP_BUTTON}