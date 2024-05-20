*** Settings ***
Documentation    Aula de loop for aninhado

*** Test Cases ***
Teste de FOR aninhado
    Criar cadastro de produtos (FOR aninhado)

*** Keywords ***
Criar cadastro de produtos (FOR aninhado)
    FOR    ${produto}    IN    baby look    camiseta    blusa
        Imprime tamanho para o produto    ${produto}        
    END

Imprime tamanho para o produto
    [Arguments]    ${produto}
    FOR    ${tamanho}    IN    P    M    G
        Log    Produto: ${produto} - Tam: ${tamanho}        
    END