*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup    Go To Start With Zero

*** Keywords ***
Go To Start With Zero
    Go To  ${HOME_URL}
    Click Button  Nollaa

*** Test Cases ***
Set counter to ten
    Go To  ${HOME_URL}
    Input Text   value  10
    Click Button  Aseta arvo
    Page Should Contain  nappia painettu 10 kertaa