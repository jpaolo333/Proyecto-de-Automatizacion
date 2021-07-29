***Settings***
Resource        ../../locators/business/jquery_locator.resource

***keywords***
JQuery
    Wait Until Page Contains Element        ${_titulo_jquery}     3s
    Sleep   1s
    Select From List By Label       ${_select_country_jquery}      ${_country}
    Select From List By Index       ${_select_states_jquery}        ${_state} 
    Select From List By Value       ${_select_territories_jquery}       ${_territories}
    Sleep   2s
    Click Element       ${_eliminar_select_states}
    Select From List By Index       ${_select_states_jquery}        ${_state2}
    Click Element       ${_titulo2_jquery}
    Select From List By Label       ${_select_file_jquery}       PHP
    Sleep   2s
    
