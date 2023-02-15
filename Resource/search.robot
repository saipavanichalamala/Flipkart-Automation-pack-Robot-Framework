*** Settings ***
Resource  ../Resource/Common.robot
Resource  ../Resource/HomepageDef.robot
Resource  ../Resource/Resultpagedef.robot
Resource  ./PO/Filters.robot
Resource  ./PO/Nav.robot
Resource  ./PO/resultpage.robot


*** Variables ***
${FlipkartURL} 
${searchProduct} 
${scroll_bar}=  xpath=xpath=//*[@id="container"]/div/div[3]/div/div[1]/div/div[1]/div/section[2]/div[3]/div[1]/div[2]/div
${Filter_high}=  xpath=//*[@id="container"]/div/div[3]/div/div[1]/div/div[1]/div/section[1]/div[2]/div[1]/div/div[2]
*** Keywords ***
select the brand category and verify the results
      Filters.Select first category and verify results
      Nav.Search For Product
      resultpage.verify search results displayed
      Filters.Select second category and verify results
      Nav.Search For Product
      resultpage.verify search results displayed
      Filters.Select third category and verify results
      Nav.Search For Product
      resultpage.verify search results displayed
      Filters.Select fourth category and verify results
      Nav.Search For Product
      resultpage.verify search results displayed
      Filters.Select fifth category and verify results
      Nav.Search For Product
      resultpage.verify search results displayed
      Filters.Select sixth category and verify results
select the rating category and verify the results 
      Filters.Select first rating category and verify results
      Nav.Search For Product
      resultpage.verify search results displayed
      Filters.Select second rating category and verify results
      Nav.Search For Product
      resultpage.verify search results displayed
      Filters.Select third rating category and verify results
      Nav.Search For Product
      resultpage.verify search results displayed
      Filters.Select fourth rating category and verify results
Select the price range and verify results
      filters.Select the minimum price range and verify results
      nav.Search For Product
      resultpage.verify search results displayed
      filters.Select the first price range and verify results
      nav.Search For Product
      resultpage.verify search results displayed
      filters.Select the second price range and verify results
      nav.Search For Product
      resultpage.verify search results displayed
      filters.Select the third price range and verify results
      nav.Search For Product
      resultpage.verify search results displayed
      filters.Select the fourth price range and verify results
Select the discount category and verify results
      filters.Select first discount category and verify the results
      nav.Search For Product
      resultpage.verify search results displayed
      filters.Select second discount category and verify the results
      nav.Search For Product
      resultpage.verify search results displayed
      filters.Select third discount category and verify the results
      nav.Search For Product
      resultpage.verify search results displayed
      filters.Select fourth discount category and verify the results