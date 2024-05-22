*** Settings ***
Resource          config_source.robot
Test Setup        Abrir app solar+
Test Teardown     Fechar app
Test Tags


*** Test Cases ***
Caso de Teste 1: Acessando o app e entrando na tela de Login
    [Tags]    Login
    Inserindo usuario e senha valido

# Caso de Teste 2: Arrastando para o lado e entrando na tela de pagar
#     [Tags]    tela
#     Entrando na tela de pagar