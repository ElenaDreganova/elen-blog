<?php

		$servername = "localhost";
		$username = "root";
		$password = "";
		$db = "elen_blog";
		// Создаем соединение
		$conn = new mysqli($servername, $username, $password, $db);
		
		// Проверяем соединение
		if ($conn->connect_error) {
		    die("Connection failed: " . $conn->connect_error);
		}

?>