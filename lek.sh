#!/bin/bash

# 1. ดาวน์โหลดไฟล์ติดตั้ง Falcon Sensor
wget https://dtdreport.inet.co.th/index.php/s/9DrKsMkXCTpbfmy/download/falcon-sensor_Ubuntu_7.03.0-15805_amd64.deb

# 2. รอให้การดาวน์โหลดเสร็จสมบูรณ์
wait

# 3. แสดงรายการไฟล์ในไดเรกทอรีปัจจุบัน
ls

# 4. เปลี่ยนสิทธิ์ของไฟล์ติดตั้งเป็น 777
chmod 777 falcon-sensor_Ubuntu_7.03.0-15805_amd64.deb

# 5. แสดงรายการไฟล์ในไดเรกทอรีปัจจุบันอีกครั้ง
ls

# 6. ติดตั้งแพ็กเกจ Falcon Sensor
dpkg -i falcon-sensor_Ubuntu_7.03.0-15805_amd64.deb
