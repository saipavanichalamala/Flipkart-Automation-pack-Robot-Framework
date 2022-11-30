*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${FlipkartURL}
${searchProduct}
*** Keywords ***
verify search results displayed
    Wait Until Page Contains  results for "${searchProduct}"