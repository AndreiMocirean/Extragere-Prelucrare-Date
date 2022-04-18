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
Importare in Database
    LoginPMA
    Run Keyword And Ignore Error    CreateDB
    ImportInDB

*** Keywords ***
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
    Go To    https://gpanel.andreimocirean.eu/phpmyadmin/index.php?route=/database/structure&server=1&db=baza1
    Sleep    1
    Click Element    xpath:/html/body/div[2]/div/nav/div/ul/li[6]/a
    Sleep    30
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

