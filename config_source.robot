*** Settings ***
Library    AppiumLibrary
Resource    steps.robot        ##conectando com a pasta


*** Keywords ***
Abrir app solar+
    Open Application   http://localhost:4723/wd/hub
    ...                appium:automationName=UiAutomator2
    ...                platformName=Android
    ...                appium:deviceName=xiaomi
    ...                appium:app=C:\\Users\\quems\\Desktop\\solar_cocaCola\\mnStore\\android\\app\\build\\outputs\\apk\\debug\\app-debug.apk       
    ...                appium:udid=17fbb02b

    # Wait Until Element Is Visible     accessibility_id=card-hero    10     ##Verifica se esta no local certo

Fechar app
    Capture Page Screenshot
    Close Application
