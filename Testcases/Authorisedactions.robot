*** Settings ***
Resource  ../Resource/Common.robot
Resource  ../Resource/HomepageDef.robot
Resource  ../Resource/Resultpagedef.robot
Resource  ../Resource/Flipkartt.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${Browser}
${FlipkartURL} =  https://flipkart.com


*** Test Cases ***
User must see my acccount for logged in user
   Open Application
   Navigate to signin page
   Enter the mandatory fields
   verify my account is appears for loggedin user




