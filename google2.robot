*** Settings ***
Library    SeleniumLibrary
Suite Setup    เปิด google
Suite Teardown    ปิด google
Resource    resource_google.robot

*** Test Cases ***
ค้นหา ง่วง ผลการค้นต้องพบ 5 เทคนิค แก้ง่วงระหว่างวัน
    ไปหน้าแรก
    พิมพ์คำว่า    ง่วง
    เจอ    5 เทคนิค แก้ง่วงระหว่างวัน

ค้นหา ไม่ง่วง ผลการค้นต้องพบ อยากนอน แต่นอนไม่หลับ
    ไปหน้าแรก
    พิมพ์คำว่า    ไม่ง่วง
    เจอ    อยากนอน แต่นอนไม่หลับ

