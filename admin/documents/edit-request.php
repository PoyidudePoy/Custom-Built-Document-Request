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
                             <h2 class="pageheader-title">Edit Request </h2>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader -->
                <!-- ============================================================== -->
                  <?php 
                    include '../init/model/config/connection2.php';
                    $GET_reqid = intval($_GET['request']);
                    $student_number = $_GET['student-number'];
                    $sql = "SELECT * FROM `tbl_documentrequest` WHERE `request_id`= ? AND studentID_no = ?";
                    $stmt = $conn->prepare($sql); 
                    $stmt->bind_param("is", $GET_reqid, $student_number);
                    $stmt->execute();
                    $result = $stmt->get_result();
                    while ($row = $result->fetch_assoc()) {
                        if(isset($_GET['edit']) && $_GET['edit'] == 'true') {
                            // If it's an edit request, set the default date to a specific date
                            $defaultDateForEdit = '2024-01-01';
                            $currentDate = date('Y-m-d', strtotime($defaultDateForEdit));
                        } else {
                            // For add requests, use the current date
                            $currentDate = date('Y-m-d');
                        }   
                   ?>
                  <?php
function renderOptions($selectedDocuments, $allDocuments) {
    foreach ($allDocuments as $value) {
        $selected = in_array($value, $selectedDocuments) ? 'selected' : '';
        echo "<option value=\"$value\" $selected>$value</option>";
    }
}

$selectedDocuments = explode("<br>", $row['document_name']);
$selectedDocumentCount = count($selectedDocuments);
$documentsPerDropdown = ceil($selectedDocumentCount / 3);

$document_name = array_slice($selectedDocuments, 0, $documentsPerDropdown);
$document_name_2 = array_slice($selectedDocuments, $documentsPerDropdown, $documentsPerDropdown);
$document_name_3 = array_slice($selectedDocuments, $documentsPerDropdown * 2);

?>



                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <div class="card influencer-profile-data">
                                        <div class="card-body">
                                             <div class="" id="message"></div>
                                            <form id="validationform" name="docu_forms" data-parsley-validate="" novalidate="" method="POST">
                                                <div class="form-group row">
                                                    <label class="col-12 col-sm-3 col-form-label text-sm-right"><i class="fa fa-file"></i> Request Info</label>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="col-12 col-sm-3 col-form-label text-sm-right">Control No.</label>
                                                    <div class="col-12 col-sm-8 col-lg-6">
                                                        <input data-parsley-type="alphanum" type="text" value="<?= $row['control_no']; ?>" name="control_no" required="" placeholder="" class="form-control" readonly>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="col-12 col-sm-3 col-form-label text-sm-right">Student ID</label>
                                                    <div class="col-12 col-sm-8 col-lg-6">
                                                        <input data-parsley-type="alphanum" value="<?= $row['studentID_no']; ?>" name="studentID_no" type="text" required="" placeholder="" class="form-control" readonly>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="col-12 col-sm-3 col-form-label text-sm-right">Document Name</label>
                                                    <div class="col-12 col-sm-8 col-lg-6">
                                                    <select data-parsley-type="alphanum" type="text" id="document_name" required="" placeholder="" class="form-control">
    <option value=""> &larr;Select Document &rarr;</option>
    <?php renderOptions($document_name, [
        "Certified true copy f137 g10",
        "Certified true copy f137 g11",
        "Certified true copy g10",
        "Good Moral",
        "Cert. Of GWA",
        "Cert. Of Marticulation",
        "Cert. Of Graduation",
        "Cert. Of Grades",
        "Cert. Of Completion",
        "Cert. Of Enrollment",
        "CAF (GM)",
        "CAF (COE)",
        "Form 137"
    ]); ?>
</select>


                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <label class="col-12 col-sm-3 col-form-label text-sm-right">Document Name </label>
                                                    <div class="col-12 col-sm-8 col-lg-6">
                                                    <select data-parsley-type="alphanum" type="text" name="document_name_2" id="document_name_2" required="" placeholder="" class="form-control">
    <option value=""> &larr;Select Document &rarr;</option>
    <?php renderOptions($document_name_2, [
        "Certified true copy f137 g10",
        "Certified true copy f137 g11",
        "Certified true copy g10",
        "Good Moral",
        "Cert. Of GWA",
        "Cert. Of Marticulation",
        "Cert. Of Graduation",
        "Cert. Of Grades",
        "Cert. Of Completion",
        "Cert. Of Enrollment",
        "CAF (GM)",
        "CAF (COE)",
        "Form 137"
    ]); ?>
</select>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                <label class="col-12 col-sm-3 col-form-label text-sm-right">Document Name </label>
                                                <div class="col-12 col-sm-8 col-lg-6">
                                                <select data-parsley-type="alphanum" type="text" name="document_name_3" id="document_name_3" required="" placeholder="" class="form-control">
    <option value=""> &larr;Select Document &rarr;</option>
    <?php renderOptions($document_name_3, [
        "Certified true copy f137 g10",
        "Certified true copy f137 g11",
        "Certified true copy g10",
        "Good Moral",
        "Cert. Of GWA",
        "Cert. Of Marticulation",
        "Cert. Of Graduation",
        "Cert. Of Grades",
        "Cert. Of Completion",
        "Cert. Of Enrollment",
        "CAF (GM)",
        "CAF (COE)",
        "Form 137"
    ]); ?>
</select>
                                                </div>
                                            </div>


                                                 <div class="form-group row">
                                                    <label class="col-12 col-sm-3 col-form-label text-sm-right">No. of Copies</label>
                                                    <div class="col-12 col-sm-8 col-lg-6">
                                                    <select data-parsley-type="alphanum"  type="text" id="no_ofcopies" required="" placeholder="" class="form-control">
                                                    <option value="" <?= ($row['no_ofcopies'] == '') ? 'selected' : ''; ?>>&larr; Add Copies &rarr;</option>
                                                        <option value="1" <?= ($row['no_ofcopies'] == '1') ? 'selected' : ''; ?>>1</option>
                                                        <option value="2" <?= ($row['no_ofcopies'] == '2') ? 'selected' : ''; ?>>2</option>
                                                        <option value="3" <?= ($row['no_ofcopies'] == '3') ? 'selected' : ''; ?>>3</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
    <label class="col-12 col-sm-3 col-form-label text-sm-right">Amount to Pay</label>
    <div class="col-12 col-sm-8 col-lg-6">
        <select data-parsley-type="alphanum" type="text" name="amount_to_pay" id="amount_to_pay" required="" placeholder="" class="form-control">
            <?php
            // Combine selected documents from all dropdowns into one array
            $selectedDocuments = [];
            if (!empty($row['document_name'])) {
                $selectedDocuments = array_merge($selectedDocuments, explode("<br>", $row['document_name']));
            }
            if (!empty($row['document_name_2'])) {
                $selectedDocuments = array_merge($selectedDocuments, explode("<br>", $row['document_name_2']));
            }
            if (!empty($row['document_name_3'])) {
                $selectedDocuments = array_merge($selectedDocuments, explode("<br>", $row['document_name_3']));
            }

            // Map document names to their respective amounts
            $documentPrices = [
                "Certified true copy f137 g10" => 20,
                "Certified true copy f137 g11" => 20,
                "Certified true copy g10" => 20,
                "Good Moral" => 75,
                "Cert. Of GWA" => 75,
                "Cert. Of Marticulation" => 75,
                "Cert. Of Graduation" => 75,
                "Cert. Of Grades" => 75,
                "Cert. Of Completion" => 75,
                "Cert. Of Enrollment" => 75,
                "CAF (GM)" => 115,
                "CAF (COE)" => 115,
                "Form 137" => 150
            ];

            // Initialize total amount to pay
            $totalAmountToPay = 0;

            // Calculate total amount to pay based on selected documents
            foreach ($selectedDocuments as $document) {
                if (!empty($document) && isset($documentPrices[$document])) {
                    $totalAmountToPay += $documentPrices[$document];
                }
            }

            // Render the option for the total amount to pay
            echo "<option value=\"$totalAmountToPay\">$totalAmountToPay pesos</option>";
            ?>
        </select>
    </div>
</div>



                                                                                        <div class="form-group row">
                                                <label class="col-12 col-sm-3 col-form-label text-sm-right">Date Request</label>
                                                <div class="col-12 col-sm-8 col-lg-6">
                                                    <?php
                                                    // Use the date from the database if available, otherwise default to current date
                                                    $dateRequest = !empty($row['date_request']) ? $row['date_request'] : date('Y-m-d');
                                                    ?>
                                                    <input data-parsley-type="alphanum" type="date" name="date_request" required="" placeholder="" class="form-control" value="<?= $dateRequest ?>" readonly>
                                                </div>
                                            </div>


                                                 <div class="form-group row">
                                                    <label class="col-12 col-sm-3 col-form-label text-sm-right">Date Releasing</label>
                                                    <div class="col-12 col-sm-8 col-lg-6">
                                                        <input data-parsley-type="alphanum" value="<?= $row['date_releasing']; ?>" type="date" name="date_releasing" required="" placeholder="" class="form-control">
                                                    </div>
                                                </div>
                                              <?php

                                                  $user_id = $_SESSION['user_id'];
                                                  $conn = new class_model();
                                                  $user = $conn->user_account($user_id);
                      
                                              ?>
                                               <div class="form-group row">
                                                    <label class="col-12 col-sm-3 col-form-label text-sm-right">Processing Officer</label>
                                                    <div class="col-12 col-sm-8 col-lg-6">
                                                        <input data-parsley-type="alphanum" value="<?= ucfirst($user['complete_name']); ?>" type="text" name="processing_officer" required="" placeholder="" class="form-control" readonly>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="col-12 col-sm-3 col-form-label text-sm-right">Status</label>
                                                    <div class="col-12 col-sm-8 col-lg-6">
                                                       <select data-parsley-type="alphanum" type="text" value="<?= $row['status']; ?>" id="status" required="" placeholder="" class="form-control">
                                                           <option value="<?= $row['status']; ?>" hidden><?= $row['status']; ?></option>
                                                           <option value="Pending" style="background-color: skyblue;color: #fff">Pending</option>
                                                           <option value="Release" style="background-color: orange;color: #fff">Release</option>
                                                           <option value="Received" style="background-color: green;color: #fff">Received</option>
                                                       </select>
                                                    </div>
                                                </div>

                                                </div>
                                                <div class="form-group row text-right">
                                                    <div class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
                                                        <input name="request_id" value="<?= $row['request_id']; ?>" type="hidden">
                                                        <button type="button" class="btn btn-space btn-success" id="edit-request">Update</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                 <?php } ?>
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
    <script src="../assets/vendor/parsley/parsley.js"></script>
    <script src="../assets/libs/js/main-js.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
          var firstName = $('#firstName').text();
          var lastName = $('#lastName').text();
          var intials = $('#firstName').text().charAt(0) + $('#lastName').text().charAt(0);
          var profileImage = $('#profileImage').text(intials);
        });
    </script>
      <script>
          document.addEventListener('DOMContentLoaded', () => {
              let btn = document.querySelector('#edit-request');
              btn.addEventListener('click', () => {

                  const control_no = document.querySelector('input[name=control_no]').value;
                  const studentID_no = document.querySelector('input[name=studentID_no]').value;
                  const document_name = $('#document_name option:selected').val();
                  const document_name_2 = $('#document_name_2 option:selected').val(); // Get selected value of document_name_2
                  const document_name_3 = $('#document_name_3 option:selected').val();
                  const no_ofcopies = $('#no_ofcopies option:selected').val();
                  const amount_to_pay = $('#amount_to_pay').val();
                  const date_request = document.querySelector('input[name=date_request]').value;
                  const date_releasing = document.querySelector('input[name=date_releasing]').value;
                  const processing_officer = document.querySelector('input[name=processing_officer]').value;
                  const status = $('#status option:selected').val();
                  const request_id = document.querySelector('input[name=request_id]').value;

                  var data = new FormData(this.form);

                  data.append('control_no', control_no);
                  data.append('studentID_no', studentID_no);
                  data.append('document_name', document_name);
                  data.append('document_name_2', document_name_2); 
                  data.append('document_name_3', document_name_3); 
                  data.append('no_ofcopies', no_ofcopies);
                  data.append('amount_to_pay', amount_to_pay);
                  data.append('date_request', date_request);
                  data.append('date_releasing', date_releasing);
                  data.append('processing_officer', processing_officer);
                  data.append('status', status);
                  data.append('request_id', request_id);


              if (control_no === '' &&  studentID_no ==='' &&  document_name ==='' &&  no_ofcopies ==='' &&  date_request ==='' &&  date_releasing ==='' &&  processing_officer ===''){
                      $('#message').html('<div class="alert alert-danger"> Required All Fields!</div>');
                    }else{
                       $.ajax({
                        url: '../init/controllers/edit_request.php',
                          type: "POST",
                          data: data,
                          processData: false,
                          contentType: false,
                          async: false,
                          cache: false,
                        success: function(response) {
                          $("#message").html(response);
                           window.scrollTo(0, 0);
                          },
                          error: function(response) {
                            console.log("Failed");
                          }
                      });
                   }

              });
          });
      </script>
<script>
   

$(document).ready(function() {
    // Event listener for document name select elements
    $('#document_name, #document_name_2, #document_name_3').change(function() {
        // Get the selected document names
        var selectedDocument1 = $('#document_name').val().trim();
        var selectedDocument2 = $('#document_name_2').val().trim();
        var selectedDocument3 = $('#document_name_3').val().trim();
        
        // Determine the number of copies based on the selected documents
        var numberOfCopies = 0;
        if (selectedDocument1 !== '') {
            numberOfCopies++;
        }
        if (selectedDocument2 !== '') {
            numberOfCopies++;
        }
        if (selectedDocument3 !== '') {
            numberOfCopies++;
        }
        
        // Update the number of copies dropdown
        $('#no_ofcopies').val(numberOfCopies);
        
        // Disable the number of copies dropdown to prevent manual changes
        $('#no_ofcopies').prop('disabled', true);
    });
});





$(document).ready(function() {
    // Event listener for both document name select elements
    $('#document_name, #document_name_2, #document_name_3').change(function() {
        // Get the selected document names
        var selectedDocument1 = $('#document_name').val().trim();
        var selectedDocument2 = $('#document_name_2').val().trim();
        var selectedDocument3 = $('#document_name_3').val().trim();

        // Map document names to their respective amounts
        var documentPrices = {
            "Certified true copy f137 g10": 20,
            "Certified true copy f137 g11": 20,
            "Certified true copy g10": 20,
            "Good Moral": 75,
            "Cert. Of GWA": 75,
            "Cert. Of Marticulation": 75,
            "Cert. Of Graduation": 75,
            "Cert. Of Grades": 75,
            "Cert. Of Completion": 75,
            "Cert. Of Enrollment": 75,
            "CAF (GM)": 115,
            "CAF (COE)": 115,
            "Form 137": 150,
        };

        // Initialize total price
        var totalPrice = 0;

        // Calculate total price based on selected documents
        if (selectedDocument1 in documentPrices) {
            totalPrice += documentPrices[selectedDocument1];
        }
        if (selectedDocument2 in documentPrices) {
            totalPrice += documentPrices[selectedDocument2];
        }
        if (selectedDocument3 in documentPrices) {
            totalPrice += documentPrices[selectedDocument3];
        }
        // Update amount_to_pay dropdown with the total price
        $('#amount_to_pay').empty().append($('<option>', {
            value: totalPrice,
            text: totalPrice + ' pesos'
        })).val(totalPrice);
    });
});

</script>
    

<!--     <script>
    $('#form').parsley();
    </script> -->
    <script>
    // Example starter JavaScript for disabling form submissions if there are invalid fields
    (function() {
        'use strict';
        window.addEventListener('load', function() {
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.getElementsByClassName('needs-validation');
            // Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function(form) {
                form.addEventListener('submit', function(event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        }, false);
    })();
    </script>


</body>
 
</html>