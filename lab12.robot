*** Setting ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}       Chrome
${GOOGLE URL}     https://www.google.co.th
${URL CS}         www.cs.kku.ac.th
${DELAY}         0

*** Test Cases ***    	
Open Browser
    Open Browser           ${GOOGLE URL}    ${BROWSER} 
    Set Selenium Speed     ${DELAY}

Search CS	
    Input Text          q           www.cs.kku.ac.th
    Submit Form
    Wait Until Page Contains           www.cs.kku.ac.th
    Close Browser