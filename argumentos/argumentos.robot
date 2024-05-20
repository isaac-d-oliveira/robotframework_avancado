*** Settings ***
Documentation    Argumento opcional e criação de listas e dicionários
*** Test Cases ***
Relembrando de argumentos posicionais x nomeados
    Teste de Argumentos Básico    1    2    3    4
    Teste de Argumentos Básico    arg4=1    arg3=2    arg2=3    arg1=4

Teste de Argumentos Opcionais
    Passando argumentos opcionais como parâmetro    nome=Mayara    ultimo_nome=Fernandes
    Passando argumentos opcionais como parâmetro    nome=Mayara    nome_do_meio=Ribeiro    ultimo_nome=Fernande

Criando lista e dicionário via parâmetro
    [Documentation]    No Python é conhecido como "kwargs"
    Teste Criando um dicionário    cwd=/home/user  shell=True   env=False
    Testes Criando uma Lista    may    Ribeiro  fernandes
    Teste Criando os dois    may   ribeiro   fernandes    shell=True    env=False

*** Keywords ***
Teste de Argumentos Básico
    [Arguments]    ${arg1}    ${arg2}    ${arg3}    ${arg4}
    Log    ${arg1}-${arg2}-${arg3}-${arg4}

Passando argumentos opcionais como parâmetro
    [Arguments]    ${nome}    ${ultimo_nome}    ${nome_do_meio}=silva
    Log    Nome completo: ${nome} ${nome_do_meio} ${ultimo_nome}

Teste Criando um dicionário
    [Arguments]    &{meu_dicionario}
    Log    ${meu_dicionario}

Testes Criando uma Lista
    [Arguments]    @{minha_lista}
    Log    ${minha_lista}

Teste Criando os dois
    [Arguments]    @{minha_lista}    &{meu_dicionario}
    Log    ${minha_lista}\n${meu_dicionario}