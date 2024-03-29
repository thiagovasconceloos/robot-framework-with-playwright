# Regressivo Automação Logística
O projeto " Regressivo Automação Logística" é uma iniciativa desenvolvida pela  equipe  TMS & QA Oferta que busca otimizar e aprimorar os testes por meio da automação e integração de testes regressivos. Trata-se de um passo significativo em direção à eficiência operacional e à garantia de qualidade.

# Objetivo
O principal objetivo do projeto é unificar todos os testes regressivos cruciais da nossa tribo em um pipeline único, proporcionando benefícios em termos de praticidade, confiabilidade e qualidade.


### Histórico de Versões:

| Versão         | Data           | Novidades                                               |
| -------------- | -------------- | ------------------------------------------------------- |
| 0.0.1          | 25 de Mai, '23 | - Incialização do projeto com a Squad Fretes       |
| 0.0.2          | 31 de Jul, '23 | - Incialização do projeto com a Squad Estoque. |
| 0.0.3          | 15 de Ago, '23 | - Incialização do projeto com a Squad Planejamento.          |
| 0.0.4          | 16 de Ago, '23 | - Incialização do projeto com a Squad Auditoria de Fretes.   |


## Pré requisitos:

Para executar este projeto, você precisará de:

- [git](https://git-scm.com/downloads) (Eu usei a versão `2.26.2` enquanto escrevia este documento)
- [nodejs](https://nodejs.org/en/) (Eu usei a versão `16.14.0` enquanto escrevia este documento)
- NPM (Eu usei a versão `8.5.4` enquanto escrevia este documento)
- [Google Chrome](https://www.google.com/intl/en_us/chrome/) (Eu usei a versão `92.0.4515.131` enquanto escrevia este documento)

## Instalação

Para instalar as dependências, execute `npm install` (ou `npm i` para abreviar).



### Modo interativo

Execute `npx cypress open` para abrir o Cypress Test Runner para executar testes no modo interativo usando uma janela de visualização da área de trabalho.

### Modo headless

Execute `npm run cy:run` para executar todos os testes no modo headless usando uma janela de visualização de desktop.


### Allure Report 
 Execute `npm run cy:run` e `npm run allure:report` para executar os testes em modo headless e também gerar relatório visual detalhado dos resultados dos testes automatizados utilizando o Allure Framework para ter uma visão clara do estado dos testes e identificar áreas que possam necessitar de atenção.



### Estrutura do projeto
```
./
│  ├── cypress/
│  │   ├── config/
│  │   ├── fixtures/
│  │   ├── e2e/
│  │       ├── service/
│  │           ├── fretes/
│  │   └── support/
│  │       ├── csvFiles/
│  │           ├── fretes/
│  │       ├── schemas/       
├── .eslintrc.json
├── .gitignore
├── cypress.config.js
├── cypress.env.json
├── package-lock.json
├── package.json
└── README.md
```



### Mudança de ambiente

Por padrão, os testes serão executados usando a URL da versão de homologação (hlg), conforme definido no arquivo "hlg.js" localizado na pasta "./cypress/config". Se as URLs estiverem configuradas nesse arquivo, elas serão usadas. Caso contrário, as URLs fornecidas diretamente na requisição serão utilizadas durante a execução dos testes. Em resumo, a automação utilizará as URLs da versão de homologação se estiverem definidas, caso contrário, recorrerá às URLs fornecidas nas requisições.

### Mudança de tags

Os testes serão inicialmente executados sem a aplicação de tags específicas. No entanto, também existe a opção de executá-los de forma diferente usando o seguinte comando:

`npx cypress run --config video=false --env grepTags="@hlg"  allure=true`

Nesse modo alternativo de execução, os testes serão rodados com a tag específica @hlg. Além disso, o vídeo da execução será desabilitado e o relatório Allure será gerado.




### Cenarios Exclusivos: 

| Squad| API | Descrição 
|--|--|--|
|Fretes| Calculo | Valida regra de priorização de filial, valor de frete baseado na região/preço do produto |
|Estoque| OMS | Valida regra de sku do tipo normal, restrição do tipo WN e companhia 21 para filial 1200 |
|Estoque| Disponibilidade | Valida a disponibilidade do sku informado para a filial 1200 |
|Planejamento| Prazo Carga | Valida regras referente as datas ofertadas na categoria de entrega fracionada. |
|Auditoria de Fretes| Consulta Notfis | Valida motivos de integração da Notfis |


### Cenarios Gerais: 

| Testes| Descrição |
|--|--|
|Contrato| Valida o contrato |
|Response Time| Valida a duração do response time, atualmente deve estar abaixo de 1000ms (1s) |
|Response Code| Valida o status code HTTP retornado |
|Cenários Negativos| Valida os retornos esperados para cenarios negativos |


