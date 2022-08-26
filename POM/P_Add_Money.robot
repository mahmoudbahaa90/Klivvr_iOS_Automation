*** Settings ***
Library  AppiumLibrary



*** Variables ***
${ADD_MONEY_BUTTON}  //XCUIElementTypeStaticText[@name="Add money"]
${ADD_MONEY_AMOUNT}  //XCUIElementTypeStaticText[@name="500"]
${ADD_MONEY_BUTTON}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeButton[2]
${CARD_TYPE}  //XCUIElementTypeOther[@name="Card Type *"]/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]
${CARD_NUMBER_FIELD}  //XCUIElementTypeOther[@name="Payment Details"][2]/XCUIElementTypeTextField[1]
${CARD_NUMBER}  4456530000001005
${EXPIRATION_MONTH}  //XCUIElementTypeOther[@name="Payment Details"][2]/XCUIElementTypeOther[5]/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]
${EXPIRATION_YEAR}  //XCUIElementTypeOther[@name="Payment Details"][2]/XCUIElementTypeOther[5]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]
${CVV_FIELD}  //XCUIElementTypeOther[@name="Payment Details"][2]/XCUIElementTypeTextField[2]
${CVV}  123
${DONE_BUTTON}  //XCUIElementTypeButton[@name="Done"]
${PAY_BUTTON}  //XCUIElementTypeButton[@name="Pay"]


*** Keywords ***
Add Money
    wait until keyword succeeds  100s  1s   wait until page contains element  ${ADD_MONEY_BUTTON}
    click element  ${ADD_MONEY_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${ADD_MONEY_AMOUNT}
    click element  ${ADD_MONEY_AMOUNT}
    click element  ${ADD_MONEY_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${CARD_TYPE}
    click element  ${CARD_TYPE}
    click element  ${CARD_NUMBER_FIELD}
    input text  ${CARD_NUMBER_FIELD}  ${CARD_NUMBER}
    click element  ${EXPIRATION_MONTH}
    click element  ${EXPIRATION_MONTH}
    click element  ${EXPIRATION_YEAR}
    click element  ${EXPIRATION_YEAR}
    click element  ${CVV_FIELD}
    input text  ${CVV_FIELD}  ${CVV}
    click element  ${DONE_BUTTON}
    click element   ${PAY_BUTTON}
