*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ค้นหา ง่วง ผลการค้นต้องพบ 5 เทคนิค แก้ง่วงระหว่างวัน
    เปิด google
    พิมพ์คำว่า ง่วง
    กด enter
    เจอ 5 เทคนิค แก้ง่วงระหว่างวัน
    ปิด google

*** Keywords ***
เปิด google
    Open Browser	url=https://google.com	browser=Chrome

พิมพ์คำว่า ง่วง
    Input Text    q    ง่วง

กด enter
    Press Keys    q    RETURN

เจอ 5 เทคนิค แก้ง่วงระหว่างวัน
    Wait Until Page Contains    5 เทคนิค แก้ง่วงระหว่างวัน

ปิด google
    Close Browser
    
