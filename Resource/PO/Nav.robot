*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${FlipkartURL}
${searchProduct}
${Homepagelogin}=  xpath=//a[text()="Login"]
${login} =  xpath=//span[text()="Login"]

*** Keywords ***
Search For Product
    Input Text  css=form.header-form-search>div>div>input  ${searchProduct}
    Click Element  css=form.header-form-search>div>button
Click menu
    Click Link  Grocery
    Wait Until Page Contains Element  css=div>div>div>div>div>div>div>form>div>button
open fashion page
    # Mouse Over  css=body > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(3) > a:nth-child(1) > div:nth-child(2) > div:nth-child(1)
    Mouse Down On Link  Fashion
    sleep  2s
    Click Link  Women Ethnic
    Wait Until Page Contains  Women Ethnic Wear
Open electronics page
    Mouse Down On Link  Electronics
    sleep  2s
    Click Link  Gaming
    Wait Until Page Contains  Gaming
Open home page
    Mouse Down On Link  Home
    sleep  2s
    Click Link  Living Room Furniture
    Wait Until Page Contains  Livingroom Furniture
Open the appliances page
    Click Link  Appliances
    sleep  2s
    Wait Until Page Contains   TVs and Appliances
Open the travel page
    Click Link  Travel
    sleep  2s
    Wait Until Page Contains   Round Trip
Open Top Offers page
    Click Link   Top Offers
    sleep  2s
    #Wait Until Page Contains  Something's not right!
    Wait Until Page Contains   Deals of the Day
Open Beauty, Toys & More page
    Mouse Down On Link  Beauty, Toys & More
    sleep  2s
    Click Link  Food & Drinks
    Wait Until Page Contains  Food Products
Open Two Wheelers page
    Mouse Down On Link  Two Wheelers
    sleep  2s
    Click Link  Electric Vehicles
    Wait Until Page Contains  Electric Vehicles Store
verify username is not available
   Element Text Should Be  ${Homepagelogin}  Login
verify myprofile
   Mouse Over  ${Homepagelogin}
   Click Link  My Profile
   Wait Until Page Contains Element   ${login}
   Page Should Contain Element  ${login}
verify orders
   Mouse Over  ${Homepagelogin}
   Click Link  Orders
   Wait Until Page Contains Element   ${login}
   Page Should Contain Element  ${login}
wishlist
   Mouse Over  ${Homepagelogin}
   Click Link  Wishlist
   Wait Until Page Contains Element   ${login}
   Page Should Contain Element  ${login}
verify my account appears for loggedin user
    Element Text Should Be    ${Homepagelogin}   My Account
