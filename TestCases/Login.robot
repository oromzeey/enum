*** Settings ***
Documentation       This is enum automation Testing

Resource            ../resources/page_object.robot

#Test Setup          Launch Browser
#Test Teardown       Terminate Browser



*** Variables ***
${login url}              https://lamp-frontend.herokuapp.com/
${Browser}                gc


*** Test Cases ***
Launch Browser
     Open Browser    ${login url}      gc
     maximize browser window
I login to the website
    Then Login

Go to classroom
    click element                     css:#apps
    click element                     css:#classroom
    sleep                             10s
    wait until page contains          Welcome, Chika!
    page should contain               Welcome, Chika!
    click element                     css:div.v-application.v-application--is-ltr.theme--light div.v-application--wrap main.v-main div.v-main__wrap div.restOfPage:nth-child(2) div.v-skeleton-loader.theme--light div.row div.col-sm-6.col-md-8.col div:nth-child(2) div.row div.col-md-2.col a.rounded-lg.v-card.v-card--link.v-sheet.v-sheet--outlined.theme--light > div.d-flex.flex-column.pt-14.align-center

Terminate Browser window
    close window











