<?php if(isset($_GET['view'])): 
require_once('../../config.php');
endif;?>
<?php if($_settings->chk_flashdata('success')): ?>
<script>
	alert_toast("<?php echo $_settings->flashdata('success') ?>",'success')
</script>
<?php endif;?>
<?php 
if(!isset($_GET['id'])){
    $_settings->set_flashdata('error','No order ID Provided.');
    redirect('admin/?page=orders');
}
$order = $conn->query("SELECT o.*,concat(c.firstname,' ',c.lastname) as client FROM `orders` o inner join clients c on c.id = o.client_id where o.id = '{$_GET['id']}' ");
if($order->num_rows > 0){
    foreach($order->fetch_assoc() as $k => $v){
        $$k = $v;
    }
}else{
    $_settings->set_flashdata('error','Order ID provided is Unknown');
    redirect('admin/?page=orders');
}
?>
<div class="card card-outline card-primary">
    <div class="card-body">
        <div class="conitaner-fluid">
            <p><b>Tên khách hàng : <?php echo $client ?></b></p>
            <p><b>Địa chỉ nhận hàng: <?php echo $delivery_address ?></b></p>
            <table class="table-striped table table-bordered">
                <colgroup>
                    <col width="15%">
                    <col width="15%">
                    <col width="30%">
                    <col width="20%">
                </colgroup>
                <thead>
                    <tr>
                        <th>Số lượng</th>
                        <th>Sản phẩm</th>
                        <th>GIá</th>
                        <th>Tổng</th>
                    </tr>
                </thead>
                <tbody>
                    <?php 
                        $olist = $conn->query("SELECT o.*,p.product_name FROM order_list o inner join products p on o.product_id = p.id where o.order_id = '{$id}' ");
                        while($row = $olist->fetch_assoc()):
                    ?>
                    <tr>
                        <td><?php echo $row['quantity'] ?></td>
                        <td><?php echo $row['product_name'] ?></td>
                        <td class="text-right"><?php echo number_format($row['price']) ?></td>
                        <td class="text-right"><?php echo number_format($row['price'] * $row['quantity']) ?></td>
                    </tr>
                    <?php endwhile; ?>
                </tbody>
                <tfoot>
                    <tr>
                        <th colspan='3'  class="text-right">Total</th>
                        <th class="text-right"><?php echo number_format($amount) ?></th>
                    </tr>
                </tfoot>
            </table>
        </div>
        <div class="row">
            <div class="col-6">
                <p>Phương thức thanh toán: <?php echo "thanh toán khi giao hàng" ?></p>
                <p>Tình trạng thanh toán: <?php echo $paid == 0 ? '<span class="badge badge-light">Chưa trả</span>' : '<span class="badge badge-success">Đã trả</span>' ?></p>
            </div>
            <div class="col-6 row row-cols-2">
                <div class="col-3">Tình trạng đặt hàng:</div>
                <div class="col-9">
                <?php 
                    switch($status){
                        case '0':
                            echo '<span class="badge badge-light text-dark">Chưa xử lí</span>';
	                    break;
                        case '1':
                            echo '<span class="badge badge-primary">Đóng gói</span>';
	                    break;
                        case '2':
                            echo '<span class="badge badge-warning">Giao hàng</span>';
	                    break;
                        case '3':
                            echo '<span class="badge badge-success">Đã nhận hàng</span>';
	                    break;
                        default:
                            echo '<span class="badge badge-danger">Đã hủy</span>';
	                    break;
                    }
                ?>
                </div>
                <?php if(!isset($_GET['view'])): ?>
                <div class="col-3"></div>
                <div class="col">
                    <button type="button" id="update_status" class="btn btn-sm btn-flat btn-primary">Cập nhật</button>
                </div>
                <?php endif; ?>
                
            </div>
        </div>
    </div>
</div>
<div class="modal-footer">
    <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
</div>
<?php if(isset($_GET['view'])): ?>
<style>
    #uni_modal>.modal-dialog>.modal-content>.modal-footer{
        display:none;
    }
</style>
<?php endif; ?>
<script>
    $(function(){
        $('#update_status').click(function(){
            uni_modal("Update Status", "./orders/update_status.php?oid=<?php echo $id ?>&status=<?php echo $status ?>")
        })
    })
</script>