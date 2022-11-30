*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${FlipkartURL}
*** Keywords ***
Open the application
    Go To  ${FlipkartURL}
    Wait Until Element Is Visible  css=div>div>div>button
    Click Element  css=div>div>div>button