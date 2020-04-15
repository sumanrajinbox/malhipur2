<?php
date_default_timezone_set("Asia/Calcutta");   //India time (GMT+5:30)
class Dbcon
{
	public 	$conn = "";
	public function __construct()
	{
		$this->conn = new PDO('mysql:host=localhost;dbname=challenge_mal', 'challenge', 'challengedb@2019');
	}
	public function only_query($query)
	{
		$sth = $this->conn->prepare($query);
		$sth->execute();
		$id = $this->conn->lastInsertId();
		return $id;
	}

	public function update($query)
	{
		$sth = $this->conn->prepare($query);
		$sth->execute();
		$row = $this->conn->rowCount();
		return $row;
	}

	public function select_one_row($query)
	{
		$sth = $this->conn->prepare($query);
		$sth->execute();
		$result = $sth->fetch(PDO::FETCH_ASSOC);
		return $result;
	}

	public function select_all_row($query)
	{
		$sth = $this->conn->prepare($query);
		$sth->execute();
		$result = $sth->fetchAll(PDO::FETCH_ASSOC);
		return $result;
	}
}// end of class
