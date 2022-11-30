*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${FlipkartURL}
${searchProduct}
*** Keywords ***
Search For Product
    Input Text  css=form.header-form-search>div>div>input  ${searchProduct}
    Click Element  css=form.header-form-search>div>button