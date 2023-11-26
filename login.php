<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="style.css">
<title>Գրանցվել</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css"&gt;

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.5.0/css/flag-icon.min.css"&gt;
</head>
<body bgcolor="#000B46">

<div class="centered login-container">
<div class="login-container-inside">
<h1 class="title-1">Մուտք գործել</h1>
<br>
<div>
<input type="text" class="input-1" placeholder="Օգտանուն" id="l_username" name="l_username" required>
<br>
<input type="password" class="input-1" placeholder="Գաղտնաբառ" id="l_password" name="l_password" required>
<br><br>
<h5 style="color: red;"></h5>
<input type="submit" class="button-1" value="Մուտք գործել" onclick="handleRegisterFormSubmit()">
</div>
<br>
<a class="a-1" href="register.php">Չունե՞ք հաշիվ</a>

<br>
</div>
</div>
<script>
if(localStorage.getItem("id")){
localStorage.removeItem("id")
localStorage.removeItem("name")

}
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.js"></script>
<script src="login.js"></script>

</body>
</html>