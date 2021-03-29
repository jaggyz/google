*** Settings ***
Library    SeleniumLibrary
Resource    resource_google.robot

*** Test Cases ***
ค้นหา ง่วง ผลการค้นต้องพบ 5 เทคนิค แก้ง่วงระหว่างวัน
    เปิด google
    พิมพ์คำว่า   ง่วง
    เจอ    5 เทคนิค แก้ง่วงระหว่างวัน
    ปิด google
