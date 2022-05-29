<?php
namespace Tweetify\Middleware;

class FileFilter 
{
	protected $allowedFiles = ['image/jpeg', 'image/png'];
	public function filter($filesArray, $app) 
	{
		$newfile = $filesArray['file'];
		$newfile_type = $newfile['type'];
		if(!in_array($newfile_type, $this->allowedFiles)){
			$app->abort(415);
		}
		$uploadedfilename = $newfile['name'];
		$imagepath = "resources/images/$uploadedfilename";
		move_uploaded_file($newfile['tmp_name'], $imagepath);

		return $imagepath;
	}
}