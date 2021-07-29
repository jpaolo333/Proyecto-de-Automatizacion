***Settings***
Resource    ../keywords/common/loadcomponents.resource
*** Test Cases ***
Prueba 1
    Check Input Data Row Count
    FOR    ${index}    IN RANGE    2    ${MaxRange}
        Set Suite Variable    ${index}
        Abrir navegador
        Read Input Data
        Ingresar munu formulario
        Ejemplo formulario
        Ingresar menu 3
        Ejemplo formulario3
        Ingresar checkbox
        Checkbox demo
        Ingresar radio buttons
        Radio button demo
        Ingresar select list
        Select list
        Ingresar ajax
        Ajax
        Ingresar jquery
        JQuery
    END






    