*** Settings ***
Documentation        Teste de negociação de figurinhas da copa


Resource        ../resources/main.resource


Test Setup       Start Test
Test Teardown    Finish Test


*** Test Cases ***
Deve negociar a figurinha Neymar Legend
        
         Do login
         Search User    legend
         Select Sticker     Neymar Jr
         Get in Touch
         Whatsapp Sticker Message    Neymar Jr
         Take Screenshot



        