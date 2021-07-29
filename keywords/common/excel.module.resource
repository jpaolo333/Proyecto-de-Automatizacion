*** Settings ***
Resource    ../loadcomponents.resource
*** Variables ***
${DATAFILE}    ../testdata/formulario.xlsx

*** Keywords ***
Read Input Data
    [Documentation]    _*SUMMARY:*_
    ...    Open, read and write files in excel format
    ...
    ...    _*PRECONDITION:*_
    ...   - Library: ExcelLibrary
    ...   - Installation Procedure:
    ...   - "Put in the Library folder the ExcelLibrary.py"
    ...   - Install: pip install openpyxl
    ...
    ...   Use Example:
    ...    Open document
    ...   "Open Excel Document    File path      doc1"
    ...    variable=    Read Excel Cell    incremental variable    1     Poliedro"
    ...
    ...    Save Document
    ...    "Save Excel Document    File path
    ...     Close Current Excel Document"
    ...
    ...    Write Document
    ...     Open Excel Document     File Path    doc1    #Open Excel File
    ...     Write Excel Cell    incremental variable    11    Value to Write    Poliedro
    ...     Save Excel Document     File Path   #Save Excel Document
    ...     Close Current Excel Document
    ...
    ...    _*PRECONDITION:*_
    ...   Mantainer:
    ...
    ...
    Open Excel Document    ${DATAFILE}     doc1    #Open Excel File
    ${_nombre}=    Read Excel Cell    ${index}    1     form3    #Read IterationNo
    Set Suite Variable    ${_nombre}    #Set IterationNo Suite variable
    ${_apellido}=    Read Excel Cell    ${index}    2     form3   #Read USER
    Set Suite Variable    ${_apellido}    #Set USER_SAP Suite variable
    ${_email}=    Read Excel Cell    ${index}    3     form3    
    Set Suite Variable    ${_email}
    ${_telefono}=    Read Excel Cell    ${index}    4     form3    
    Set Suite Variable    ${_telefono}
    ${_direccion}=    Read Excel Cell    ${index}    5     form3    
    Set Suite Variable    ${_direccion}
    ${_ciudad}=    Read Excel Cell    ${index}    6     form3    
    Set Suite Variable    ${_ciudad}
    ${_codigo_postal}=    Read Excel Cell    ${index}    7     form3    
    Set Suite Variable    ${_codigo_postal}
    ${_dominio}=    Read Excel Cell    ${index}    8     form3    
    Set Suite Variable    ${_dominio}
    ${_descripcion}=    Read Excel Cell    ${index}    9    form3    
    Set Suite Variable    ${_descripcion}

    ${_mensaje}=    Read Excel Cell    ${index}    1     form    #Read IterationNo
    Set Suite Variable    ${_mensaje}    #Set IterationNo Suite variable
    ${_entrada_a}=    Read Excel Cell    ${index}    2     form   #Read USER
    Set Suite Variable    ${_entrada_a}    #Set USER_SAP Suite variable
    ${_entrada_b}=    Read Excel Cell    ${index}    3     form
    Set Suite Variable    ${_entrada_b}    #Set USER_SAP Suite variable

    ${_male}=    Read Excel Cell    ${index}    1     radio    #Read IterationNo
    Set Suite Variable    ${_male}    #Set IterationNo Suite variable
    ${_female}=    Read Excel Cell    ${index}    1     radio   #Read USER
    Set Suite Variable    ${_female}    #Set USER_SAP Suite variable
    ${_0a5}=    Read Excel Cell    ${index}    2     radio    
    Set Suite Variable    ${_0a5}
    ${_5a15}=    Read Excel Cell    ${index}    2     radio    
    Set Suite Variable    ${_5a15}
    ${_15a50}=    Read Excel Cell    ${index}    2     radio    
    Set Suite Variable    ${_15a50}
    
    
    #hoja seleccionar
    ${_friday}=    Read Excel Cell    ${index}    1     seleccionar    
    Set Suite Variable    ${_friday}

    ${_country}=    Read Excel Cell    ${index}    1     jquery1  #Read IterationNo
    Set Suite Variable    ${_country}    #Set IterationNo Suite variable
    ${_state}=    Read Excel Cell    ${index}    2     jquery1   #Read USER
    Set Suite Variable    ${_state}    #Set USER_SAP Suite variable
    ${_territories}=    Read Excel Cell    ${index}    3     jquery1   
    Set Suite Variable    ${_territories}
    ${_state2}=    Read Excel Cell    ${index}    4     jquery1    
    Set Suite Variable    ${_state2}
    ${_lenguaje}=    Read Excel Cell    ${index}    5     jquery1   
    Set Suite Variable    ${_lenguaje}
    
    
    Save Excel Document    ${DATAFILE}         #Save Excel Document
    Close Current Excel Document    #Close Excel document
    Log to Console    Input Data is:${_nombre},${_apellido},${_email},${_telefono},${_direccion},${_ciudad},${_codigo_postal},${_dominio},${_descripcion},${_mensaje},${_entrada_a},${_entrada_b},${_male},${_female},${_0a5},${_5a15},${_15a50},${_friday},${_country},${_state},${_territories},${_state2},${_lenguaje}
    
    
Check Input Data Row Count
    Open Excel Document     ${DATAFILE}     doc1    #Open Excel File
    ${UsedRow}=    Count Row    form3    #Get used row count
    Log to Console      ${UsedRow}      Cuenta las Filas
    ${MaxRange}=    Set Variable    ${UsedRow}
    Log to Console    ${MaxRange}       Asigna la variable UsedRow 
    ${MaxRange}=    Evaluate    ${MaxRange}+1
    Log to Console    ${MaxRange}       le da un mas 1 a la variable MaxRange
    Set Suite Variable    ${MaxRange}
    Log to Console    Input Data Row Count: ${UsedRow}    #Log row count to console
    Save Excel Document     ${DATAFILE}    #Save Excel Document
    Close Current Excel Document

Check Input Data Row Count2
    Open Excel Document     ${DATAFILE}     doc1    #Open Excel File
    ${UsedRow}=    Count Row    form    #Get used row count
    Log to Console      ${UsedRow}      Cuenta las Filas
    ${MaxRange}=    Set Variable    ${UsedRow}
    Log to Console    ${MaxRange}       Asigna la variable UsedRow 
    ${MaxRange}=    Evaluate    ${MaxRange}+1
    Log to Console    ${MaxRange}       le da un mas 1 a la variable MaxRange
    Set Suite Variable    ${MaxRange}
    ${UsedRow}=    Evaluate    ${UsedRow}-1
    Set Suite Variable    ${UsedRow}
    Log to Console    Input Data Row Count: ${UsedRow}    #Log row count to console
    Save Excel Document     ${DATAFILE}    #Save Excel Document
    Close Current Excel Document


Record Execution Status SIM
    Open Excel Document     ${DATAFILE}    doc1    #Open Excel File
    Write Excel Cell    ${index}     7    ${_serial_sim}    Facturador
    Write Excel Cell    ${index}     12    ${_serial_recortSim}    form3
    Save Excel Document    ${DATAFILE}   #Save Excel Document
    Close Current Excel Document    #Close Excel document
    


