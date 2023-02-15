*** Settings ***
Resource  ./PO/resultpage.robot

*** Keywords ***
Verify Search results
    resultpage.verify search results displayed
Check whether the fashion page opens successfully
   resultpage.verify fashion page
Check whether the electronics page opens successfully
   resultpage.verify electronics page
Check whether the home page opens successfully
   resultpage.verify home page
Check whether the appliances page opens successfully
   resultpage.verify appliances page
Check whether the travel page opens successfully
   resultpage.verify travel page
Check whether the Top Offers page opens successfully
   resultpage.verify Top Offers page
Check whether the Beauty, Toys & More page opens successfully
   resultpage.verify Beauty, Toys & More page
Check whether the Two Wheelers opens successfully
   resultpage.verify Two Wheelers page
verify the signing page appears to checkout
  resultpage.verify signing page appears to checkout
verify login or signup page appears
   resultpage.verify the login or signup page appears