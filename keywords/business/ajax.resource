***Settings***
Resource        ../../locators/business/ajax_locator.resource

***keywords***
Ajax
    Wait Until Page Contains Element        ${_titulo_ajax}     3s
    Sleep   1s
    Input Text      ${_input_ajax_nombre}       ${_nombre}       True 
    Input Text      ${_textarea_ajax}       ${_mensaje}     True
    Click Button        ${_boton_ajax}
    Sleep   1s
