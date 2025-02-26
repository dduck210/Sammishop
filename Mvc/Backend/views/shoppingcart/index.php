<section class="content-header" style="margin-bottom: 15px;">
    <h1>
        Danh sách đơn hàng
        <small>SammiShop</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="index.php?area=backend"><i class="fa fa-home"></i> Trang Chủ</a></li>
        <li class="active"> <i class="fa fa-address-book"></i> Danh sách đơn hàng</li>
    </ol>
</section>

<div align="right" style="margin:0px 0px 15px 0px;">
    <a class="btn btn-success" onclick="return confirm('Bạn có chắc chắn muốn xác nhận toàn bộ ?')"
        href="index.php?area=backend&controller=ShoppingCart&action=send_statusAll"><i class="fa fa-check"></i> Xác nhận
        toàn bộ đơn hàng</a>
</div>

<?php
?>
<div class="box box-danger" id="order">

    <table class="table table-bordered">
        <thead>
            <tr class="table-active">
                <th scope="col">Mã ĐH</th>
                <th style="width: 10%;" scope="col">Tên người nhận</th>
                <th style="width: 17%;" scope="col">Địa chỉ</th>
                <th style="width: 15%;" scope="col">Email</th>
                <th style="width: 10%;" scope="col">Số điện thoai</th>
                <th style="width: 12%;" scope="col">Trạng thái đơn hàng</th>
                <th style="width: 12%;" scope="col">Phương thức thanh toán</th>
                <th style="width:8%;" scope="col">Ngày tạo</th>
                <th style="text-align: center;width: 10%;">Chi tiết ĐH</th>
            </tr>
        </thead>
        <tbody>

            <?php if (!empty($carts)) : ?>

            <?php
        foreach ($carts as $cart) :
        ?>
            <tr>
                <td><?php echo $cart["id"]; ?></td>
                <td><?php echo $cart["fullname"]; ?></td>
                <td><?php echo $cart["address"]; ?></td>
                <td><?php echo $cart["email"]; ?></td>
                <td><?php echo $cart["phone"]; ?></td>
                <td>
                    <?php
              if ($cart["status"] == 0) {
                echo "<i style='color: red' class='fa fa-retweet'></i> <span style='color:red'> Đang xử lý</span>";
              } elseif ($cart["status"] == 1) {
                echo "<i style='color: #0bb827' class='fa fa-check'></i> <span style='color: #0bb827'>Đã xác nhận thành công, đang giao hàng</span>";
              } elseif ($cart["status"] == 3) {
                echo "<i style='color: red' class='fa fa-check'></i> <span style='color:red'> Đơn hàng đã bị hủy</span>";
              } elseif ($cart["status"] == 4) {
                echo "<i style='color: blue' class='fa fa-check'></i> <span style='color: blue'> Giao hàng thành công</span>";
              }

              ?>
                </td>
                <td>
                    <?php
              if ($cart["payment_status"] == 0) {
                echo "<span style='color:#ff9d28'>Thanh toán tại nhà </span>";
              }
              if ($cart["payment_status"] == 1) {
                echo "<span style='color:green'>Đã thanh toán</span>";
              }
              ?>
                </td>
                <td><?php echo date('d/m/Y', strtotime($cart["created_at"])); ?></td>
                <td style="text-align: center">
                    <a
                        href="index.php?area=backend&controller=ShoppingCart&action=detail&id=<?php echo $cart["id"]; ?>"><i
                            class="fa fa-eye"></i></a>&nbsp;&nbsp;
                    <?php if ($cart["status"] == 0) : ?>
                    <a onclick="return confirm('Bạn có chắc chắn muốn hủy đơn hàng này không ?')"
                        href="index.php?area=backend&controller=ShoppingCart&action=delete&id=<?php echo $cart["id"]; ?>"><i
                            class="fa fa-trash"></i></a>
                    <?php endif; ?>
                </td>

            </tr>
            <?php endforeach; ?>
            <?php else : ?>
            <tr>
                <td colspan="9">Không có đơn hàng nào !!!</td>
            </tr>
            <?php endif; ?>
    </table>

    <script>
    </script>