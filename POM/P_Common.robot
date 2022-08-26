*** Settings ***
Library  AppiumLibrary
Library  Process
Resource  ../POM/P_Login.robot


*** Keywords ***

Open App
    Open application
    ...    http://localhost:4723/wd/hub
    ...    platformVersion = 15.5
    ...    deviceName=iPhone 13 Pro Max
    ...    udid=39084A51-AF7E-4A10-B8BC-2FD275F345DB
    ...    automationName=XCUITest
    ...    app=/Users/ahmedafifi/Documents/Klivvr/Klivvr3/Klivvr QA.app
    ...    bundleId=com.klivvr.consumer.dev
    ...    appActivity=com.klivvr.consumer.app.ui.MainActivity
    ...    appWaitPackage=com.klivvr.consumer.qa
    ...    platformName=iOS


Run Automatic Appium Server
    start process  appium -a localhost -p 4723  shell=True  alias=/Users/ahmedafifi/Documents/Klivvr/Klivvr3/Klivvr QA.app  stdout=${CURDIR}/appium_stdout.txt  stderr=${CURDIR}/appium_stderr.txt
    process should be running    appiumserver
    sleep    10s



Kill Appium Server
    terminate process  appiumserver    kill=True

Close App
    close application


SuiteSetUpKW
    [Arguments]  ${MOBILE_NUMBER}  ${OTP}  ${PASSCODE}
#    Run Automatic Appium Server
    Open App
    Login With Mobile Number  ${MOBILE_NUMBER}  ${OTP}  ${PASSCODE}


SuiteTeardownKW
    Sleep       2s
    Close App
    Kill Appium Server

