*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${URL}              https://academy.primecontrol.com.br/wp-login.php
${BROWSER}          chrome

*** Keywords ***
Abrir navegador    
    Open Browser     ${URL}   ${BROWSER}

Fechar navegador
    Close Browser


