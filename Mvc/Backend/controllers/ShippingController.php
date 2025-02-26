<?php
require_once "Mvc/Backend/Models/ShoppingCart.php";
class ShippingController extends Controller
{
  public function index()
  {
    $pageSize = 10;
    $page = "";
    if (isset($_POST["page"]) && is_numeric($_POST["page"])) {
      $page = $_POST["page"];
    } else {
      $page = 1;
    }
    $order_model = new ShoppingCart();
    $countOrder = $order_model->countTotal();
    $numPage = ceil($countOrder / $pageSize);
    $adminUserId = $_SESSION["user_admin"]["id"];
    require_once "Mvc/backend/views/layouts/main.php";
  }
  public function detail()
  {
    if (!isset($_GET['id']) || !is_numeric($_GET['id'])) {
      $_SESSION['error'] = 'ID không hợp lệ';
      header('Location: index.php?area=backendcontroller=ShoppingCart');
      exit();
    }
    $id = $_GET["id"];
    $order_model = new ShoppingCart();
    $order = $order_model->order($id);
    $products = $order_model->listProduct($id);
    $this->content = $this->render("Mvc/backend/views/shoppingcart/detail.php", [
      "products" => $products,
      "order" => $order

    ]);
    require_once 'Mvc/backend/views/layouts/main.php';
  }
  public function send_payment()
  {
    if (!isset($_GET['id']) || !is_numeric($_GET['id'])) {
      $_SESSION['error'] = 'ID không hợp lệ';
      header('Location: index.php?area=backendcontroller=ShoppingCart');
      exit();
    }
    $id = $_GET["id"];
    $order_model = new ShoppingCart();
    $order_model->updated_at = date('Y-m-d H:i:s');
    $is_update = $order_model->sentPaymentOrder($id);
    if ($is_update) {
      $_SESSION['success'] = 'Đã thanh toán đơn hàng';
    } else {
      $_SESSION['error'] = 'Thanh toán thất bại';
    }
    header('Location: index.php?area=backend&controller=ShoppingCart');
    exit();
  }
  public function send_status()
  {
    if (!isset($_GET['id']) || !is_numeric($_GET['id'])) {
      $_SESSION['error'] = 'ID không hợp lệ';
      header('Location: index.php?area=backendcontroller=shipping');
      exit();
    }
    $id = $_GET["id"];
    $order_model = new ShoppingCart();
    $order_model->updated_at = date('Y-m-d H:i:s');
    $is_update = $order_model->sentStatusOrder2($id);
    if ($is_update) {
      $_SESSION['success'] = 'Đã xác nhân đơn hàng';
    } else {
      $_SESSION['error'] = 'Đơn hàng có vấn đề';
    }
    header('Location: index.php?area=backend&controller=shipping');
    exit();
  }
  public function send_statusAll()
  {
    $order_model = new ShoppingCart();
    $order_model->updated_at = date('Y-m-d H:i:s');
    $is_update = $order_model->sentStatusAll();
    if ($is_update) {
      $_SESSION['success'] = 'Đã xác nhân đơn hàng';
    } else {
      $_SESSION['error'] = 'Có đơn hàng gặp vấn đề';
    }
    header('Location: index.php?area=backend&controller=ShoppingCart');
    exit();
  }
  public function delete()
  {
    if (!isset($_GET['id']) || !is_numeric($_GET['id'])) {
      $_SESSION['error'] = 'ID không hợp lệ';
      header('Location: index.php?area=backendcontroller=ShoppingCart');
      exit();
    }
    $id = $_GET["id"];
    $order_model = new ShoppingCart();
    $order_model->updated_at = date('Y-m-d H:i:s');
    $is_update = $order_model->delete_Oder($id);
    if ($is_update) {
      $_SESSION['success'] = 'Đơn hàng đã được hủy';
    } else {
      $_SESSION['error'] = 'Đơn hàng có vấn đề';
    }
    header('Location: index.php?area=backend&controller=ShoppingCart');
    exit();
  }
}