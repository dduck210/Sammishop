<?php
class Controller {
    public $error = [];
    public $content;
    
    public function __construct() {
        // Kiểm tra xem có phải đang ở khu vực "Backend" không
        if (isset($_GET["area"]) && strtolower($_GET["area"]) == strtolower("Backend")) {
            // Nếu chưa đăng nhập và không phải trang login, chuyển hướng đến trang đăng nhập
            if (!isset($_SESSION["user_admin"]) && $_GET["controller"] != 'login') {
                header("location:index.php?area=backend&controller=login");
                exit();
            }
        }
    }

    // Phương thức render để hiển thị view
    public function render($file, $variable = []) {
        // Biến đổi mảng $variable thành các biến riêng biệt
        extract($variable);
        
        // Bắt đầu ghi dữ liệu vào bộ đệm đầu ra
        ob_start();
        
        // Yêu cầu file view để hiển thị
        require_once $file;
        
        // Lấy nội dung đã ghi vào bộ đệm
        $view = ob_get_clean();
        
        // Trả về nội dung view
        return $view;
    }
}