<?php if($_settings->chk_flashdata('success')): ?>
<script>
	alert_toast("<?php echo $_settings->flashdata('success') ?>",'success')
</script>
<?php endif;?>
<?php if($_settings->chk_flashdata('Lỗi')): ?>
<script>
	alert_toast("<?php echo $_settings->flashdata('Lỗi') ?>",'Lỗi')
</script>
<?php endif;?>
<div class="card card-outline card-primary">
	<div class="card-header">
		<h3 class="card-title">Danh sách đơn hàng</h3>
	</div>
	<div class="card-body">
		<div class="container-fluid">
        <div class="container-fluid">
			<table class="table table-bordered table-stripped">
				<colgroup>
					<col width="5%">
					<col width="15%">
					<col width="25%">
					<col width="20%">
					<col width="10%">
					<col width="10%">
					<col width="15%">
				</colgroup>
				<thead>
					<tr>
						<th>#</th>
						<th>Ngày đặt</th>
						<th>Khách hàng</th>
						<th>Tổng giá</th>
						<th>Thanh toán</th>
						<th>Trạng thái</th>
						<th>Hoạt động</th>
					</tr>
				</thead>
				<tbody>
					<?php 
					$i = 1;
						$qry = $conn->query("SELECT o.*,concat(c.firstname,' ',c.lastname) as client from `orders` o inner join clients c on c.id = o.client_id order by unix_timestamp(o.date_created) desc ");
						while($row = $qry->fetch_assoc()):
					?>
						<tr>
							<td class="text-center"><?php echo $i++; ?></td>
							<td><?php echo date("Y-m-d H:i",strtotime($row['date_created'])) ?></td>
							<td><?php echo $row['client'] ?></td>
							<td class="text-right"><?php echo number_format($row['amount']) ?></td>
							<td class="text-center">
                                <?php if($row['paid'] == 0): ?>
                                    <span class="badge badge-light">Chưa</span>
                                <?php else: ?>
                                    <span class="badge badge-success">Rồi</span>
                                <?php endif; ?>
                            </td>
							<td class="text-center">
                                <?php if($row['status'] == 0): ?>
                                    <span class="badge badge-light">Chưa giải quyết</span>
                                <?php elseif($row['status'] == 1): ?>
                                    <span class="badge badge-primary">Đóng gói</span>
								<?php elseif($row['status'] == 2): ?>
                                    <span class="badge badge-warning">Giao hàng</span>
								<?php elseif($row['status'] == 3): ?>
                                    <span class="badge badge-success">Đã nhận hàng</span>
                                <?php else: ?>
                                    <span class="badge badge-danger">Đã hủy</span>
                                <?php endif; ?>
                            </td>
							<td align="center">
								 <button type="button" class="btn btn-flat btn-default btn-sm dropdown-toggle dropdown-icon" data-toggle="dropdown">
				                  		Hoạt động
				                    <span class="sr-only">Chuyển đổi menu thả xuống</span>
				                  </button>
				                  <div class="dropdown-menu" role="menu">
				                    <a class="dropdown-item" href="?page=orders/view_order&id=<?php echo $row['id'] ?>">Xem đơn hàng</a>
									<?php if($row['paid'] == 0 && $row['status'] != 4): ?>
				                    <a class="dropdown-item pay_order" href="javascript:void(0)"  data-id="<?php echo $row['id'] ?>">Đánh dấu là đã trả tiền</a>
									<?php endif; ?>
				                    <div class="dropdown-divider"></div>
				                    <a class="dropdown-item delete_data" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>"><span class="fa fa-trash text-danger"></span> Xóa</a>
				                  </div>
							</td>
						</tr>
					<?php endwhile; ?>
				</tbody>
			</table>
		</div>
		</div>
	</div>
</div>
<script>
	$(document).ready(function(){
		$('.delete_data').click(function(){
			_conf("Bạn có chắc chắn xóa đơn đặt hàng này vĩnh viễn không?","delete_order",[$(this).attr('data-id')])
		})
		$('.pay_order').click(function(){
			_conf("Bạn có chắc chắn đánh dấu đơn đặt hàng này là đã thanh toán không?","pay_order",[$(this).attr('data-id')])
		})
		$('.table').dataTable();
	})
	function pay_order($id){
		start_loader();
		$.ajax({
			url:_base_url_+"classes/Master.php?f=pay_order",
			method:"POST",
			data:{id: $id},
			dataType:"json",
			error:err=>{
				console.log(err)
				alert_toast("Có lỗi xảy ra.",'Lỗi');
				end_loader();
			},
			success:function(resp){
				if(typeof resp== 'object' && resp.status == 'success'){
					location.reload();
				}else{
					alert_toast("Có lỗi xảy ra.",'Lỗi');
					end_loader();
				}
			}
		})
	}
	function delete_order($id){
		start_loader();
		$.ajax({
			url:_base_url_+"classes/Master.php?f=delete_order",
			method:"POST",
			data:{id: $id},
			dataType:"json",
			error:err=>{
				console.log(err)
				alert_toast("Có lỗi xảy ra.",'Lỗi');
				end_loader();
			},
			success:function(resp){
				if(typeof resp== 'object' && resp.status == 'success'){
					location.reload();
				}else{
					alert_toast("Có lỗi xảy ra.",'Lỗi');
					end_loader();
				}
			}
		})
	}
</script>