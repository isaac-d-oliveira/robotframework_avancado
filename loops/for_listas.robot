*** Settings ***
Documentation    Aula de loop for com listas dentro do for

*** Test Cases ***
Teste FOR usando várias variáveis
    Cria dicionário de traduções

*** Keywords ***
Cria dicionário de traduções
    FOR    ${index}    ${english}    ${finnish}    ${portugues}    IN
    ...    1    cat    kissa    gato
    ...    2    dog    koira    cachorro
    ...    3    horse    hevonen    cavalo
        Log    Animal ${index}:\nEm inglês: ${english}\nEm finlandês: ${finnish}\nEm português: ${portugues}        
    END