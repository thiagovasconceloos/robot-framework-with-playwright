*** Settings ***
Documentation        Login Tests

Library   Browser


*** Variables ***
${header_title}    Aquela figurinha incrível a um clique de distância.




*** Test Cases ***
Deve logar com sucesso.
    Go To Login Page   
    Fill Text                    input[name="email"]   papito@gmail.com
    Fill Text                    input[name="password"]   vaibrasil
    Click                        css=button >> text=Entrar
    Get Text                     css=.header-content strong     equal     ${header_title}
    

Não deve logar com senha incorreta
    Go To Login Page   
    Fill Text                    input[name="email"]   papito@gmail.com
    Fill Text                    input[name="password"]   abc123
    Click                        css=button >> text=Entrar

    ${locator} 	                 Set Variable         css=.Toastify__toast-body div >> text=Credenciais inválidas, tente novamente!
    Wait For Elements State    ${locator}         visible       4
    
    Sleep                         1
    ${temp}                       Get Page Source        
    Log                           ${temp}




*** Keywords *** 
 Go To Login Page   
      New Browser                  headless=False
      New Page                     https://trade-sticker-dev.vercel.app/