<?php


$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://3vzvp0rvj9.execute-api.ca-central-1.amazonaws.com/dev/profile",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  CURLOPT_HTTPHEADER => array(
    "Accept: application/json",
    "Authorization: AWS4-HMAC-SHA256 Credential=AKIAJY53N7EEDL52FZCA/20180207/ca-central-1/execute-api/aws4_request, SignedHeaders=accept;auth_key;content-type;host;x-amz-date, Signature=75f2c65500cd58cad0aab7e92fbe283c08dfb15c9c30e44cd35fd1edeb78c90e",
    "Cache-Control: no-cache",
    "Content-Type: application/json",
    "Postman-Token: d80679e6-55af-3893-bc05-cf42191c77d5",
    "X-Amz-Date: 20180207T093334Z",
    "auth_key: ebc585abc8274850f5c31e667094ba12"
  ),
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
  echo "cURL Error #:" . $err;
} else {
  echo $response;
}