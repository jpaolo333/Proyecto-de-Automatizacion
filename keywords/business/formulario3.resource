***Settings***
Resource        ../../locators/business/formulario3_locator.resource

***keywords***
Ejemplo formulario3
    Wait Until Page Contains Element        ${_titulo_formulario3}      3s
    Sleep   1s
    Input Text      ${_input1_nombre_formulario3}       ${_nombre}       True    
    Input Text      ${_input2_apellido_formulario3}     ${_apellido}     True
    Input Text      ${_input3_email_formulario3}        ${_email}     True
    Input Text      ${_input4_telefono_formulario3}     ${_telefono}       True
    Input Text      ${_input5_direccion_formulario3}        ${_direccion}     True
    Input Text      ${_input6_ciudad_formulario3}       ${_ciudad}      True
    Select From List By Label       ${_select_formulario3}      Colorado  
    Input Text      ${_input7_zip_formulario3}      ${_codigo_postal}     True
    Input Text      ${_input8_website_formulario3}      ${_dominio}     True
    Select Radio Button     ${_radio_hosting}       yes    
    Input Text      ${_textarea_comentarios_formulario3}        ${_descripcion}     True 
    Click Button        ${_button_send_formulario3}
    Sleep   1s
    Execute Javascript      window.scrollBy(0,-document.body.scrollHeight)
