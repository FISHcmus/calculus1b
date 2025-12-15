% Ngay 4 thang 12 2025
% 25310023
% q = a + 5*b + 7*c
q = 5 * 2 + 7 * 3; %q = 31

fprintf("\nq = a + 5*b + 7*c = %d\n",q)

%% 
fprintf("\nCâu 1a trang 54\n")
% --- Cài đặt thông số chung ---
a = 1;          % Cận dưới
b = 2;          % Cận trên

% --- CÁCH 1: Dùng hàm Symbolic của Matlab (Tính chính xác) ---
syms x
% Định nghĩa hàm số y
y = 2 - (1/2)*x;

% Công thức thể tích khối tròn xoay: V = pi * integral(y^2)
cong_thuc_tich_phan = pi * y^2;

% Tính tích phân và gán vào I1
I1_sym = int(cong_thuc_tich_phan, x, a, b);
I1 = double(I1_sym); % Chuyển sang dạng số thực để so sánh

% --- CÁCH 2: Dùng định nghĩa tích phân (Tổng Riemann) ---
% Tích phân là giới hạn của tổng diện tích (ở đây là thể tích) các lát cắt nhỏ
% khi số lượng lát cắt N tiến tới vô cùng.
N = 100000;             % Số lượng khoảng chia (càng lớn càng chính xác)
dx = (b - a) / N;       % Độ rộng của mỗi vi phân (dx)
x_val = a:dx:(b-dx);    % Tạo vector x (lấy điểm bên trái mỗi khoảng)

% Tính giá trị hàm số tại các điểm x
y_val = 2 - (1/2)*x_val;

% Tính tổng thể tích các đĩa nhỏ: Sum(pi * r^2 * h)
% r = y_val, h = dx
I2 = sum(pi * (y_val.^2) * dx);

% --- HIỂN THỊ KẾT QUẢ VÀ SO SÁNH ---
fprintf('--------------------------------------------------\n');
fprintf('Kết quả tính toán thể tích khối tròn xoay:\n');
fprintf('--------------------------------------------------\n');
fprintf('Cách 1 (Dùng hàm int - Chính xác):   %.6f\n', I1);
fprintf('Cách 2 (Dùng định nghĩa - Xấp xỉ):   %.6f\n', I2);
fprintf('--------------------------------------------------\n');
fprintf('Sai số tuyệt đối (|I1 - I2|):        %.10f\n', abs(I1 - I2));

if abs(I1 - I2) < 1e-4
    disp('=> Kết luận: Hai kết quả tương đồng nhau.');
else
    disp('=> Kết luận: Có sự sai khác đáng kể (cần tăng N ở Cách 2).');
end

fprintf("\nCâu 1d trang 54\n")

% --- Cài đặt thông số chung ---
a = 2;          % Cận dưới
b = 4;          % Cận trên

% --- CÁCH 1: Dùng hàm Symbolic của Matlab (Tính chính xác) ---
syms x
% Định nghĩa hàm số y
y = sqrt(25 - x^2);

% Công thức thể tích khối tròn xoay: V = pi * integral(y^2)
cong_thuc_tich_phan = pi * y^2;

% Tính tích phân xác định và gán vào I1
I1_sym = int(cong_thuc_tich_phan, x, a, b);
I1 = double(I1_sym); % Chuyển sang số thực để so sánh

% --- CÁCH 2: Dùng định nghĩa tích phân (Tổng Riemann) ---
% Chia miền tích phân thành N hình trụ nhỏ (phương pháp đĩa)
N = 100000;             % Số lượng lát cắt
dx = (b - a) / N;       % Độ dày mỗi lát cắt
x_val = a:dx:(b-dx);    % Vector x (lấy điểm đầu mỗi khoảng)

% Tính giá trị hàm số tại các điểm x
y_val = sqrt(25 - x_val.^2);

% Tính tổng thể tích các đĩa nhỏ: Sum(pi * r^2 * h)
% r = y_val, h = dx
I2 = sum(pi * (y_val.^2) * dx);

% --- HIỂN THỊ KẾT QUẢ VÀ SO SÁNH ---
fprintf('--------------------------------------------------\n');
fprintf('KẾT QUẢ TÍNH THỂ TÍCH KHỐI TRÒN XOAY (CÂU D)\n');
fprintf('--------------------------------------------------\n');
fprintf('Hàm số: y = sqrt(25 - x^2) trên đoạn [2, 4]\n\n');
fprintf('Cách 1 (Dùng hàm int - Chính xác):   %.6f\n', I1);
fprintf('Cách 2 (Dùng định nghĩa - Xấp xỉ):   %.6f\n', I2);
fprintf('--------------------------------------------------\n');
fprintf('Sai số tuyệt đối (|I1 - I2|):        %.10f\n', abs(I1 - I2));

% Kiểm tra độ chính xác
if abs(I1 - I2) < 1e-3
    disp('=> Kết luận: Hai cách tính cho kết quả tương đương.');
else
    disp('=> Kết luận: Có sự sai lệch (thử tăng N ở Cách 2).');
end

fprintf("\nCâu 6 trang 64\n")

% Khai báo biến ký hiệu
syms r

% Định nghĩa hàm số dưới dấu tích phân
f = 2^r;

% --- CÁCH 1: Dùng hàm int trực tiếp của Matlab ---
% Matlab có thể xử lý trực tiếp cận vô cùng (-inf)
I1_sym = int(f, r, -inf, 0);
I1 = double(I1_sym); % Chuyển sang số thực

% --- CÁCH 2: Dùng định nghĩa tích phân suy rộng ---
% Định nghĩa: I = lim(a -> -inf) của tích phân từ a đến 0
syms a
% Bước 1: Tính tích phân xác định với cận dưới là a
I_a = int(f, r, a, 0); 
% Bước 2: Tính giới hạn của kết quả khi a tiến tới âm vô cùng
I2_sym = limit(I_a, a, -inf);
I2 = double(I2_sym); % Chuyển sang số thực

% --- HIỂN THỊ KẾT QUẢ ---
fprintf('--------------------------------------------------\n');
fprintf('KẾT QUẢ TÍNH TÍCH PHÂN SUY RỘNG (CÂU 6)\n');
fprintf('Hàm số: 2^r, Cận: -vo cung -> 0\n');
fprintf('--------------------------------------------------\n');
fprintf('Cách 1 (Hàm int trực tiếp): %.4f\n', I1);
fprintf('Cách 2 (Định nghĩa Limit):  %.4f\n', I2);
fprintf('--------------------------------------------------\n');

% Giá trị chính xác dạng ký hiệu (Symbolic)
disp('Giá trị chính xác (dạng phân số/biểu thức):');
disp(I1_sym);