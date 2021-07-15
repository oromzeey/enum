*** Settings ***
Documentation    Automation test

Library          SeleniumLibrary



*** Variables ***
Launch Browser
    [Arguments]         ${element}      ${Browser}
    Open Browser        ${element}      ${Browser}
    Maximize Browser Window

#${url}               https://lamp-frontend.herokuapp.com
#${browser}           gc



*** Keywords ***
Login
    wait until page contains          LOGIN
     page should contain button       LOGIN
     sleep                            5s
     click button                     css=#login
     page should contain element      css:#email
     click element                    css:#email
     input text                       css:#email        chika@mailpoof.com
     click element                    css=#password
     input password                   css:#password      123pass321
     click element                    xpath://button[@type='submit']
     sleep                            10s
     page should contain image        css:img[src='/img/Enum.cfb3ba9d.svg']
     page should contain element      css:#apps
     click element                    css:#apps

Close Browser


