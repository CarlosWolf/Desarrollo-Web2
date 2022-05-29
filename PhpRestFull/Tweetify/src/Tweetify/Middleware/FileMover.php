<?php
namespace Tweetify\Middleware;
use Aws\S3\S3Client;

class FileMover 
{
	public static function move($imagepath, $app)
	{
		$s3 = new S3Client([
			'version' => 'latest',
			'region'  => 'eu-west-2'
		]);
		try {
			$s3->putObject([
				'Bucket' => 'my-bucket',
				'Key' 	 => 'my-object',
				'Body'   => fopen($imagepath, 'r'),
				'ACL'    => 'public-read'
			]);
		} catch(Exception $e) {
			$app->abort(400);
		}

		return $imagepath;
	}
}