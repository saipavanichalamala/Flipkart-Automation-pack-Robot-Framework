*** Settings ***
Resource  ./PO/App.robot
Resource  ./PO/Nav.robot
Resource  ../Resource/Resultpagedef.robot


*** Keywords ***
Open Application
   App.Open the application
Search the Product
   Nav.Search For Product
Open the grocery page
   Nav.click menu
Check whether the grocery page opens successfully
   resultpage.Verifying the grocery page
Open the fashion page
   nav.open fashion page
Open the electronics page
   nav.Open electronics page
Open the home page
   nav.Open home page
Open the Top Offers page
   nav.Open Top Offers page
Open the Beauty, Toys & More page
   nav.Open Beauty, Toys & More page
Open the Two Wheelers page
   Nav.Open Two Wheelers page
verify username not available
   Nav.verify username is not available
verify the options on login button
   Nav.verify myprofile
   Nav.verify orders
   Nav.wishlist
verify my account is appears for loggedin user
   Nav.verify my account appears for loggedin user  
Navigate to signin page
   App.Navigate to signin page via myprofile
Enter the mandatory fields
   App.Enter mandatory fields
Verify whether the image is being selected
   App.Verify whether the image is being selected