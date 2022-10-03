*** Settings ***
Documentation        Login Tests

Library   Browser


*** Variables ***
${header_title}    Aquela figurinha incrível a um clique de distância.




*** Test Cases ***
Deve logar com sucesso.
    Go To Login Page   
    Submit Credentials         papito@gmail.com    vaibrasil
    User Logged In 
    

Não deve logar com senha incorreta
    Go To Login Page   
    Submit Credentials         papito@gmail.com    abc123
    Toast Message Should Be    Credenciais inválidas, tente novamente!
    
    Sleep                         1
    ${temp}                       Get Page Source        
    Log                           ${temp}




*** Keywords *** 
 Go To Login Page   
      New Browser                  headless=False
      New Page                     https://trade-sticker-dev.vercel.app/



 Submit Credentials 
      [Arguments]         ${email}   ${senha}
      Fill Text                    input[name="email"]   ${email}
      Fill Text                    input[name="password"]   ${senha}
      Click                        css=button >> text=Entrar
 User Logged In 
    ${header_title}
     ...  Set Variable
     ...     Aquela figurinha incrível a um clique de distância.

     Get Text     css=.header-content strong     equal     ${header_title}


Toast Message Should Be
    [Arguments]    ${expected_message}
    ${locator}
    ...     Set Variable
    ...    css=.Toastify__toast-body div >> text=${expected_message}
    Wait For Elements State    ${locator}         visible       3
