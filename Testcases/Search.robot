*** Settings ***
Resource  ../Resource/Common.robot
Resource  ../Resource/HomepageDef.robot
Resource  ../Resource/Resultpagedef.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test


*** Variables ***
${FlipkartURL} =  https://flipkart.com
${searchProduct} =  Apple Mobile

*** Test Cases ***
Serching the product
    Open Application
    Search the Product
    Verify Search results
