<?php
require 'vendor/autoload.php';
include 'bootstrap.php';

use Tweetify\Models\Message;
use Tweetify\Middleware\Logging as TwitLogging;
use Symfony\Component\HttpFoundation\Request as Request;
use Symfony\Component\HttpFoundation\Response as Response;
use Tweetify\Middleware\Authentication as TwitAuth;
use Tweetify\Middleware\FileFilter;
use Tweetify\Middleware\RemoveExifImage;
use Tweetify\Middleware\FileMover;
use Tweetify\Controllers\Messages;

$app = new Silex\Application();
/*$app['debug'] = true;

ini_set('display_errors', 'On');
error_reporting(E_ALL);
*/
$app->before(function($request, $app) {
    TwitLogging::log($request, $app);
    TwitAuth::authenticate($request, $app);
});

$app->get('/messages', Messages::getAll());
$app->get('/v2/messages', Messages::getAll());

$filter = function (Request $request, Silex\Application $app) {
    $filefilter = new FileFilter();
    $filepath = $filefilter->filter($_FILES, $app);
    $request->headers->set('filepath', $filepath);
};

$removeExif = function (Request $request, Silex\Application $app) {
    $filepath = $request->headers->get('filepath');
    $filepath = RemoveExifImage::removeExif($filepath);
    $request->headers->set('filepath', $filepath);
};

$move = function(Request $request, Silex\Application $app) {
    $filepath = $request->headers->get('filepath');
    $filepath = FileMover::move($filepath, $app);
    $request->headers->set('filepath', $filepath);
};

$app->post('/message', function(Request $request) use($app) {
    
    $_message = $request->get('message');
    $message = new Message();
    $message->body = $_message;
    $message->user_id = 1;
    $message->image_url = $request->headers->get('filepath');
    $message->save();

    if($message->id) {
        $code = 201;
        $payload = [
            'message_id' => $message->id,
            'message_uri' => '/message/' . $message->id,
            'image_url' => $message->image_url
        ];
    } else {
        $code = 400;
        $payload = [];
    }

    return $app->json($payload, $code);
})->before($filter)->before($removeExif);

$app->delete('/message/{message_id}', function($message_id) use($app) {
    $message = Message::find($message_id);
    if($message != null) {
        $message->delete(); 
    } else {
        return new Response('Message not found. It may be deleted before or it may have never existed.', 200);
    }

    if($message->exists) {
        return new Response('', 400);
    } else {
        return new Response('', 204);
    }
});

$app->run();