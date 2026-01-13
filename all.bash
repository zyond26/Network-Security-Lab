# Lệnh để kiểm tra ip 
ip a

#Lệnh để xem gateway 
ip route

""" Hiểu ip route

- 192.168.56.0/24 là địa chỉ của cả mạng, không phải IP máy
- src là IP của chính máy đó
- Mỗi máy trong LAN phải có IP khác nhau
- Không có default route là bình thường trong Host-only
"""

# Lệnh xem bảng arp
arp -a hoặc ip neigh  # cho cả ubuntu và kali linux

###########################    Lệnh để tạo web  #####################################

#  +) Cài apache2 : -> web server 
 sudo apt update
 sudo apt install apache2

#  +) Kiểm tra apache2 có chạy không :
 systemctl status apache2 

"""
active (running ) -> ok

inactive (failed) -> try again 
"""

 Bật Apache : `sudo systemctl start apache2`

### 🔹 Dừng Apache : `sudo systemctl stop apache2`

### 🔹 Xem file web

`ls /var/www/html`

👉 Kiểm tra `login.html` có tồn tại không

### 🔹 Sửa file HTML

`nano /var/www/html/login.html`

### 🔹 Lưu & thoát nano

|Phím|Chức năng|
|---|---|
|Ctrl + O|Lưu|
|Enter|Xác nhận|
|Ctrl + X|Thoát|

### 🔹 Truy cập web (Ubuntu) : `http://localhost/login.html`

### 🔹 Truy cập web từ Kali

`http://192.168.56.103/login.html`

### 🔹 Sửa quyền file (khi bị lỗi)

`sudo chmod 644 /var/www/html/login.html`
