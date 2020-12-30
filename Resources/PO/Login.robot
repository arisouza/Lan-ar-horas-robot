*** Settings ***
Library         SeleniumLibrary
Resource        ../../Dados.robot

## CENÁRIO 01
*** Variables ***
${PAGE_LOGIN}       xpath=//form[@id="loginform"]
${I_USER}           xpath=//input[@id="user_login"]
${I_SENHA}          xpath=//input[@id="user_pass"]
${B_LOGIN}          xpath=//input[@id="wp-submit"]
${PAGE_HOME}        xpath=//div[@id="besocial-header-left"]


*** Keywords ***
Verificar página "Login"
    Wait Until Element Is Visible    ${PAGE_LOGIN}

Inserir usuário
    Click Element                    ${I_USER} 
    Input Text                       ${I_USER}          ${EMAIL}   

Inserir senha
    Click Element                    ${I_SENHA} 
    Input Text                       ${I_SENHA}         ${SENHA}  

Clicar no botão "Login"
    Click Element                    ${B_LOGIN}

Verificar página "Home"
    Wait Until Element Is Visible    ${PAGE_HOME}
