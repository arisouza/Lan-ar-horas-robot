*** Settings ***
Library                   SeleniumLibrary

## CENÁRIO 02
*** Variables ***
${B_LANÇAR}         xpath=//span[contains(text (), " Lançar horas de treinamento")]
${PAGE_LANCAR}      xpath=//div[@id="besocial-content-inner"]//h1

*** Keywords ***
Clicar na aba "${ABA}"
    Wait Until Element Is Visible    ${B_LANÇAR}  
    Click Element                    ${B_LANÇAR}

Verificar página "Lançar horas"
    Wait Until Element Is Visible    ${PAGE_LANCAR} 


