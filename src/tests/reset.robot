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
When counter has a nonzero value and it is reset the value becomes zero
    Go To  ${HOME_URL}
    Title Should Be  Laskuri
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa
    Click Button  Paina
    Click Button  Paina
    Page Should Contain  nappia painettu 2 kertaa
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa