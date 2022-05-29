<?php

namespace Tweetify\Controllers;
use Silex\Application;
use Tweetify\Models\Message;
use Symfony\Component\HttpFoundation\Response as Response;

class Messages
{
	public static function getAll()
	{
		$_message = new Message();
		$messages = $_message->all();
		$payload = [];
			foreach($messages as $_msg) {
				$payload[$_msg->id] = $_msg->display();
	}
		$response = new Response('', 200);
		$response->setContent(json_encode($payload));
		$response->send();
	}
}