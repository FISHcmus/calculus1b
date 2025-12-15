clear all;
clc;
%% Ngay 30_10_2025
fprintf("Ngay 30_10_2025\n\n=======*=======\n\n")
% MSSV: 25310023
% ngay: 30/10/2023
a = 0; b= 2; c = 3;
m = a + 2*b +3*c;
fprintf("m = %d\n\n",m)
% m = 13
fprintf("\n====\n")

%% 1c)
disp('cau 1c trang 12')
syms x

f(x) = sqrt(x)*(1+(sin((2*pi)/x))^2);

% giải theo định lý kẹp
fprintf('Cách 1: Giải theo định lý kẹp\n\n')
fprintf("Vi  -1 <= sin((2*pi)/x) <= 1\n\n ")
fprintf("nen 0<= (sin((2*pi)/x))^2 <=1\n\n")
fprintf("nen sqrt(x) <= sqrt(x)*(1+(sin((2*pi)/x))^2) <= 2* sqrt(x)\n\n")
lim_ben_trai_1c = limit(sqrt(x),x,0);
lim_ben_phai_1c = limit(2*sqrt(x), x, 0);
fprintf('gioi han ham so ben trai limit(sqrt(x),x,0) = %f:\n',lim_ben_trai_1c)
fprintf('gioi han ham so ben phai limit(2*sqrt(x),x,0)= %f:\n',lim_ben_phai_1c );
if lim_ben_trai_1c == lim_ben_phai_1c
    fprintf('vi gioi han 2 ham so o 2 dau bang 0 khi x tien toi 0 nen theo dinh ly gioi han kep thi gioi han ham so = 0 khi x tien toi 0\n\n')
else
    fprintf('vi gioi han 2 dau khac nhau:  nen ta khong tim ra lim\n\n')
end
fprintf("\n====\n")

fprintf('cach 2: giai truc tiep bang 1 dong lenh matlab  result = limit(f,x,0)\n\n')
result = limit(f,x,0);
pretty(result)
fprintf("\n====\n")

%% 9c)
fprintf('cau 9c trang 14\n\n')
g = piecewise(x < 1, 1-x^2, ...
    x >=1, 1/x);

% diem can xet
a = 1;

l_right = limit(g,x,a,'right');
l_left = limit(g,x,a,'left');

fprintf('gioi han ben phai la %d\ngioi han ben trai la %d\n',l_right,l_left)

if l_right == l_left
    disp(' vi gioi han tien tu ben trai bang gioi han tien tu ben phai, ham so lien tuc')
else
    disp('vi gioi han tien tu trai khong bang gioi han tien tu phai, ham so khong lien tuc')
end
fprintf("\n====\n")


%9e
disp('cau 9e trang 14')
g2= piecewise(x<0,cos(x), ...
    x == 0, 0, ...
    x > 0,1-x^2);
a = 0 ;

l_right = limit(g2,x,a,'right');
l_left = limit(g2,x,a,'left');
fprintf('gioi han ben phai la %d\ngioi han ben trai la %d\n',l_right,l_left)

if l_right == l_left
    disp(' vi gioi han tien tu ben trai bang gioi han tien tu ben phai, ham so lien tuc')
else
    disp('vi gioi han tien tu trai khong bang gioi han tien tu phai, ham so khong lien tuc')
end
fprintf("\n====\n")

%% cau 10b

disp('cau 10b trang 14')

h = piecewise(x<=1, x+1, ...
    (x>1) & (x<3)  , 1/x, ...
    x>=3, sqrt(x-3));

giatritai1 = subs(h,x,1); % subs ham thay bien x bang gia tri 1 trong ham h
giatritai3 = subs(h,x,3);
limit_tai_1_ben_trai = limit(h,x,1,'left');
limit_tai_1_ben_phai = limit(h,x,1,'right');
limit_tai_3_ben_trai = limit(h,x,3,'left');
limit_tai_3_ben_phai = limit(h,x,3,'right');

fprintf('gioi han tai 1 ben trai la %d\ngioi han tai 1 ben phai la %d\n',limit_tai_1_ben_trai,limit_tai_1_ben_phai)
fprintf('gioi han tai 3 ben trai la %f\ngioi han tai 3 ben phai la %d\n',limit_tai_3_ben_trai,limit_tai_3_ben_phai)

fprintf("\n====\n")

disp('xet tinh gian doan cua h tai  diem x= 1')
if limit_tai_1_ben_phai == limit_tai_1_ben_trai
    disp('vi gioi han tai 1 ben trai = ben phai nen ham so lien tuc tai 1')
else
    disp('vi gioi han tai 1 ben trai khong bang ben phai ham so gian doan tai 1')
    fprintf("\n====\n")

    disp('xet tinh lien tuc ben trai tai 1')

    if limit_tai_1_ben_trai == giatritai1
        disp('vi gioi han ben trai tai 1 bang gia tri cua h tai 1 nen lien tuc ben trai tai 1')
    else
        disp('vi gioi han ben trai tai 1 khong bang gia tri cua ham tai 1 nen ham so khong lien tuc ben trai tai 1')
    end
    if limit_tai_1_ben_phai == giatritai1
        disp('vi gioi han ben phai tai 1 bang gia tri cua h tai 1 nen lien tuc ben phai tai 1')
    else
        disp('vi gioi han ben phai tai 1 khong bang gia tri ham tai 1 nen ham so khong lien tuc ben phai tai 1')
    end

end
fprintf("\n====\n")


disp('xet tinh gian doan cua h tai  diem x= 3')
if limit_tai_3_ben_phai == limit_tai_3_ben_trai
    disp('vi gioi han tai 3 ben trai = ben phai nen ham so lien tuc tai 3')
else
    disp('vi gioi han tai 3 ben trai khong bang ben phai ham so gian doan tai 3')
    fprintf("\n====\n")
    disp('xet tinh lien tuc ben trai tai 3')
   

    if limit_tai_3_ben_trai == giatritai3
        disp('vi gioi han ben trai tai 3 bang gia tri cua h tai 3 nen lien tuc ben trai tai 3')
    else
        disp('vi gioi han ben trai tai 3 khong bang gia tri cua ham tai 3 nen ham so khong lien tuc ben trai tai 3')
    end
    if limit_tai_3_ben_phai == giatritai3
        disp('vi gioi han ben phai tai 3 bang gia tri cua h tai 3 nen lien tuc ben phai tai 3')
    else
        disp('vi gioi han ben phai tai 3 khong bang gia tri cua ham tai 3 nen ham so khong lien tuc ben trai tai 3')
    end
end
%% Ngay 6_11_2025
fprintf("=======*=======\n\nNgay 6_11_2025\n\n=======*=======\n\n")

% MSSV: 25310023
% n = a+5*b+3*c 
n = 0 + 5*2 + 3*3; %% n = 19
fprintf("n = %d",n)
syms x h;
fprintf("\n====\n")
%% cau 15
fprintf("Cau 15 trang 18")
f_15(x) = (x-1)/(x-2);
fprintf("tim dao ham cua %s\n",char(f_15))

fprintf("Cach 1: dung dinh nghia da(x) = limit((f_15(x+h) - f_15(x))/h,h,0);\n")
da(x) = limit((f_15(x+h) - f_15(x))/h,h,0);
fprintf("Dao ham cua f_15 la: %s\n", da(x));

fprintf("CAch 2: dung ham diff cua matlab\n")
db(x) = diff(f_15,x);
fprintf("Dao ham cua f_15 la: %s\n", db(x));

fprintf("So sanh da va db tai n = %d\n", n);

if da(n) == db(n)
    fprintf("Ket qua da(%d) = %f va db(%d) = %f giong nhau\n",n,da(n),n,db(n))
else
    fprintf("Ket qua da(%d) = %f va db(%d) = %f khong giong nhau\n",n,da(n),n,db(n))
end

fprintf("\n====\n")
%% cau 21: f = sqrt(3*x+1)
fprintf("cau 21 trang 18")
f_21(x) = sqrt(3*x+1);
fprintf("tim dao ham cua %s\n",char(f_21))

fprintf("Cach 1: dung dinh nghia  limit((f_21(x+h) - f_21(x))/h,h,0)\n")
da(x) = limit((f_21(x+h) - f_21(x))/h,h,0);
fprintf("Dao ham cua f_21 la: %s\n", da(x));

fprintf("CAch 2: dung ham diff cua matlab\n")
db(x) = diff(f_21,x);
fprintf("Dao ham cua f_21  la: %s\n", db(x));

fprintf("So sanh da va db tai n = %d\n", n);

if da(n) == db(n)
    fprintf("Ket qua da(%d) = %f va db(%d) = %f giong nhau\n",n,da(n),n,db(n))
else
    fprintf("Ket qua da(%d) = %f va db(%d) = %f khong giong nhau\n",n,da(n),n,db(n))
end

fprintf("\n====\n")
%% cau 23 f = 1/sqrt(x+2)
fprintf("Cau 23 trang 18")
f_23(x) = 1/sqrt(x+2);
fprintf("tim dao ham cua %s\n",char(f_23))

fprintf("Cach 1: dung dinh nghia  limit((f_23(x+h) - f_23(x))/h,h,0)\n")
da(x) = limit((f_23(x+h) - f_23(x))/h,h,0);
fprintf("Dao ham cua f_23 la: %s\n", da(x));

fprintf("CAch 2: dung ham diff cua matlab\n")
db(x) = diff(f_23,x);
fprintf("Dao ham cua f_23 (Cach 2) la: %s\n", db(x));

fprintf("So sanh da va db tai n = %d\n", n);

if da(n) == db(n)
    fprintf("Ket qua da(%d) = %f va db(%d) = %f giong nhau\n",n,da(n),n,db(n))
else
    fprintf("Ket qua da(%d) = %f va db(%d) = %f khong giong nhau\n",n,da(n),n,db(n))
end

fprintf("\n====\n")


%% Ngay 13 thang 11 2025
% p = 2a+ 5b - c
% MSSV: 25310023
p = 2*0 + 5 * 2 - 3; %% p = 7
fprintf("\nNgay 13 thang 11 2025\n===\n")
fprintf("\np= %d\n",p)
 % p le, cau 12b,c/tr31
 %% cau 12b y=1/(x+1), x =1, dx = -0.01
fprintf("Cau 12b, tinh vi phan cua  y=1/(x+1), x =1, dx = -0.01\n")
syms x;
f_b = 1/(x+1);
x_b = 1;
dx_b = -0.01;
diff_f_b= diff(f_b,x);
fprintf("Dao ham cua f la %s\n",diff_f_b)
fprintf("Vi phan cua f tai x = %f va dx= %f la %f\n",x_b,dx_b,subs(diff_f_b,x,x_b)*dx_b)
fprintf("\n===\n")
%% 12/c trang 13: y=tan(x) , x=pi/4, dx=-0.1
fprintf("Cau 12c trang 13, tinh vi phan cua y=tan(x) , x=pi/4, dx=-0.1\n")

f_c = tan(x);
x_c = pi/4;
dx_c = -0.1;
diff_f_c= diff(f_c,x);
fprintf("Dao ham cua f la %s\n",diff_f_c)
fprintf("Vi phan cua f tai x = %f va dx= %f la %f\n",x_c,dx_c,subs(diff_f_c,x,x_c)*dx_c)
fprintf("\n===\n")

% Ngay 4 thang 12 2025
% 25310023
% q = a + 5*b + 7*c
q = 5 * 2 + 7 * 3; %q = 31

fprintf("\nq = a + 5*b + 7*c = %d\n",q)
fprintf("\n===\n")

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
fprintf("\n===\n")

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
fprintf("\n===\n")

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