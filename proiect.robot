*** Settings ***
Library           RPA.Browser.Selenium    auto_close=${False}
Library           RPA.HTTP
Library           RPA.Database
Library           RPA.FTP
Library           RPA.Excel.Files
Library    RPA.FileSystem
Library    RPA.Desktop
Library    OperatingSystem
Library    RPA.Tables



*** Variables ***

*** Tasks ***
Descarcare Fisier
    descarcare
Citire si Modificare Excel
    ExtractFromExcel
    ModificareExcel
Convertirea Fisierului XLSX in format ODS
    ConvertireExcelInODSbuna
Importare in Database
    LoginPMA
    Run Keyword And Ignore Error    CreateDB
    ImportInDB

*** Keywords ***
descarcare
    open chrome browser   https://data.gov.ro/   use_profile=true
    Sleep    2
    Maximize Browser Window
    Sleep    2
    Input Text    xpath://*[@id="field-main-search"]    MEN
    Sleep    2
    Click Button    xpath://*[@id="wrapper"]/section[1]/div/form/div/div[2]/button
    Sleep    2
    Click Element    xpath:/html/body/div[4]/div/div[3]/aside/section[3]/nav/ul/li[2]/a/span[1]
    Sleep    3
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a
 
    Sleep    14
    Close Browser


LoginPMA
    Open Available Browser     http://gpanel.andreimocirean.eu/phpmyadmin
    Maximize Browser Window
    Input Text    xpath://*[@id="input_username"]    andrei
    Input Password    xpath://*[@id="input_password"]    Mcr2001@
    Click Button    //*[@id="input_go"]
    Sleep    3
CreateDB 

    Go To    http://gpanel.andreimocirean.eu/phpmyadmin/index.php?route=/server/databases&server=1
    Sleep     3
    Input Text    xpath://*[@id="text_create_db"]    baza1
    Sleep    1
    Click Button    xpath://*[@id="buttonGo"]
ImportInDB
    Go To    http://gpanel.andreimocirean.eu/phpmyadmin
    Sleep    1
    Click Element    xpath:/html[1]/body[1]/div[1]/div[3]/div[2]/div[3]/ul[1]/li[3]/a[1]
    Sleep    1
    Click Element    xpath:/html/body/div[2]/div/nav/div/ul/li[6]/a
    Sleep    3
    Choose File     xpath://*[@id="input_import_file"]   /Users/andrei/Documents/Test/datedeschise-specializari-2019-2020.ods
    Sleep    2
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Click Element       xpath:/html/body/div[4]/div[3]/form/div[6]/div[4]/div/ul/li[1]/input
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Click Element       xpath:/html/body/div[4]/div[3]/form/div[6]/div[4]/div/ul/li[2]/input
    Sleep    1
    Click Button    xpath:/html/body/div[4]/div[3]/form/div[8]/input
    Click Element    xpath:/html/body/div[1]/div[3]/div[2]/div[3]/ul/li[3]/div[4]/ul/li[2]
    Sleep    150

ExtractFromExcel
    Open Workbook    /Users/andrei/Documents/Test/datedeschise-specializari-2019-2020.xls
    ${listaws}=     List Worksheets
    ${coloanadorita}=    Get cell value    2    B
    Log     Tabelul are urmatoarele worksheet-uri: ${listaws} si pe pozitia 2 B este valoarea "${coloanadorita}"
    
ModificareExcel
    Set cell value    2    B    test 2
    rename worksheet    Export Worksheet    Test Worksheet
    create worksheet    Worksheet Adaugat
    Set cell value      1   A   Valoare adaugata
    set cell value      2   A   Inca o valoare
    set cell value      3   A   A treia-i cu
    set cell value      3   B   NOROC!
    Set cell value      4   A   .
    Set cell value      4   B   .
    set cell value      5   A   Romanii
    set cell value      5   B   Au
    set cell value      6   A   Valoare
    set cell value      6   B   MARE <3
    set cell value      7   A   Nu
    set cell value      7   B   trebuie
    set cell value      7   C   tabel
    set cell value      7   D   mai
    set cell value      7   E   mare
    set cell value      8   A   Este
    set cell value      8   B   suficient!
    create worksheet    Worksheet Adaugat 2
	Set cell value		1 	A 	Val
	Set cell value		2 	A 	Val2
	Set cell value		3 	A 	Val3
	Set cell value		4 	A 	Val4
	Set cell value		5 	A 	Val5
	Set cell value		6 	A 	Val6
	Set cell value		7 	A 	Val7
	Set cell value		8 	A 	Val8
	Set cell value		9 	A 	Val9
	Set cell value		10 	A 	Val10
	Set cell value		11 	A 	Val11
	Set cell value		12 	A 	Val12
    create worksheet    Worksheet Adaugat 3
    Set cell value		1 	B 	Val
	Set cell value		2 	B 	Val2
	Set cell value		3 	B 	Val3
	Set cell value		4 	B 	Val4
	Set cell value		5 	B 	Val5
	Set cell value		6 	B 	Val6
	Set cell value		7 	B 	Val7
	Set cell value		8 	B 	Val8
	Set cell value		9 	B 	Val9
	Set cell value		10 	B 	Val10
	Set cell value		11 	B 	Val11
	Set cell value		12 	B 	Val12

    create worksheet    Worksheet Adaugat 4
    Set cell value		1 	B 	Val
	Set cell value		2 	B 	Val2
	Set cell value		3 	B 	Val3
	Set cell value		4 	B 	Val4
	Set cell value		5 	B 	Val5
	Set cell value		6 	B 	Val6
	Set cell value		7 	B 	Val7
	Set cell value		8 	B 	Val8
	Set cell value		9 	B 	Val9
	Set cell value		10 	B 	Val10
	Set cell value		11 	B 	Val11
	Set cell value		12 	B 	Val12
	Set cell value		1 	A 	Val
	Set cell value		2 	A 	Val2
	Set cell value		3 	A 	Val3
	Set cell value		4 	A 	Val4
	Set cell value		5 	A 	Val5
	Set cell value		6 	A 	Val6
	Set cell value		7 	A 	Val7
	Set cell value		8 	A 	Val8
	Set cell value		9 	A 	Val9
	Set cell value		10 	A 	Val10
	Set cell value		11 	A 	Val11
	Set cell value		12 	A 	Val12

    create worksheet    Worksheet Adaugat 5
    Set cell value		1 	B 	Val
	Set cell value		2 	B 	Val2
	Set cell value		3 	B 	Val3
	Set cell value		4 	B 	Val4
	Set cell value		5 	B 	Val5
	Set cell value		6 	B 	Val6
	Set cell value		7 	B 	Val7
	Set cell value		8 	B 	Val8
	Set cell value		9 	B 	Val9
	Set cell value		10 	B 	Val10
	Set cell value		11 	B 	Val11
	Set cell value		12 	B 	Val12
    Save Workbook
    ${coloanamodificata} =    Get cell value    2   B

    Log      Aceasta valoare a fost schimbata in "${coloanamodificata}"

ConvertireExcelInODSbuna
    open chrome browser   https://www.convertfiles.com/convert/document/XLSX-to-ODS.html    use_profile=true
    maximize browser window
    Sleep     5
    Choose File    xpath://*[@id="filepc"]    /Users/andrei/Documents/Test/datedeschise-specializari-2019-2020.xls
    Click Button    xpath:/html/body/div[2]/div[1]/div/div/div/div[2]/div[2]/div[1]/div/div/div[1]/form/div[4]/div/div/input
    Sleep   10
    click element when visible  xpath:/html/body/div[2]/div[1]/div/div/div/div[2]/div[2]/div[1]/div/div/div/div[1]/a
    Sleep   5
    click link  xpath:/html/body/div[2]/div[1]/div/div/div/div[2]/div[2]/div[1]/div/div/a[1]
    Sleep   14
    close browser

ConvertireExcelInODS
    Open Available Browser       https://conversiontools.io/convert/excel-to-ods
    Sleep   500
    Choose File    xpath://*[@id="file"]    /Users/andrei/Downloads/datedeschise-specializari-2019-2020.xls
    Click Element    xpath:/html/body/div[1]/div[4]/div[2]/div[2]/div/div[2]/div/div/div[3]/div[3]/button
    Wait Until Element Is Visible    xpath://*[@id="app"]/div[4]/div[2]/div[2]/div/div[2]/div/div/div[4]/div[3]/button     timeout=60
    Click Button When Visible       xpath://*[@id="app"]/div[4]/div[2]/div[2]/div/div[2]/div/div/div[4]/div[3]/button
    Sleep    100
    Click Button    xpath:/html/body/div[2]/div[1]/div/div/div/div[2]/div[2]/div[1]/div/div/div[1]/form/div[4]/div/div/input

