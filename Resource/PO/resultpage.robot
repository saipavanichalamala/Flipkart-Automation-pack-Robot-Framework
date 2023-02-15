*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${FlipkartURL}
${searchProduct} =  Iphone
${login or signup}=  xpath=//*[@id="container"]/div/div[2]/div/div[1]/div[1]/div/h3
${Placing order} =  xpath=//*[@id="container"]/div/div[2]/div/div/div[1]/div/div[4]/div/form/button
*** Keywords ***
verify search results displayed
    sleep  5s
    Wait Until Page Contains  results for "${searchProduct}"
Verifying the grocery page
    Page Should Contain Element  css=div>div>div>div>div>div>div>form>div>button
verify fashion page
    Page Should Contain  Women Ethnic Wear
verify electronics page
    Page Should Contain  Gaming
verify home page
   Page Should Contain   Livingroom Furniture
verify appliances page
  Page Should Contain   TVs and Appliances
verify travel page
  Page Should Contain  Round Trip
verify Top Offers page
   #Page Should Contain  Deals of the Day
   Page Should Contain  Something's not right!
verify Beauty, Toys & More page
   Page Should Contain  Food Products
verify Two Wheelers page
    Page Should Contain   Electric Vehicles Store
verify signing page appears to checkout
   Page Should Contain Element  ${login or signup}
verify the login or signup page appears
    Wait Until Page Contains Element  css=div>div>div>button
    Page Should Contain Element   css=div>div>div>button