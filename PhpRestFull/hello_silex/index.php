<?php
require 'vendor/autoload.php';
$app = new Silex\Application();
$app->get('/hello', function() use ($app) {
    return "Hello Carlos Montero";
});

$app->run();