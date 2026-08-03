<?php
require_once "../model/class_model.php";

if(isset($_POST['request_ids']) && !empty($_POST['request_ids'])) {
    $conn = new class_model();
    $request_ids = $_POST['request_ids']; // Array of request IDs
    $success_count = 0; // Counter for successful deletions
    $failure_count = 0; // Counter for failed deletions

    // Loop through each request ID and attempt deletion
    foreach($request_ids as $request_id) {
        // Trim and sanitize the request ID
        $request_id = trim($request_id);

        // Attempt to delete the request
        $req = $conn->delete_request($request_id);

        if($req == true) {
            $success_count++;
        } else {
            $failure_count++;
        }
    }

    // Check if any deletions were successful
    if($success_count > 0) {
        echo '<div class="alert alert-success">' . $success_count . ' requests deleted successfully!</div>';
    }

    // Check if any deletions failed
    if($failure_count > 0) {
        echo '<div class="alert alert-danger">' . $failure_count . ' requests deletion failed!</div>';
    }

    // Redirect after deletion
    echo '<script> setTimeout(function() { window.history.go(-0); }, 1000); </script>';
} else {
    // No request IDs provided
    echo '<div class="alert alert-warning">No request IDs provided for deletion!</div>';
}
?>
