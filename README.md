# Mẫu Báo Cáo Typst (HCMUS Style)

[![Typst](https://img.shields.io/badge/Typst-239120?style=for-the-badge&logo=typst&logoColor=white)](https://typst.app/)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](LICENSE)
[![Maintained](https://img.shields.io/badge/Maintained%3F-yes-green.svg?style=for-the-badge)](https://github.com/F0n9/Report_Template_Typst/graphs/commit-activity)
[![HCMUS](https://img.shields.io/badge/HCMUS-VNU--HCM-blue?style=for-the-badge)](https://hcmus.edu.vn/)

Template báo cáo Typst chuyên nghiệp, tối giản và có cấu trúc module, thiết kế đặc thù cho sinh viên **Đại học Khoa học Tự nhiên - ĐHQG TP.HCM (FIT-HCMUS)**.

## ✨ Các tính năng nổi bật
- **Cấu trúc Module**: Tách biệt phần cấu hình (`metadata.typ`), định dạng (`src/`) và nội dung (`content/`), giúp dễ dàng quản lý và tái sử dụng.
- **Cá nhân hóa**: Thiết kế trang bìa hiện đại, tập trung vào thông tin cá nhân (Họ tên, MSSV, Email, Giảng viên hướng dẫn).
- **Aesthetics Cao**: Sử dụng phối màu hài hòa, hỗ trợ border trang bìa và logo trường chuẩn xác.
- **Hỗ trợ Tiếng Việt & Toán học**: Tối ưu hiển thị phông chữ tiếng Việt và công thức toán học chuyên sâu.

## 📂 Cấu trúc thư mục
- `main.typ`: File thực thi chính. Bạn sẽ biên dịch hoặc xem trước file này.
- `metadata.typ`: **Nơi quan trọng nhất**. Chứa toàn bộ thông tin về đồ án và cá nhân của bạn.
- `src/`: Chứa các file logic định dạng:
  - `template.typ`: Cấu trúc layout, trang bìa, mục lục và header/footer.
  - `theme.typ`: Định nghĩa màu sắc (Primary, Title, Body) và phông chữ.
- `content/`: Thư mục chứa nội dung báo cáo chia theo module (Intro, Summary, ...).
- `assets/`: Chứa hình ảnh tài nguyên (Logo trường, Border trang bìa, ...).

## 🚀 Hướng dẫn sử dụng
1.  **Môi trường**: 
    - Cài đặt **Typst CLI** hoặc sử dụng trực tiếp trên [Typst App](https://typst.app).
    - Khuyên dùng **VS Code** với extension **Typst LSP** để có trải nghiệm tốt nhất.
2.  **Tùy chỉnh thông tin**:
    - Mở `metadata.typ` và cập nhật các biến `project_title`, `author_name`, `author_id`, `instructor_name`,...
3.  **Viết nội dung**:
    - Chỉnh sửa hoặc thêm các file nội dung trong thư mục `content/`.
    - Đảm bảo các file này được gọi bằng lệnh `#include` trong `main.typ`.
4.  **Biên dịch**:
    ```bash
    # Biên dịch ra file PDF
    typst compile main.typ

    # Chế độ xem trước thời gian thực (Watch mode)
    typst watch main.typ
    ```

## 📄 LICENSE
Dự án này được phát hành dưới giấy phép **MIT License**, cho phép bạn tự do sử dụng và sửa đổi cho mục đích học tập và nghiên cứu.

---
*Created by [aoe1920](https://github.com/F0n9) with ❤️*
