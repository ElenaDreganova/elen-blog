<?php

//1. При реєстрації шифруємо пароль.
//2. Про логігі пароль, який ввів користувач, потрібно зашифрувати по тій же схемі, як при реєстрації
//3. Перевіряти пароль в базі з зашифрованим паролем користувача
/*
1. Отримати пароль користувача
2. Отримати користувача по логіну
3. Перевірити чи співпадає пароль
*/
	if(isset($_POST["submit"])) {
		$login = $_POST['login'];
		$password = $_POST['password'];

		$sql = "SELECT * FROM `users` WHERE `username` = '$login'";
		$result = $conn->query($sql);
		$user = $result->fetch_assoc();


		//$password = "admin12345";

		//$passwordUser = "admin123456";
		if(password_verify($password, $user['password'])) {
			setcookie("user", $user['id'], time()+3600*24, "/");
		} else {
			echo ("Дані введено не вірно");
		}

		
	 }

?>


<form method="post">
	<p>
		Login: <br/>
		<input type="text" name="login">
	</p>

	<p>
		Password: <br/>
		<input type="password" name="password">
	</p>

	<p>
		<input type="submit" name="submit" value="Login">
	</p>
	

</form>