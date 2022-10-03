*** Settings ***
Documentation        Login Tests

Library   Browser


*** Variables ***
${header_title}    Aquela figurinha incrível a um clique de distância.




*** Test Cases ***
Deve validar o slogan da home page
    New Browser                  headless=False
    New Page                     https://trade-sticker-dev.vercel.app/
    Fill Text                    input[name="email"]   papito@gmail.com
    Fill Text                    input[name="password"]   vaibrasil
    Click                        css=button >> text=Entrar
    Get Text                     css=.header-content strong     equal     ${header_title}
    
    Take Screenshot