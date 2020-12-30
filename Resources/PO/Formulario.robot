*** Settings ***
Library         SeleniumLibrary
Resource        ../../Dados.robot

*** Variables ***

### CENÁRIO 03

${S_COL}                 xpath=//span[contains(text (), "${NOME}")]
    ##colaborador 
${S_CAT}                 xpath=//*[@id="field_1_11"]//div[@class="selectric"]
     ##botão select categoria
     
##categorias
${S_CATEGORIA}            xpath=//*[@id="field_1_11"]//li[${CATEGORIA}]

${I_TREI}                 xpath=//input[@id="input_1_7"]
    ##TREINAMENTO
${I_INST}                 xpath=//input[@id="input_1_19"]
    ##INSTITUIÇÃO
${I_DESC}                 xpath=//textarea[@id="input_1_12"]
    ##DESCRIÇÃO  
${I_DATAI}                xpath=//input[@id="input_1_13"]
${DATA_INICIO}            xpath=//tr[${SEMANA_I}]/td[${DIA_I}] 
${I_DATAT}                xpath=//input[@id="input_1_3"]
${DATA_TERMINO}           xpath=//tr[${SEMANA_T}]/td[${DIA_T}]       
${INVESTIMENTO}           xpath=//input[@id="input_1_17"]
${CARGA_H}                xpath=//input[@id="input_1_5"]
${CONS_RH}                xpath=//*[@id="field_1_24"]//div[2]
${THAIS}                  xpath=//*[@id="field_1_24"]//li[contains(text(), "${RH}")]

${B_ENVIAR}               xpath=//input[@id="gform_submit_button_1"]

*** Keywords ***
Escolher select "Colaborador"
    Wait Until Element Is Visible   ${S_COL}

Escolher select "Categoria"
    Click Element                   ${S_CAT}
    Click Element                   ${S_CATEGORIA}

Preencher insert "Nome do Treinamento"
    Click Element                   ${I_TREI}  
    Input Text                      ${I_TREI}           ${C_NOME}

Preencher insert "Instituição"
    Click Element                   ${I_INST}
    Input Text                      ${I_INST}           ${C_INS}

Preencher insert "Descrição"
    Click Element                   ${I_DESC}   
    Input Text                      ${I_DESC}           ${C_DES}

Escolher data início
    Click Element                   ${I_DATAI}      
    Click Element                   ${DATA_INICIO}      

Escolher data término
    Click Element                   ${I_DATAT}  
    Click Element                   ${DATA_TERMINO}

Completar investimento 
    Wait Until Element Is Visible   ${INVESTIMENTO}
    Click Element                   ${INVESTIMENTO}  
    Input Text                      ${INVESTIMENTO}      ${C_INV}

Inserir Carga horária
    Click Element                   ${CARGA_H}
    Input Text                      ${CARGA_H}           ${C_HOR}       

Escolher select "Consultor do RH"
    Click Element                   ${CONS_RH}  
    Click Element                   ${THAIS}

Clicar no botão "Enviar"
    Click Element                   ${B_ENVIAR}  

