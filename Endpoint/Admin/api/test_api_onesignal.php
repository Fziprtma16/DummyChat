<?php

function sendMessage() {
    $content      = array(
        "en" => "Halooo"
    );
    $heading = array(
      "en" => 'Djazuli.com'
  );
    // $hashes_array = array();
    // array_push($hashes_array, array(
    //     "id" => "like-button",
    //     "text" => "Like",
    //     "icon" => "https://hackernoon.imgix.net/images/0kymacDO55Vh1xdKhOVvdqBUy7G3-0f0362y.png?auto=format&fit=max&w=1920",
    //     "url" => "https://pertamalab.com/adminchat/admin.html"
    // ));
    $fields = array(
        'app_id' => "cdad0896-6b07-45a8-aa5f-ea8ec723fa6d",
        'included_segments' => array(
            'Subscribed Users'
        ),
        'data' => array(
            "foo" => "bar"
        ),
        'contents' => $content,
        'headings' => $heading,
          "url" => "https://pertamalab.com/adminchat/admin.html"
    );

    $fields = json_encode($fields);
    print("\nJSON sent:\n");
    print($fields);

    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, "https://onesignal.com/api/v1/notifications");
    curl_setopt($ch, CURLOPT_HTTPHEADER, array(
        'Content-Type: application/json; charset=utf-8',
        'Authorization: Basic YzFmYmIwMTktNjRlMi00ZmNiLWIxMzItYWY4OGI2MGU1ZmUy'
    ));
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
    curl_setopt($ch, CURLOPT_HEADER, FALSE);
    curl_setopt($ch, CURLOPT_POST, TRUE);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);

    $response = curl_exec($ch);
    curl_close($ch);

    return $response;
}

$response = sendMessage();
$return["allresponses"] = $response;
$return = json_encode($return);

$data = json_decode($response, true);
print_r($data);
$id = $data['id'];
print_r($id);

print("\n\nJSON received:\n");
print($return);
print("\n");
 ?>
