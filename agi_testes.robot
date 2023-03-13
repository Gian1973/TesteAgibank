* Settings *
Documentation  Exemplo de teste em Robot Framework
Library  SeleniumLibrary

* Variables *
${BLOGDOAGI_URL}  https://blogdoagi.com.br/
${BROWSER}        chrome

* Keywords *
Input Submit
    Click Element  (//input[contains(@type,'submit')])[1]

Input Search
    Input Text   (//input[contains(@placeholder,'Pesquisar …')])[1]   Sua carreira

 
    Input Text   (//input[contains(@placeholder,'Pesquisar …')])[1]   Quero a vaga

* Test Cases *

Testes 1- Pesquisar um termo que aparece em vários artigos e verificar se os resultados retornados são relevantes e correspondem ao termo pesquisado
    Open Browser  ${BLOGDOAGI_URL}  ${BROWSER}
    Maximize Browser Window
    Click Element  //button[@id='search-open']
    Wait Until Page Contains Element  (//input[@name='s'])[1]  timeout=30s
    Input Search
    sleep    2
    Input Submit
    Close Browser
  


Testes 2- Pesquisar um termo que não aparece em nenhum artigo e verificar se a mensagem "Nenhum resultado encontrado" é exibida
    Open Browser  ${BLOGDOAGI_URL}  ${BROWSER}
    Maximize Browser Window
    Click Element  //button[@id='search-open']
    Wait Until Page Contains Element  (//input[@name='s'])[1]  timeout=30s
    Input Search
    sleep    2
    Input Submit
    Close Browser     

    

   