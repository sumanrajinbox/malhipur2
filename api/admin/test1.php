<?php
abstract class base
{
	abstract function student($msg);
}
class sample extends base
{
	public function student($msg){
		echo $msg;
	}
	public function test($msg)
	{
		echo $msg;
	}
}

$sample = new sample();
echo $student = $sample->student('sumanraj');
