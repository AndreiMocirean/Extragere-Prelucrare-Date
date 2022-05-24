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
    descarcare1
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
descarcare1
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
Descarcare2
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

    go to   https://data.gov.ro/dataset/rezultate-bacalaureat-2020-sesiunea-2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to   https://data.gov.ro/dataset/rezultate-bacalaureat-2019-sesiunea-2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/rezultate-bacalaureat-2018-sesiunea-ii
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/rezultate-bacalaureat-2017-sesiunea-ii
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/rezultate-bacalaureat-2016-sesiunea-ii
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/rezultate-bacalaureat-sesiunea-i-2017
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/rezultate-evaluarea-nationala-2021
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/rezultate-evaluarea-nationala-2018
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/rezultatele-examenului-de-titularizare-2014
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/rezultatele-examenului-de-titularizare-2014
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/rezultate-evaluare-nationala-2019
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/rezultate-bacalaureat-sesiunea-i-2019
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/rezultate-evaluare-nationala-2017
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/inscrierea-in-invatamantul-primar-2014
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/rezultate-bacalaureat-2021-sesiunea-i
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/rezultate-bacalaureat-2018-sesiunea-i
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/situatie-rezultate-bacalaureat-pentru-liceele-din-judetul-botosani-2014-2020
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/rezultate-bacalaureat-sesiunea-i-2014
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2

    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a
    go to  https://data.gov.ro/dataset/retea_scolara_specializari_2013-2014
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/rezultate-bacalaureat-sesiunea-ii-2014
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/rezultatele-la-evaluarea-nationala-2015
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/elevi-inmatriculati-anul-scolar-2020-2021
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/reteaua-scolara-2020-2021
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/reteaua-unitatilor-de-invatamant-universitar-2020-2021
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/seturi-de-date-privind-invatamantul-profesional-si-tehnic-2019
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/rezultate-bacalaureat-sesiunea-i-2016
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/rezultate-bacalaureat-sesiunea-ii-2015
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/rezultate-bacalaureat-sesiunea-i-2015
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/numar-cadre-didactice-preuniversitar-per-grad-didactic-in-anul-scolar-2019-2020
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/situatia-conectare-elevi-la-internet-in-anul-scolar-2020-2021
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/situatia-conectare-cadre-didactice-la-internet-in-anul-scolar-2020-2021
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/nr-untati-de-inv-preuniv-de-stat-si-private-per-limbi-straine-pentru-anul-scolsr-2020-2021
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/nr-elevi-din-inv-preuniversitar-care-studiaza-limbi-straine-pentru-anul-scolar-2020-2021
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/numarul-total-de-studenti-inmatriculati-la-forma-de-studiu-master-la-1-ianuarie-2020
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/numarul-de-posturi-din-invatamantul-preuniversitar-de-stat-an-scolar-2020-2021
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/studenti-inmatriculati-la-forma-de-studiu-licenta-la-1-ianuarie-2020
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/retea-scolara-specializari-2019-2020
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/retea-scolara-specializari-2017-2018
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/reteaua-scolara-a-unitatilor-de-invatamant-2018-2019
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/retea-scolara-specializari-2016-2017
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/reteaua-scolara-a-unitatilor-de-invatamant-2016-2017
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/retea-scolara-specializari-2015-2016
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/reteaua-scolara-a-unitatilor-de-invatamant-2015-2016
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/rezultatele-la-evaluarea-nationala-2016
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/reteaua-scolara-a-unitatilor-de-invatamant-2014-2015
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/retea-scolara-specializari-2014-2015
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/numarul-de-cadre-didactice-per-grad-cu-contracte-de-munca-active-la-18-08-2021
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/reteaua-scolara-a-unitatilor-de-invatamant-2019-2020
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/ul/li[16]/div/h3/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/article/div/section[1]/ul/li[3]/a
    Sleep    2
    Click Link    xpath:/html/body/div[4]/div/div[3]/div/section/div[3]/a

    go to  https://data.gov.ro/dataset/seturi-de-date-privind-invatamantul-profesional-si-tehnic
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
ImportInDBunFisier
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
ImportInDBTot
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
        Go To    http://gpanel.andreimocirean.eu/phpmyadmin
    Sleep    1
    Click Element    xpath:/html[1]/body[1]/div[1]/div[3]/div[2]/div[3]/ul[1]/li[3]/a[1]
    Sleep    1
    Click Element    xpath:/html/body/div[2]/div/nav/div/ul/li[6]/a
    Sleep    3
    Choose File     xpath://*[@id="input_import_file"]   /Users/andrei/Documents/Test/date-deschise-bac-2020-sesiunea-1.ods
    Sleep    2
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Click Element       xpath:/html/body/div[4]/div[3]/form/div[6]/div[4]/div/ul/li[1]/input
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Click Element       xpath:/html/body/div[4]/div[3]/form/div[6]/div[4]/div/ul/li[2]/input
    Sleep    1
    Click Button    xpath:/html/body/div[4]/div[3]/form/div[8]/input
    Click Element    xpath:/html/body/div[1]/div[3]/div[2]/div[3]/ul/li[3]/div[4]/ul/li[2]
    Choose File     xpath://*[@id="input_import_file"]   /Users/andrei/Documents/Test/date-deschise-bac-2020-sesiunea-2.ods
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

