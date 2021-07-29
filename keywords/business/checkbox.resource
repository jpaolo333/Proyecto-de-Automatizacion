***Settings***
Resource        ../../locators/business/checkbox_locator.resource

***keywords***
Checkbox demo
    Wait Until Page Contains Element        ${_titulo_checkbox}     3s
    Sleep       1s
    Select Checkbox     ${_single_checkbox}
    Select Checkbox     ${_multiple_checkbox_opcion1}
    Select Checkbox     ${_multiple_checkbox_opcion2}
    Click Button        ${_boton_checkbox}
    Sleep       1s
    Click Button        ${_boton_checkbox}
    Sleep       1s         

