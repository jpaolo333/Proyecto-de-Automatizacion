***Settings***
Resource        ../../locators/business/radio_buttons_locator.resource

***keywords***
Radio button demo
    Wait Until Page Contains Element        ${_titulo_radio_buttons}     3s
    Sleep       1s
    Select Radio Button     ${_radio_optradio}       ${_female}
    Click Button        ${_boton_radio_optradio}
    Sleep       2s
    Select Radio Button     ${_radio_optradio}       ${_male}
    Click Button        ${_boton_radio_optradio}
    Execute Javascript      window.scrollBy(0,document.body.scrollHeight)
    Sleep       2s
    Select Radio Button     ${_radio_gender}       ${_male}
    Select Radio Button     ${_radio_ageGroup}       ${_0a5}
    Click Button        ${_boton_groupr_radio}
    Sleep       1s

     