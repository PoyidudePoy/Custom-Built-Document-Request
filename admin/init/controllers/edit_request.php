<?php
require_once "../model/class_model.php";

if (isset($_POST)) {
    $conn = new class_model();

    $control_no = trim($_POST['control_no']);
    $studentID_no = trim($_POST['studentID_no']);
    $document_name = trim($_POST['document_name']);
    $document_name_2 = isset($_POST['document_name_2']) ? trim($_POST['document_name_2']) : '';
    $document_name_3 = isset($_POST['document_name_3']) ? trim($_POST['document_name_3']) : '';
    $no_ofcopies = trim($_POST['no_ofcopies']);
    $amount_to_pay = trim($_POST['amount_to_pay']);
    $date_releasing = trim($_POST['date_releasing']);
    $processing_officer = trim($_POST['processing_officer']);
    $status = trim($_POST['status']);
    $request_id = trim($_POST['request_id']);
    // Concatenate document names with line breaks
    $document_names_concatenated = $document_name;
    if ($document_name_2 !== '') {
        $document_names_concatenated .= "<br>" . $document_name_2;
    }
    if ($document_name_3 !== '') {
        $document_names_concatenated .= "<br>" . $document_name_3;
    }


    $request = $conn->edit_request($control_no, $studentID_no, $document_names_concatenated, $no_ofcopies, $amount_to_pay,  $date_releasing, $processing_officer, $status, $request_id);
    if ($request == TRUE) {
        echo '<div class="alert alert-success">Edit Request Successfully!</div><script> setTimeout(function() {  window.history.go(-1); }, 1000); </script>';
    } else {
        echo '<div class="alert alert-danger">Edit Request Failed!</div><script> setTimeout(function() {  window.history.go(-0); }, 1000); </script>';
    }
}
?>
