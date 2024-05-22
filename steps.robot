*** Settings ***
Library    AppiumLibrary


*** Variables ***
${Permissão}    com.android.permissioncontroller:id/permission_allow_foreground_only_button
${Entrar}       test:id/button-test:id/page-Login
${start_x}    155
${start_y}    2100
${end_x}      0
${end_y}      500
${fechar_log}        //android.view.ViewGroup[2]/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]         


*** Keywords ***
Inserindo usuario e senha valido
    #Ir ate Campo CPF/CNPJ
    Wait Until Page Contains Element    ${Permissão}
    Click Element   ${Permissão}     	
    Wait Until Page Contains Element    ${Entrar}
    Click Element      ${Entrar}
    Wait Until Page Contains    CPF ou CNPJ aqui
    ##clicar logs
    Wait Until Page Contains Element         ${fechar_log}
    Click Element                            ${fechar_log}
    Input Text        test:id/input-login-id    82530327300
    Click Element     test:id/button-login-id-submit
    #Ir campo senha


    
    #Erro no xpath senha
    Wait Until Page Contains Element    xpath=//ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.TextView 
    Input Text        xpath=//ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.TextView    Senha@123
    Click Element     xpath=//android.widget.TextView[@index='3']



    #Validar entrar tela home
    Wait Until Page Contains Element    test:id/input-login-id
    Wait Until Page Contains Element    test:id/input-app-header
    Element Value Should Be    test:id/input-app-header    Buscar no SOLAR +  

    sleep    10




 
