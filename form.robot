*** Settings ***
Library         SeleniumLibrary


*** Variables ***
${BROWSER}              chrome
${URL}                  https://itera-qa.azurewebsites.net/home/automation
${input_name}           //*[@id="name"]
${input_phone}          //*[@id="phone"]
${input_email}          //*[@id="email"]
${input_password}       //*[@id="password"]
${textarea_address}     //*[@id="address"]
${buttom_submit}        name:submit  
${radio_button}         optionsRadios
${checkbox_monday}      id:monday
${dropdown}             class=custom-select 
${radio_button2}        xpath=/html/body/div/div[5]/div[2]/div[1]/div[1]/label
${checkbox2}            xpath=/html/body/div/div[5]/div[2]/div[2]/div[1]/label
${documento_maquina}    C:\\Users\\jaime\\OneDrive\\Documentos\\TestandoRo.docx                            




*** Keywords ***
Dado que o cliente abre o navegador para acessar o site
    Open Browser        ${URL}            ${BROWSER}
    Title Should Be     - Testautomation practice page
E maximiza a tela
    Maximize Browser Window
E preenche os campos
    Input Text                          ${input_name}           Jaime
    Input Text                          ${input_phone}          222222222222
    Input Text                          ${input_email}          jaime@test.com
    Input Text                          ${input_password}       jacajaca
    Input Text                          ${textarea_address}     Olá, mundo!
    Click Element                       ${buttom_submit}   
    Select Radio Button                 ${radio_button}         option2             
    Select CheckBox                     ${checkbox_monday} 
    CheckBox Should Be Selected         ${checkbox_monday}
    Select From List By Value           ${dropdown}             1
    List Selection Should Be            ${dropdown}             1  
    Click Element                       ${radio_button2}    
    Click Element                       ${checkbox2}  
E faz um upload de um arquivo
    Choose File                         inputGroupFile02         ${documento_maquina}    
Então fecha o navegador
    Close Browser        
