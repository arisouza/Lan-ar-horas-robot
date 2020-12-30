*** Settings ***
Resource            ../Resources/PO/LançarHoras.robot
Resource            ../Resources/PO/Login.robot 
Resource            ../Resources/PO/Formulario.robot
Resource            ../Resources/Resource.robot
Test Setup          Abrir navegador  
#Test Teardown       Fechar navegador 


*** Test Case ***

Cenário 01: Login
    Verificar página "Login"
    Inserir usuário
    Inserir senha 
    Clicar no botão "Login"
    Verificar página "Home" 

    #Cenário 02: Abrir Lançar horas
    Clicar na aba "Lançar horas de treinamento"
    Verificar página "Lançar horas"

    #Cenário 03: Completar o formulário 
    Escolher select "Colaborador"
    Escolher select "Categoria"
    Preencher insert "Nome do Treinamento"
    Preencher insert "Instituição"
    Preencher insert "Descrição"
    Escolher data início
    Escolher data término
    Completar investimento 
    Inserir Carga horária
    Escolher select "Consultor do RH"
    #Clicar no botão "Enviar"


