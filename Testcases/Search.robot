*** Settings ***
Resource  ../Resource/Common.robot
Resource  ../Resource/HomepageDef.robot
Resource  ../Resource/Resultpagedef.robot
Resource  ../Resource/search.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test


*** Variables ***
${FlipkartURL} =  https://flipkart.com
${searchProduct} =  TV

*** Test Cases ***
Serch the product
    Open Application
    Search the Product
    Verify Search results
user must be able to Filter through brands
   Open Application
   Search the Product
   Verify Search results
   select the brand category and verify the results 
user must be able to Filter products through ratings
   Open Application
   Search the Product
   Verify Search results
   select the rating category and verify the results 
User must be able to filter products through Price
   Open Application
   Search the Product
   Verify Search results
   Select the price range and verify results
User must be able to filter products through discount
   Open Application
   Search the Product
   Verify Search results
   Select the discount category and verify results
