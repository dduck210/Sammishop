<?php
// Bắt đầu phiên làm việc
session_start();

// Tải các tệp cần thiết: controller, model, helper
require_once "App/controllers/controller.php";
require_once "App/database/Model.php";
require_once "App/helpers/helper.php";

// Lấy thông tin từ URL (nếu có), nếu không thì dùng giá trị mặc định
$area = isset($_GET["area"]) ? $_GET["area"] : 'Frontend';  // Mặc định là 'Frontend'
$controller = isset($_GET["controller"]) ? $_GET["controller"] : 'home';  // Mặc định là 'home'
$action = isset($_GET["action"]) ? $_GET["action"] : 'index';  // Mặc định là 'index'

// Đảm bảo controller có chữ cái đầu tiên viết hoa, và thêm "Controller" vào cuối
$controller = ucfirst($controller);
$controller .= "Controller";

// Xác định đường dẫn tới file controller
$path_controller = "controllers/$controller.php";
$file_controller = "Mvc/$area/$path_controller";  // Đường dẫn đầy đủ đến controller trong thư mục 'Mvc/{area}/controllers/'

// Kiểm tra nếu file controller không tồn tại
if (!file_exists($file_controller)) {
    die("Trang bạn truy cập không tồn tại");  // Nếu không tồn tại, dừng và thông báo lỗi
}

// Tải file controller
require_once "$file_controller";

// Tạo đối tượng controller tương ứng
$obj = new $controller;

// Kiểm tra xem phương thức (action) có tồn tại trong controller không
if (!method_exists($obj, $action)) {
    die("Không tồn tại phương thức $action trong class $controller");  // Nếu không tồn tại, dừng và thông báo lỗi
}

// Gọi phương thức (action) trong controller
$obj->$action();  // Thực thi action (ví dụ: index, show, etc.)
?>