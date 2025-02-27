<section class="content-header" style="margin-bottom: 15px;">
    <h1>
        Thêm danh mục mới
        <small>SammiShop</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="index.php?area=backend"><i class="fa fa-home"></i> Trang Chủ</a></li>
        <li><a href="index.php?area=backend&controller=category">Danh sách danh mục</a></li>
        <li class="active">Thêm danh mục mới</li>
    </ol>
</section>
<div class="box box-danger">
    <div class="box-body">
        <form role="form" id="category_form" enctype="multipart/form-data" method="POST">
            <div class="form-group">
                <label for="name">Tên danh mục mới :</label>
                <input type="text" name="name" id="name"
                    value="<?php echo isset($_POST["name"]) ? $_POST["name"] : '' ?>" class="form-control"
                    placeholder="Tên của danh mục ...">
            </div>
            <!-- textarea -->
            <div class="form-group">
                <label for="avatar">Ảnh đại diện : </label>
                <input type="file" name="avatar" id="avatar">
            </div>
            <!--          -->
            <div class="form-group">
                <?php
                  $selected_status_a="";
                  $selected_status_d="";
                  if(isset($_POST["category_status"])){
                      switch ($_POST["category_status"]){
                          case 0:
                              $selected_status_d="selected";
                              break;
                          case 1:
                              $selected_status_a="selected";
                              break;
                      }
                  }
                  ?>
                <label for="category_status">Phân loại của danh mục</label>
                <select name="category_status" id="category_status" class="form-control">
                    <option value=""> --- Phân loại của danh mục ---</option>
                    <option value="1" <?php echo $selected_status_a;  ?>>Sản phẩm</option>
                    <option value="0" <?php echo $selected_status_d; ?>>Tin Tức</option>
                </select>
            </div>
            <!--          -->
            <div class="form-group">
                <label for="">Miêu tả danh mục :</label>
                <input type="text" class="form-control" name="content" placeholder="Miêu tả chi tiết danh mục ...">
            </div>


            <!-- input states -->
            <div class="form-group">
                <?php
                    $selected_status_a="";
                    $selected_status_d="";
                    if(isset($_POST["status"])){
                        switch ($_POST["status"]){
                            case 0:
                                $selected_status_d="selected";
                                break;
                            case 1:
                                $selected_status_a="selected";
                                break;
                        }
                    }
                    ?>
                <label for="status">Trạng thái của danh mục</label>
                <select name="status" id="status" class="form-control">
                    <option value=""> --- Trạng thái của danh mục ---</option>
                    <option value="1" <?php echo $selected_status_a;  ?>>Active</option>
                    <option value="0" <?php echo $selected_status_d; ?>>Disable</option>
                </select>
            </div>
            <div>
                <input class="btn btn-success" type="submit" value="Thêm danh mục" name="submit">
                <a class="btn btn-danger" href="index.php?area=backend&controller=category">Hủy</a>
            </div>
        </form>
    </div>
</div>
<script>
$("#category_form").validate({
    rules: {
        name: {
            required: true
        },
        avatar: {
            extension: "jpg|png|jpeg|gif|pdf"
        },
        status: {
            required: true
        },
        category_status: {
            required: true
        },
    },
    messages: {
        name: {
            required: " * Bạn phải nhập tên danh mục"
        },
        avatar: {
            extension: "Phải tải ảnh lên đúng định dạng "
        },
        status: {
            required: " * Chọn trạng thái của danh mục"
        }
    }
});
</script>