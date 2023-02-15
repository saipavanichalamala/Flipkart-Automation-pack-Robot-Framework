*** Settings ***
Resource  ../Resource/Common.robot
Resource  ../Resource/HomepageDef.robot
Resource  ../Resource/Flipkartt.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${Browser}
${FlipkartURL} =  https://flipkart.com
${searchProduct} =  Iphone

*** Test Cases ***
Adding item to cart
  Open Application
  Search the Product
  Verify Search results
  Add first item to the cart
  Placing the order
  verify the signing page appears to checkout

Adding item to wishlist
  Open Application
  Search the Product
  Verify Search results
  Adding first product to wishlist
  verify login or signup page appears

Verify username doesn't appear 
   Open Application
   verify username not available

Verify options in Login 
   Open Application
   verify the options on login button
