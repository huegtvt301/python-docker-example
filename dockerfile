# Bước 1: Chọn image Python chính thức từ Docker Hub
FROM python:3.13.5

# Bước 2: Thiết lập thư mục làm việc trong container
WORKDIR /app

# Bước 3: Sao chép file yêu cầu từ máy tính của bạn vào thư mục làm việc trong container
COPY requirements.txt /app/

# Bước 4: Cài đặt các gói yêu cầu từ requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Bước 5: Sao chép toàn bộ mã nguồn ứng dụng vào container
COPY . /app/

# Bước 6: Mở cổng mà ứng dụng Flask sẽ chạy (mặc định là 5000)
EXPOSE 5000

# Bước 7: Lệnh để chạy ứng dụng Flask
CMD ["python", "main.py"]

