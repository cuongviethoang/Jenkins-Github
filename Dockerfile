# Sử dụng một image cơ sở
FROM nginx:latest

# Sao chép mã nguồn HTML vào thư mục mặc định của Nginx (/usr/share/nginx/html)
COPY index.html /usr/share/nginx/html/


