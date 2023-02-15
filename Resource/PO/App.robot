*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${FlipkartURL}
${First product} =  xpath=//*[@id="container"]/div/div[3]/div/div[2]/div[2]
${Add to cart}=  xpath=//button[text()="Add to cart"]
${Placing order} =  xpath=//*[@id="container"]/div/div[2]/div/div/div[1]/div/div[4]/div/form/button
${add to wishlist}=  xpath=//*[@id="container"]/div/div[3]/div[1]/div[2]/div[2]/div/div/div/a/div[1]/div[3]/div
${Homepagelogin}=  xpath=//a[text()="Login"]
${login} =  xpath=//span[text()="Login"]
${Input text}=   xpath=//*[@id="container"]/div/div[3]/div/div[2]/div/form/div[1]/input
${Request OPT}=  xpath=//button[text()="Request OTP"]
${account verify}=  xpath=//button[text()="Verify"]
*** Keywords ***
Open the application
    Go To  ${FlipkartURL}
    Wait Until Page Contains Element  css=div>div>div>button
    sleep  1s
    Click Element  css=div>div>div>button
Adding first item to cart
  Click Element  ${First product}
  Switch Window  locator=NEW
  Click Button  ${Add to cart}
  Wait Until Page Contains Element  ${Placing order}
Placing order
   Click Button  ${Placing order}
Adding first item to wishlist
   Click Element  ${add to wishlist}
Navigate to signin page via myprofile
   Mouse Over  ${Homepagelogin}
   Click Link  My Profile
   Wait Until Page Contains Element   ${Input text}  
Enter mandatory fields
   Page Should Contain Element  ${Input text}
   Click Element  ${Input text}
   Input Text  ${Input text}   7989185474
   sleep  3s
   Click Button  ${Request OPT}
   Wait Until Page Contains  ${account verify}
   Click Button  ${account verify}
Verify whether the image is being selected
   Click Element  ${First product}
   Switch Window  locator=NEW
   Wait Until Page Contains Element   //*[@id="container"]/div/div[3]/div[1]/div[1]/div[1]/div/div[1]/div[2]/div[1]/div[2]/img
   Page Should Contain Element   //*[@id="container"]/div/div[3]/div[1]/div[1]/div[1]/div/div[1]/div[2]/div[1]/div[2]/img
   sleep  3s
   @{thumbnailImages} =  Get WebElements  //*[@id="container"]/div/div[3]/div[1]/div[1]/div[1]/div/div[1]/div[1]/div/div[1]/ul/li
   FOR  ${thumbnail}  IN  @{thumbnailImages}
      Scroll Element Into View  ${thumbnail}
      Click Element  ${thumbnail}
      sleep  2s
   END
   

