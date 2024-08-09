#!/bin/bash

# 1. ดาวน์โหลดไฟล์ติดตั้ง Falcon Sensor
wget https://storage.googleapis.com/falcon-sensor.appspot.com/ubuntu/7.16.16903/falcon-sensor_7.16.0-16903_amd64.deb

# 2. แสดงรายการไฟล์ในไดเรกทอรีปัจจุบัน
ls

# 3. เปลี่ยนสิทธิ์ของไฟล์ติดตั้งเป็น 777
chmod 777 falcon-sensor_7.16.0-16903_amd64.deb

# 4. แสดงรายการไฟล์ในไดเรกทอรีปัจจุบันอีกครั้ง
ls

# 5. ติดตั้งแพ็กเกจ Falcon Sensor
dpkg -i falcon-sensor_7.16.0-16903_amd64.deb

# 6. ตั้งค่า CID (Customer ID) สำหรับ Falcon Sensor
/opt/CrowdStrike/falconctl -s --cid=00F79DE8BE94463D8482591A1A4B5AF2-85

# 7. เปิดใช้งานการเริ่มต้นอัตโนมัติของ Falcon Sensor
systemctl enable falcon-sensor

# 8. เริ่มต้นบริการ Falcon Sensor
systemctl start falcon-sensor

# 9. ตรวจสอบสถานะของบริการ Falcon Sensor
systemctl status falcon-sensor

# 10. อีกวิธีในการตรวจสอบสถานะของ Falcon Sensor
service falcon-sensor status
