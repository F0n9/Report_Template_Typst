# Report Template Typst - FIT-HCMUS

Template báo cáo học thuật bằng Typst dành cho sinh viên Khoa Công nghệ Thông tin - Trường Đại học Khoa học Tự nhiên, ĐHQG-HCM.

## Giới thiệu
Template này được thiết kế để giúp bạn tạo ra các bản báo cáo chuyên nghiệp một cách nhanh chóng. Nó bao gồm:
- Trang bìa chuẩn (Hỗ trợ ảnh border và logo).
- Mục lục tự động.
- Header và Footer đồng nhất cho toàn bộ báo cáo.
- Cấu hình sẵn font chữ (Times New Roman), cỡ chữ và dãn dòng chuẩn academic.
- Hỗ trợ công thức toán học và bảng biểu.

## Cấu trúc thư mục
- `assets/`: Chứa logo và các tệp hình ảnh trang trí.
- `content/`: Chứa các tệp nội dung báo cáo (chia nhỏ theo chương).
- `src/`: Chứa logic template và cấu hình theme.
- `main.typ`: Tệp thực thi chính (Entry point).
- `metadata.typ`: Nơi bạn thay đổi thông tin đồ án, nhóm, giảng viên...

## Cách sử dụng
1.  **Cài đặt Typst**: Tải và cài đặt Typst từ [typst.app](https://typst.app) hoặc sử dụng VS Code extension.
2.  **Cấu hình thông tin**: Mở tệp `metadata.typ` và cập nhật các thông tin như tên đồ án, danh sách thành viên, tên giảng viên.
3.  **Viết nội dung**: Thêm các tệp `.typ` mới vào thư mục `content/` và sử dụng `#include` trong `main.typ` để đưa chúng vào báo cáo.
4.  **Biên dịch**:
    ```bash
    typst compile main.typ
    ```
    Hoặc sử dụng tính năng xem trước (watch):
    ```bash
    typst watch main.typ
    ```

## Tùy biến
Bạn có thể thay đổi màu sắc chủ đạo hoặc font chữ tại `src/theme.typ`.

## Đóng góp
Mọi đóng góp nhằm hoàn thiện template đều được chào đón!

---
*From aoe1920 with ❤️*
