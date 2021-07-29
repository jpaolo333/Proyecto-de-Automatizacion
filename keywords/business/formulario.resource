***Settings***
Resource        ../../locators/business/formulario_locator.resource

***keywords***
Ejemplo formulario
    Wait Until Element Is Visible       ${_cerrar_ventana_emerjente}        30s
    Click Element       ${_cerrar_ventana_emerjente}
    Wait Until Page Contains Element        ${_titulo_formulario1}
    Input Text      ${_input_formulario1}       ${_mensaje}        True
    Click Button       ${_boton_formulario1} 
    Scroll Element Into View        ${_titulo_formulario2}
    Input Text      ${_input1_formulario2}      ${_entrada_a}       True
    Input Text      ${_input2_formulario2}      ${_entrada_b}       True
    Click Button        ${_boton_formulario2}
    Execute Javascript      window.scrollBy(0,-document.body.scrollHeight)




