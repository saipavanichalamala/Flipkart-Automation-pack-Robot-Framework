*** Settings ***
Library  SeleniumLibrary
Library  String
Library  Collections
*** Variables ***
${Brand_name}
${customer_rating}
${blank}
${plus} =  '+'
*** Keywords ***
Select first category and verify results
   Wait Until Page Contains Element  xpath=//section[4]/div[2]/div[1]/div[2]/div/label/div[1]
   ${Brandname} =  Get Text  xpath=//section[4]/div[2]/div[1]/div[2]/div/label/div[2]
   Click Element  xpath=//section[4]/div[2]/div[1]/div[2]/div/label/div[1]
   sleep  5s
   @{Product_headings} =  Get WebElements  css=#container > div > div > div > div:nth-child(2) > div > div > div > div > a > div > div.col.col-7-12 > div:nth-child(1)
   FOR  ${product_heading}  IN  @{Product_headings}
      ${product_name} =  Get Text  ${product_heading}
      Should Contain   ${product_name}  ${Brandname}  ignore_case=True
   END

Select second category and verify results
   Wait Until Page Contains Element  xpath=//section[4]/div[2]/div[1]/div[3]/div/label/div[1]
   ${Brandname} =  Get Text  xpath=//section[4]/div[2]/div[1]/div[3]/div/label/div[2]
   Click Element  xpath=//section[4]/div[2]/div[1]/div[3]/div/label/div[1]
   sleep  5s
   @{Product_headings} =  Get WebElements  css=#container > div > div > div > div:nth-child(2) > div > div > div > div > a > div > div.col.col-7-12 > div:nth-child(1)
   FOR  ${product_heading}  IN  @{Product_headings}
      ${product_name} =  Get Text  ${product_heading}
      Should Contain   ${product_name}  ${Brandname}  ignore_case=True
   END

Select third category and verify results
   Wait Until Page Contains Element  xpath=//section[4]/div[2]/div[1]/div[4]/div/label/div[1]
   ${Brandname} =  Get Text  xpath=//section[4]/div[2]/div[1]/div[4]/div/label/div[2]
   Click Element  xpath=//section[4]/div[2]/div[1]/div[4]/div/label/div[1]
   sleep  5s
   @{Product_headings} =  Get WebElements  css=#container > div > div > div > div:nth-child(2) > div > div > div > div > a > div > div.col.col-7-12 > div:nth-child(1)
   FOR  ${product_heading}  IN  @{Product_headings}
      ${product_name} =  Get Text  ${product_heading}
      Should Contain   ${product_name}  ${Brandname}  ignore_case=True
   END

Select fourth category and verify results
   Wait Until Page Contains Element  xpath=//section[4]/div[2]/div[1]/div[5]/div/label/div[1]
   ${Brandname} =  Get Text  xpath=//section[4]/div[2]/div[1]/div[5]/div/label/div[2]
   Click Element  xpath=//section[4]/div[2]/div[1]/div[5]/div/label/div[1]
   sleep  5s
   @{Product_headings} =  Get WebElements  css=#container > div > div > div > div:nth-child(2) > div > div > div > div > a > div > div.col.col-7-12 > div:nth-child(1)
   FOR  ${product_heading}  IN  @{Product_headings}
      ${product_name} =  Get Text  ${product_heading}
      Should Contain   ${product_name}  ${Brandname}  ignore_case=True
   END

Select fifth category and verify results
   Wait Until Page Contains Element  xpath=//section[4]/div[2]/div[1]/div[6]/div/label/div[1]
   ${Brandname} =  Get Text  xpath=//section[4]/div[2]/div[1]/div[6]/div/label/div[2]
   Click Element  xpath=//section[4]/div[2]/div[1]/div[6]/div/label/div[1]
   sleep  5s
   @{Product_headings} =  Get WebElements  css=#container > div > div > div > div:nth-child(2) > div > div > div > div > a > div > div.col.col-7-12 > div:nth-child(1)
   FOR  ${product_heading}  IN  @{Product_headings}
      ${product_name} =  Get Text  ${product_heading}
      Should Contain   ${product_name}  ${Brandname}  ignore_case=True
   END

Select sixth category and verify results
   Wait Until Page Contains Element  xpath=//section[4]/div[2]/div[1]/div[7]/div/label/div[1]
   ${Brandname} =  Get Text  xpath=//section[4]/div[2]/div[1]/div[7]/div/label/div[2]
   Click Element  xpath=//section[4]/div[2]/div[1]/div[7]/div/label/div[1]
   sleep  5s
   @{Product_headings} =  Get WebElements  css=#container > div > div > div > div:nth-child(2) > div > div > div > div > a > div > div.col.col-7-12 > div:nth-child(1)
   FOR  ${product_heading}  IN  @{Product_headings}
      ${product_name} =  Get Text  ${product_heading}
      Should Contain   ${product_name}  ${Brandname}  ignore_case=True
   END

Select first rating category and verify results
   Wait Until Page Contains Element  xpath=//section[14]/div[2]/div/div[1]/div/label/div[1]
   Click Element  xpath=//section[14]/div[2]/div/div[1]/div/label/div[1]
   sleep  5s
   @{Product_ratings} =  Get WebElements  //span[contains(@id,'productRating')]
   FOR  ${product_rating}  IN  @{Product_ratings}
      ${displayed_rating} =  Get Text  ${product_rating}
      ${displayed_rating} =  Fetch From Left  ${displayed_rating}  .
      #${displayed_rating} =  Convert To Integer  ${displayed_rating}
      Should Contain any  '${displayed_rating}'  4  5
   END

Select second rating category and verify results
   Wait Until Page Contains Element  xpath=//section[14]/div[2]/div/div[2]/div/label/div[1]
   Click Element  xpath=//section[14]/div[2]/div/div[2]/div/label/div[1]
   sleep  5s
   @{Product_ratings} =  Get WebElements  //span[contains(@id,'productRating')]
   FOR  ${product_rating}  IN  @{Product_ratings}
      ${displayed_rating} =  Get Text  ${product_rating}
      ${displayed_rating} =  Fetch From Left  ${displayed_rating}  .
      Should Contain any  '${displayed_rating}'  3  4  5
   END

Select third rating category and verify results
   Wait Until Page Contains Element  xpath=//section[14]/div[2]/div/div[3]/div/label/div[1]
   Click Element  xpath=//section[14]/div[2]/div/div[3]/div/label/div[1]
   sleep  5s
   @{Product_ratings} =  Get WebElements  //span[contains(@id,'productRating')]
   FOR  ${product_rating}  IN  @{Product_ratings}
      ${displayed_rating} =  Get Text  ${product_rating}
      ${displayed_rating} =  Fetch From Left  ${displayed_rating}  .
      Should Contain any  '${displayed_rating}'  2  3  4  5
   END

Select fourth rating category and verify results
   Wait Until Page Contains Element  xpath=//section[14]/div[2]/div/div[4]/div/label/div[1]
   Click Element  xpath=//section[14]/div[2]/div/div[4]/div/label/div[1]
   sleep  5s
   @{Product_ratings} =  Get WebElements  //span[contains(@id,'productRating')]
   FOR  ${product_rating}  IN  @{Product_ratings}
      ${displayed_rating} =  Get Text  ${product_rating}
      ${displayed_rating} =  Fetch From Left  ${displayed_rating}  .
      Should Contain any  '${displayed_rating}'  1  2  3  4  5
   END
Select the minimum price range and verify results
   Wait Until Page Contains Element   //section[2]/div[4]/div[1]/select
   # Click Element   //section[2]/div[4]/div[1]/select
   # Click Element   //section[2]/div[4]/div[1]/select/option[2]
   ${minRangeText} =  Get Text  //section[2]/div[4]/div[1]/select/option[1]
   ${minRangeText} =  Replace String  ${minRangeText}  ₹  ${blank}
   IF  '${minRangeText}' != 'Min'
      ${minRangeText} =  Convert To Integer  ${minRangeText} 
   END
   @{maxRanges} =  Get WebElements  //section[2]/div[4]/div[3]/select/option
   Click Element  //section[2]/div[4]/div[3]/select
   FOR  ${maxRange}  IN  @{maxRanges}
      ${maxRangeText} =  Get Text  ${maxRange}
      ${maxRangeText} =  Replace String  ${maxRangeText}  ₹  ${blank}  
      ${plusIcon} =  Get Element Attribute  ${maxRange}   value
      IF  '${plusIcon}' != 'Max'
         ${maxRangeText} =  Replace String  ${maxRangeText}  +  ${blank}
         ${maxRangeText} =  Convert To Integer  ${maxRangeText} 
         Click Element  ${maxRange}
         sleep  3s
         @{productPrices} =  Get WebElements  //*[@id="container"]/div/div[3]/div[1]/div[2]/div/div/div/div/a/div[2]/div[2]/div[1]/div[1]/div[1]
         FOR  ${productPrice}  IN  @{productPrices}
            ${productPriceText} =  Get Text  ${productPrice}
            ${productPriceText} =  Replace string  ${productPriceText}  ₹  ${blank} 
            ${productPriceText} =  Replace string  ${productPriceText}  ,  ${blank}
            ${productPriceText} =  Convert To Integer  ${productPriceText}
            IF  ${productPriceText} <= ${maxRangeText}
               Log  ${productPriceText}  
            ELSE
               Fail  Product Price ${productPriceText} is greater than the ${maxRangeText}    
            END         
         END 
      END
   END

Select the first price range and verify results
   Wait Until Page Contains Element   //section[2]/div[4]/div[1]/select
   Click Element   //section[2]/div[4]/div[1]/select
   Click Element   //section[2]/div[4]/div[1]/select/option[2]
   sleep  3s
   ${minRangeText} =  Get Text  //section[2]/div[4]/div[1]/select/option[2]
   ${minRangeText} =  Replace String  ${minRangeText}  ₹  ${blank}
   IF  '${minRangeText}' != 'Min'
      ${minRangeText} =  Convert To Integer  ${minRangeText} 
   END
   @{maxRanges} =  Get WebElements  //section[2]/div[4]/div[3]/select/option
   Click Element  //section[2]/div[4]/div[3]/select
   FOR  ${maxRange}  IN  @{maxRanges}
      ${maxRangeText} =  Get Text  ${maxRange}
      ${maxRangeText} =  Replace String  ${maxRangeText}  ₹  ${blank}  
      ${plusIcon} =  Get Element Attribute  ${maxRange}   value
      IF  '${plusIcon}' != 'Max'
         ${maxRangeText} =  Replace String  ${maxRangeText}  +  ${blank}
         ${maxRangeText} =  Convert To Integer  ${maxRangeText} 
         Click Element  ${maxRange}
         sleep  3s
         @{productPrices} =  Get WebElements  //*[@id="container"]/div/div[3]/div[1]/div[2]/div/div/div/div/a/div[2]/div[2]/div[1]/div[1]/div[1]
         FOR  ${productPrice}  IN  @{productPrices}
            ${productPriceText} =  Get Text  ${productPrice}
            ${productPriceText} =  Replace string  ${productPriceText}  ₹  ${blank} 
            ${productPriceText} =  Replace string  ${productPriceText}  ,  ${blank}
            ${productPriceText} =  Convert To Integer  ${productPriceText}
            IF  ${productPriceText} <= ${maxRangeText} and ${productPriceText} >= ${minRangeText}
               Log  ${productPriceText}  
            ELSE
               Fail  Product Price ${productPriceText} is not in the range of minimum price range ${minRangeText} to maximum price range ${maxRangeText}    
            END         
         END 
      END
   END

Select the second price range and verify results
   Wait Until Page Contains Element   //section[2]/div[4]/div[1]/select
   Click Element   //section[2]/div[4]/div[1]/select
   Click Element   //section[2]/div[4]/div[1]/select/option[3]
   sleep  3s
   ${minRangeText} =  Get Text  //section[2]/div[4]/div[1]/select/option[3]
   ${minRangeText} =  Replace String  ${minRangeText}  ₹  ${blank}
   IF  '${minRangeText}' != 'Min'
      ${minRangeText} =  Convert To Integer  ${minRangeText} 
   END
   @{maxRanges} =  Get WebElements  //section[2]/div[4]/div[3]/select/option
   Click Element  //section[2]/div[4]/div[3]/select
   FOR  ${maxRange}  IN  @{maxRanges}
      ${maxRangeText} =  Get Text  ${maxRange}
      ${maxRangeText} =  Replace String  ${maxRangeText}  ₹  ${blank}  
      ${plusIcon} =  Get Element Attribute  ${maxRange}   value
      IF  '${plusIcon}' != 'Max'
         ${maxRangeText} =  Replace String  ${maxRangeText}  +  ${blank}
         ${maxRangeText} =  Convert To Integer  ${maxRangeText} 
         Click Element  ${maxRange}
         sleep  3s
         @{productPrices} =  Get WebElements  //*[@id="container"]/div/div[3]/div[1]/div[2]/div/div/div/div/a/div[2]/div[2]/div[1]/div[1]/div[1]
         FOR  ${productPrice}  IN  @{productPrices}
            ${productPriceText} =  Get Text  ${productPrice}
            ${productPriceText} =  Replace string  ${productPriceText}  ₹  ${blank} 
            ${productPriceText} =  Replace string  ${productPriceText}  ,  ${blank}
            ${productPriceText} =  Convert To Integer  ${productPriceText}
            IF  ${productPriceText} <= ${maxRangeText} and ${productPriceText} >= ${minRangeText}
               Log  ${productPriceText}  
            ELSE
               Fail  Product Price ${productPriceText} is not in the range of minimum price range ${minRangeText} to maximum price range ${maxRangeText}    
            END         
         END           
      END
   END

Select the third price range and verify results
   Wait Until Page Contains Element   //section[2]/div[4]/div[1]/select
   Click Element   //section[2]/div[4]/div[1]/select
   Click Element   //section[2]/div[4]/div[1]/select/option[4]
   sleep  5s
   ${minRangeText} =  Get Text  //section[2]/div[4]/div[1]/select/option[4]
   ${minRangeText} =  Replace String  ${minRangeText}  ₹  ${blank}
   IF  '${minRangeText}' != 'Min'
      ${minRangeText} =  Convert To Integer  ${minRangeText} 
   END
   @{maxRanges} =  Get WebElements  //section[2]/div[4]/div[3]/select/option
   Click Element  //section[2]/div[4]/div[3]/select
   FOR  ${maxRange}  IN  @{maxRanges}
      ${maxRangeText} =  Get Text  ${maxRange}
      ${maxRangeText} =  Replace String  ${maxRangeText}  ₹  ${blank}  
      ${plusIcon} =  Get Element Attribute  ${maxRange}   value
      IF  '${plusIcon}' != 'Max'
         ${maxRangeText} =  Replace String  ${maxRangeText}  +  ${blank}
         ${maxRangeText} =  Convert To Integer  ${maxRangeText} 
         Click Element  ${maxRange}
         sleep  5s
         @{productPrices} =  Get WebElements  //*[@id="container"]/div/div[3]/div[1]/div[2]/div/div/div/div/a/div[2]/div[2]/div[1]/div[1]/div[1]
         FOR  ${productPrice}  IN  @{productPrices}
            ${productPriceText} =  Get Text  ${productPrice}
            ${productPriceText} =  Replace string  ${productPriceText}  ₹  ${blank} 
            ${productPriceText} =  Replace string  ${productPriceText}  ,  ${blank}
            ${productPriceText} =  Convert To Integer  ${productPriceText}
            IF  ${productPriceText} <= ${maxRangeText} and ${productPriceText} >= ${minRangeText}
               Log  ${productPriceText}  
            ELSE
               Fail  Product Price ${productPriceText} is not in the range of minimum price range ${minRangeText} to maximum price range ${maxRangeText}    
            END         
         END  
      END
   END

Select the fourth price range and verify results
   Wait Until Page Contains Element   //section[2]/div[4]/div[1]/select
   Click Element   //section[2]/div[4]/div[1]/select
   Click Element   //section[2]/div[4]/div[1]/select/option[5]
   sleep  3s
   ${minRangeText} =  Get Text  //section[2]/div[4]/div[1]/select/option[5]
   ${minRangeText} =  Replace String  ${minRangeText}  ₹  ${blank}
   IF  '${minRangeText}' != 'Min'
      ${minRangeText} =  Convert To Integer  ${minRangeText} 
   END
   @{maxRanges} =  Get WebElements  //section[2]/div[4]/div[3]/select/option
   Click Element  //section[2]/div[4]/div[3]/select
   FOR  ${maxRange}  IN  @{maxRanges}
      ${maxRangeText} =  Get Text  ${maxRange}
      ${maxRangeText} =  Replace String  ${maxRangeText}  ₹  ${blank}  
      ${plusIcon} =  Get Element Attribute  ${maxRange}   value
      IF  '${plusIcon}' != 'Max'
         ${maxRangeText} =  Replace String  ${maxRangeText}  +  ${blank}
         ${maxRangeText} =  Convert To Integer  ${maxRangeText} 
         Click Element  ${maxRange}
         sleep  3s
         @{productPrices} =  Get WebElements  //*[@id="container"]/div/div[3]/div[1]/div[2]/div/div/div/div/a/div[2]/div[2]/div[1]/div[1]/div[1]
         FOR  ${productPrice}  IN  @{productPrices}
            ${productPriceText} =  Get Text  ${productPrice}
            ${productPriceText} =  Replace string  ${productPriceText}  ₹  ${blank} 
            ${productPriceText} =  Replace string  ${productPriceText}  ,  ${blank}
            ${productPriceText} =  Convert To Integer  ${productPriceText}
            IF  ${productPriceText} <= ${maxRangeText} and ${productPriceText} >= ${minRangeText}
               Log  ${productPriceText}  
            ELSE
               Fail  Product Price ${productPriceText} is not in the range of minimum price range ${minRangeText} to maximum price range ${maxRangeText}    
            END         
         END  
      END
   END
Select first discount category and verify the results
   Wait Until Page Contains Element  //section[17]/div[1]/div
   Click Element   //section[17]/div[1]/div
   sleep  3s
   Wait Until Page Contains Element   //section[17]/div[2]/div/div[1]/div/label/div[1]
   ${discountCategory} =  Get Text  //section[17]/div[2]/div/div[1]/div/label/div[2]
   ${discountCategory} =  Fetch From Left  ${discountCategory}  %
   ${discountCategory} =  Convert To Integer  ${discountCategory}
   Click Element   //section[17]/div[2]/div/div[1]/div/label/div[1]
   sleep  3s
   @{displayedProductDiscounts} =  Get WebElements   //*[@id="container"]/div/div[3]/div/div[2]/div/div/div/div/a/div[2]/div[2]/div[1]/div[1]/div[3]/span
   FOR  ${displayedProductDiscount}  IN   @{displayedProductDiscounts}
      ${displayedProductDiscountText} =  Get Text  ${displayedProductDiscount}
      ${displayedProductDiscountText} =  Fetch From Left  ${displayedProductDiscountText}  %
      ${displayedProductDiscountText} =  Convert To Integer  ${displayedProductDiscountText}
      IF  ${displayedProductDiscountText} >= ${discountCategory}
         Log  ${displayedProductDiscountText}  
      ELSE
         Fail   displayed Product Discount ${displayedProductDiscountText} is less than minimum discount category ${discountCategory}
      END
   END
Select second discount category and verify the results
   Wait Until Page Contains Element  //section[17]/div[1]/div
   Click Element   //section[17]/div[1]/div
   Wait Until Page Contains Element   //section[17]/div[2]/div/div[2]/div/label/div[1]
   ${discountCategory} =  Get Text  //section[17]/div[2]/div/div[2]/div/label/div[2]
   ${discountCategory} =  Fetch From Left  ${discountCategory}  %
   ${discountCategory} =  Convert To Integer  ${discountCategory}
   Click Element   //section[17]/div[2]/div/div[2]/div/label/div[1]
   sleep  3s
   @{displayedProductDiscounts} =  Get WebElements   //*[@id="container"]/div/div[3]/div/div[2]/div/div/div/div/a/div[2]/div[2]/div[1]/div[1]/div[3]/span
   FOR  ${displayedProductDiscount}  IN   @{displayedProductDiscounts}
      ${displayedProductDiscountText} =  Get Text  ${displayedProductDiscount}
      ${displayedProductDiscountText} =  Fetch From Left  ${displayedProductDiscountText}  %
      ${displayedProductDiscountText} =  Convert To Integer  ${displayedProductDiscountText}
      IF  ${displayedProductDiscountText} >= ${discountCategory}
         Log  ${displayedProductDiscountText}  
      ELSE
         Fail   displayed Product Discount ${displayedProductDiscountText} is less than minimum discount category ${discountCategory}
      END
   END
Select third discount category and verify the results
   Wait Until Page Contains Element  //section[17]/div[1]/div
   Click Element   //section[17]/div[1]/div
   Wait Until Page Contains Element   //section[17]/div[2]/div/div[3]/div/label/div[1]
   ${discountCategory} =  Get Text  //section[17]/div[2]/div/div[3]/div/label/div[2]
   ${discountCategory} =  Fetch From Left  ${discountCategory}  %
   ${discountCategory} =  Convert To Integer  ${discountCategory}
   Click Element   //section[17]/div[2]/div/div[3]/div/label/div[1]
   sleep  3s
   @{displayedProductDiscounts} =  Get WebElements   //*[@id="container"]/div/div[3]/div/div[2]/div/div/div/div/a/div[2]/div[2]/div[1]/div[1]/div[3]/span
   FOR  ${displayedProductDiscount}  IN   @{displayedProductDiscounts}
      ${displayedProductDiscountText} =  Get Text  ${displayedProductDiscount}
      ${displayedProductDiscountText} =  Fetch From Left  ${displayedProductDiscountText}  %
      ${displayedProductDiscountText} =  Convert To Integer  ${displayedProductDiscountText}
      IF  ${displayedProductDiscountText} >= ${discountCategory}
         Log  ${displayedProductDiscountText}  
      ELSE
         Fail   displayed Product Discount ${displayedProductDiscountText} is less than minimum discount category ${discountCategory}
      END
   END
Select fourth discount category and verify the results
   Wait Until Page Contains Element  //section[17]/div[1]/div
   Click Element   //section[17]/div[1]/div
   Wait Until Page Contains Element   //section[17]/div[2]/div/div[4]/div/label/div[1]
   ${discountCategory} =  Get Text  //section[17]/div[2]/div/div[4]/div/label/div[2]
   ${discountCategory} =  Fetch From Left  ${discountCategory}  %
   ${discountCategory} =  Convert To Integer  ${discountCategory}
   Click Element   //section[17]/div[2]/div/div[4]/div/label/div[1]
   sleep  3s
   @{displayedProductDiscounts} =  Get WebElements   //*[@id="container"]/div/div[3]/div/div[2]/div/div/div/div/a/div[2]/div[2]/div[1]/div[1]/div[3]/span
   FOR  ${displayedProductDiscount}  IN   @{displayedProductDiscounts}
      ${displayedProductDiscountText} =  Get Text  ${displayedProductDiscount}
      ${displayedProductDiscountText} =  Fetch From Left  ${displayedProductDiscountText}  %
      ${displayedProductDiscountText} =  Convert To Integer  ${displayedProductDiscountText}
      IF  ${displayedProductDiscountText} <= ${discountCategory}
         Log  ${displayedProductDiscountText}  
      ELSE
         Fail   displayed Product Discount ${displayedProductDiscountText} is greater than maximum discount category ${discountCategory}
      END
   END


   
