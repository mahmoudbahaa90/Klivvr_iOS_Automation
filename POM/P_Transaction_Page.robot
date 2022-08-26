*** Settings ***
Library  AppiumLibrary


*** Variables ***
${TRANSACTIONS_PAGE}  //XCUIElementTypeButton[@name="ic history"]
${TRANSACTION_DETAILS}  //XCUIElementTypeApplication[@name="Klivvr QA"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeTable/XCUIElementTypeCell

*** Keywords ***
Tranasctions Page
    wait until keyword succeeds  100s  1s   wait until page contains element  ${TRANSACTIONS_PAGE}
    click element  ${TRANSACTIONS_PAGE}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${TRANSACTION_DETAILS}
    click element  ${TRANSACTION_DETAILS}