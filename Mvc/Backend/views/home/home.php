<div class="row">
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <?php
        $boxColorClass = ''; // Biến lưu trữ tên class màu sắc mặc định
        if ($countOrder0 >= 0 && $countOrder0 < 10) {
            $boxColorClass = 'bg-aqua'; // Màu xanh
        } elseif ($countOrder0 >= 10 && $countOrder0 < 50) {
            $boxColorClass = "bg-yellow"; // Màu xanh lá cây
        } elseif ($countOrder0 >= 50) {
            $boxColorClass = 'bg-red'; // Màu đỏ
        }
        ?>
        <div class="small-box <?php echo $boxColorClass; ?>">
            <div class="inner">
                <h3>
                    <?php echo $countOrder0; ?>
                </h3><span></span>
                <p>Đơn hàng đang xử lý</p>
            </div>
            <div class="icon">
                <i class="ion ion-bag"></i>
            </div>
            <a href="index.php?area=backend&controller=ShoppingCart" class="small-box-footer">Xem chi tiết <i
                    class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>

    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-green">
            <div class="inner">
                <h3>
                    <?php echo $countUser; ?>
                </h3>

                <p>Tài khỏan thành viên</p>
            </div>
            <div class="icon">
                <i class="ion ion-stats-bars"></i>
            </div>
            <a href="index.php?area=backend&controller=User" class="small-box-footer">Xem chi tiết <i
                    class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <!-- ./col -->
</div>

<div class="row">
    <div class="box-header">
        <h3 class="box-title">Biểu đồ lượng đơn </h3>
    </div>
    <div
        style="width: 100% !important; height: 500px !important; display: flex; justify-content: center; align-items: center;">

        <canvas id="orderChart" style="width: 600px !important; height: 500px;"></canvas>
    </div>
    <div class="col-6"></div>
</div>


<script>
// Get the context of the canvas element
var ctx = document.getElementById('orderChart').getContext('2d');

// Parse the JSON data
var months = <?php echo $monthsJson; ?>;
var orderCounts = <?php echo $orderCountsJson; ?>;

// Create the chart
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: months,
        datasets: [{
            label: 'Orders per Month',
            data: orderCounts,
            backgroundColor: 'rgba(75, 192, 192, 0.2)', // You can customize the color
            borderColor: 'rgba(75, 192, 192, 1)', // You can customize the color
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
});
</script>