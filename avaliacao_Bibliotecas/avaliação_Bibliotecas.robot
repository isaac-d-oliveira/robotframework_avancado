*** Settings ***
Documentation    Tarefa 1: Estude a library DiffLibrary e faça um teste utilizando ela

Library    DiffLibrary
*** Variables ***
${url}    ./avaliação_Bibliotecas/
*** Test Cases ***

Comparar arquivos de texto e encontrar valores iguais
    Comparar "texto1" e "texto2"
    Resultado para valores iguais
    

Comparar arquivos de texto e encontrar valores diferentes
    Comparar "texto1" e "texto3"
    Resultado para valores diferentes
    
    
*** Keywords ***
Comparar "${modelo1}" e "${modelo2}"
    # Diff Files    ${url}${modelo1}.txt    ${url}${modelo2}.txt    fail=true
    ${resultado}    Run Keyword And Return Status    Diff Files    ${url}${modelo1}.txt    ${url}${modelo2}.txt    fail=true
    Set Global Variable    ${resultado1}    ${resultado}
    Log    ${resultado1}

Resultado para valores iguais
    Pass Execution If    ${resultado1}==True    Os valores são iguais

Resultado para valores diferentes
    Pass Execution If    ${resultado1}==False    Os valores são diferentes