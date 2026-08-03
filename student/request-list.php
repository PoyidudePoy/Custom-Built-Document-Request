
<?php include('main_header/header.php');?>
<!-- ============================================================== -->
<!-- end navbar -->
<!-- ============================================================== -->
<!-- ============================================================== -->
<!-- left sidebar -->
<!-- ============================================================== -->
<?php include('left_sidebar/sidebar.php');?>
<!-- ============================================================== -->
<!-- end left sidebar -->
<!-- ============================================================== -->
<!-- ============================================================== -->
<!-- wrapper  -->
<!-- ============================================================== -->
<div class="dashboard-wrapper">
    <div class="container-fluid  dashboard-content">
        <!-- ============================================================== -->
        <!-- pageheader -->
        <!-- ============================================================== -->
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="page-header">
                     <h2 class="pageheader-title"></i> Request now! </h2>
                    <div class="page-breadcrumb">
                        <nav aria-label="breadcrumb">
                            
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- end pageheader -->
        <!-- ============================================================== -->

        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="card">
                    <div class="card-body">
                        <div id="message"></div>
                        <div class="table-responsive">
                            <a href="add-request.php" class="btn btn-sm" style="background-color:rgb(0, 128, 0) !important;
                            color: rgb(243, 245, 238) !important;"> Add Request</a><br><br>
                           <table id="printTable" class="table table-striped table-bordered first">
    <thead>
        <tr>
            <th scope="col">Control No.</th>
            <th scope="col">Student ID</th>
            <th scope="col">Document Name</th>
            <th scope="col">No. of documents</th>
            <th scope="col">Amount to Pay</th>
            <th scope="col">Date Request</th>
            <th scope="col">Date Releasing</th>
            <th scope="col">Processing Officer</th>
            <th scope="col">Status</th>
            <th scope="col">Print</th> <!-- New column for print option -->
            <th scope="col">Delete</th>
        </tr>
    </thead>
    <tbody>
        <?php 
        $student_id = $_SESSION['student_id'];
        $conn = new class_model();
        $docrequest = $conn->fetchAll_documentrequest($student_id);
        ?>
        <?php foreach ($docrequest as $row) { ?>
            <tr>
                <td><?= $row['control_no']; ?></td>
                <td><?= $row['studentID_no']; ?></td>
                <td><?= $row['document_name']; ?></td>
                <td><?= $row['no_ofcopies']; ?></td>
                <td><?= $row['amount_to_pay']; ?></td>
                <td><?= date("M d, Y",strtotime($row['date_request'])); ?></td>
                <td>
                    <?php 
                    if($row['date_releasing'] === ""){
                        echo "";
                    } else if($row['date_releasing'] === $row['date_releasing']){
                        echo date("M d, Y",strtotime($row['date_releasing']));
                    }
                    ?>
                </td>
                <td><?= $row['processing_officer']; ?></td>
                <td>
                    <?php 
                    if($row['status'] ==="Pending"){
                        echo '<span class="badge bg-info text-white">Pending</span>';
                    } else if($row['status'] ==="Release"){
                        echo '<span class="badge bg-warning text-white">Release</span>';
                    } else if($row['status'] ==="Received"){
                        echo '<span class="badge bg-success text-white">Received</span>';
                    }
                    ?> 
                </td>
                <td>
                    <!-- Print option -->
                    <button class="print-btn" onclick="printRow(this)" style="background-color: #4CAF50; color: white; border: none;">Print</button>

                </td>
             <td>
    <!-- Delete option -->
    <button class="delete btn btn-danger" data-id="<?= $row['request_id']; ?>" style="font-size: 0.75rem; padding: 0.25rem 0.5rem;">Delete</button>
</td>


            </tr>
        <?php } ?>
    </tbody>
</table>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ============================================================== -->
<!-- end main wrapper -->
<!-- ============================================================== -->
<!-- Optional JavaScript -->
<script src="../assets/vendor/jquery/jquery-3.3.1.min.js"></script>
<script src="../assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
<script src="../assets/vendor/custom-js/jquery.multi-select.html"></script>
<script src="../assets/libs/js/main-js.js"></script>
<script src="../assets/vendor/datatables/js/jquery.dataTables.min.js"></script>
<script src="../assets/vendor/datatables/js/dataTables.bootstrap4.min.js"></script>
<script src="../assets/vendor/datatables/js/buttons.bootstrap4.min.js"></script>
<script src="../assets/vendor/datatables/js/data-table.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        var firstName = $('#firstName').text();
        var lastName = $('#lastName').text();
        var intials = $('#firstName').text().charAt(0) + $('#lastName').text().charAt(0);
        var profileImage = $('#profileImage').text(intials);
    });
</script>
<script>
   $(document).ready(function() {
    load_data();
    function load_data() {
        $(document).on('click', '.delete', function() {
            var request_id = $(this).attr("data-id");
            var status = $(this).closest('tr').find('td:eq(8)').text().trim(); // Get the status from the table row
            
            // Check if the status is "Pending" before allowing deletion
            if (status === "Pending") {
                if (confirm("Are you sure want to remove this data?")) {
                    $.ajax({
                        url: "../init/controllers/delete_request.php",
                        method: "POST",
                        data: {
                            request_id: request_id
                        },
                        success: function(response) {
                            $("#message").html(response);
                        },
                        error: function(response) {
                            console.log("Failed");
                        }
                    })
                }
            } else {
                alert("You can only delete requests with status 'Pending'.");
            }
        });
    }
});

</script>
<script>
    $(document).ready(function(){
        function load_unseen_notification(view = '') {
            $.ajax({
                url:"../init/controllers/fetch.php",
                method:"POST",
                data:{view:view},
                dataType:"json",
                success:function(data) {
                    $('.dropdown-menu_1').html(data.notification);
                    if(data.unseen_notification > 0) {
                        $('.count').html(data.unseen_notification);
                    }
                }
            });
        }
        load_unseen_notification();
        $(document).on('click', '.dropdown-toggle', function(){
            $('.count').html('');
            load_unseen_notification('yes');
        });
        setInterval(function(){ 
            load_unseen_notification();; 
        }, 4000);
    });
</script>
<script>
  function printRow(button) {
    var status = $(button).closest('tr').find('td:eq(8)').text().trim(); // Get the status from the table row

    // Check if the status is "Release" or "Received" before allowing printing
    if (status === "Release") {
        console.log("Print button clicked!");

        var row = button.parentNode.parentNode;
        var table = document.createElement('table');
        var tbody = document.createElement('tbody');

        tbody.appendChild(row.cloneNode(true));
        table.appendChild(tbody);

        var spacerRow = document.createElement('tr');
        var spacerCell = document.createElement('td');
        spacerCell.style.height = '20px';
        spacerRow.appendChild(spacerCell);
        tbody.appendChild(spacerRow);

        var newWin = window.open('', 'Print-Window');
        newWin.document.open();
        newWin.document.write('<html><head><title>Print</title>');

        newWin.document.write('<style>');
        newWin.document.write('table { width: 100%; border-collapse: collapse; }');
        newWin.document.write('th, td { padding: 10px; border: 1px solid #000; }');
        newWin.document.write('.center-text { text-align: center; }'); // CSS for centering text
        newWin.document.write('</style>');
        newWin.document.write('</head><body>');
        newWin.document.write('<table>');

        newWin.document.write('<thead>');
        newWin.document.write('<tr>');
        var headers = document.querySelectorAll('#printTable th');
        headers.forEach(function(header) {
            newWin.document.write('<th>' + header.textContent + '</th>');
        });
        newWin.document.write('</tr>');
        newWin.document.write('</thead>');
        newWin.document.write(table.innerHTML);
        newWin.document.write('</table>');

        // Append Thank you message and current date
        var currentDate = new Date().toLocaleDateString();
        newWin.document.write('<div class="center-text">');
        newWin.document.write('<p>Thank you! head to the registrar office and accounting office for payment procedures! :)  ' + currentDate + '</p>');
        newWin.document.write('</div>');

        newWin.document.write('</body></html>');
        newWin.document.close();
        newWin.print();
    } else {
        alert("You can only print requests with status 'Release'.");
    }
}

</script>


</body>
</html>


</body>
</html>
