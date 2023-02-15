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
${searchProduct} =  TV

*** Test Cases ***
Verify clicking on grocery opens grocery page
   Open Application
   Open the grocery page
   Check whether the grocery page opens successfully
Verify clicking on fashion opens fashion page
   Open Application
   Open the fashion page
   Check whether the fashion page opens successfully
verify clicking on Electronics open Electronics page 
   Open Application
   Open the electronics page
   Check whether the electronics page opens successfully
verify clicking on Home open Home page 
   Open Application
   Open the home page
   Check whether the home page opens successfully
verify clicking on Appliances open Appliances page 
   Open Application
   Open the appliances page
   Check whether the appliances page opens successfully
verify clicking on Travel open Travel page 
   Open Application
   Open the travel page
   Check whether the travel page opens successfully
verify clicking on Top Offers open Top Offers page 
   Open Application
   Open the Top Offers page
   Check whether the Top Offers page opens successfully
verify clicking on Beauty, Toys & More open Beauty, Toys & More page 
   Open Application
   Open the Beauty, Toys & More page
   Check whether the Beauty, Toys & More page opens successfully
verify clicking on Two Wheelers open Two Wheelers page 
   Open Application
   Open the Two Wheelers page
   Check whether the Two Wheelers opens successfully
User must be able to click on the images after search
   Open Application
   Search the Product
   Verify Search results
   HomepageDef.Verify whether the image is being selected
