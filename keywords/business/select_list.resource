***Settings***
Resource        ../../locators/business/select_list_locator.resource

***keywords***
Select list
    Wait Until Page Contains Element        ${_titulo_select_list}    3s
    Sleep       1s
    Select From List By Label       ${_select_list}      ${_friday}
    Sleep       1s
    Click Element       ${_option_Florida}
    Click Button        ${_boton_firt}
    Sleep       1s
    Click Element       ${_option_Texas}
    Click Button        ${_boton_all}
    Sleep       1s
    Execute Javascript      window.scrollBy(0,-document.body.scrollHeight)