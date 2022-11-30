*** Settings ***
Resource  ./PO/App.robot
Resource  ./PO/Nav.robot



*** Keywords ***
Open Application
    App.Open the application
Search the Product
    Nav.Search For Product