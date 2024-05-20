*** Settings ***
Documentation     Exemplos do laço FOR IN RANGE
Library    String

*** Test Cases ***
Tradicional
    [Documentation]    percorre de 1 até 10
    FOR     ${index}    IN RANGE    1    11
        Log    ${index}
    END

Apenas quantidade delaços informada (Limite superior)
    [Documentation]    percorre de 0 até 9
    FOR    ${index}    IN RANGE    10
        Log    ${index}        
    END

Aritmético
    [Documentation]    percorre de 1 até 5
    ${var}    Set Variable    ${5}
    FOR    ${index}    IN RANGE    ${var} + 1
        Log    ${index}
        
    END

Intervalos despecíficos
    [Documentation]    percorre de 1 até 30, de 5 em 5
    FOR    ${index}    IN RANGE    1    31    5
        Log    ${index}
    END