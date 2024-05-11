<?php
require_once("../includes/connection.php");

try {
    // Prepare SQL query to fetch car data including image URLs
    $sql = "SELECT car_id, brand, model, body_type, fuel_type, transmission, color, release_date, engine_power, top_speed, fuel_tank_capacity, price, air_conditioner, brake_assist, navigation_system, touch_screen, connectivity, remote_engine_start_stop, new_used, installment_availability, image_path FROM cars";
    
    // Prepare and execute the SQL query
    $stmt = $pdo->prepare($sql);
    $stmt->execute();

    // Fetch car data
    $cars = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Check if data was found
    if ($cars) {
        // Prepare JSON response
        $response = array("status" => "success", "data" => $cars);
        // Set HTTP response code to 200 (OK)
        http_response_code(200);
    } else {
        // No data found
        $response = array("status" => "error", "message" => "No cars found.");
        // Set HTTP response code to 404 (Not Found) or 204 (No Content) depending on the context
        http_response_code(404); // or http_response_code(204);
    }
}
catch (PDOException $e) {
    // Database error
    $response = array("status" => "error", "message" => "Database error: " . $e->getMessage());
    // Set HTTP response code to 500 (Internal Server Error)
    http_response_code(500);
}

// Set content type to JSON
header('Content-Type: application/json');

// Output JSON response
echo json_encode($response);