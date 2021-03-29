*** Variables ***
${URL}    https://google.com
${BROWSER}    Chrome

*** Keywords ***
เปิด google
    Open Browser    url=${URL}    browser=${BROWSER}

พิมพ์คำว่า
    [Arguments]    ${KEYWORD}
    Input Text    q    ${KEYWORD}
    Press Keys    None    RETURN

เจอ
    [Arguments]    ${EXPECTED_RESULT}
    Wait Until Page Contains    ${EXPECTED_RESULT}

ปิด google
    Close Browser

ไปหน้าแรก
    Go To    ${URL}