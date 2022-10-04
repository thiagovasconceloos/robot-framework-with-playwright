*** Settings ***
Documentation        Arquivo Principal do Projeto

Library   Browser




Resource    pages/login.resource
Resource    pages/dashboard.resource


*** Keywords ***
Do login
    Go To Login Page
    Submit Credentials    papito@gmail.com    vaibrasil
    User Logged In


Start Test
     New Browser                  headless=False



Finish Test
    Sleep     1
    Take Screenshot
