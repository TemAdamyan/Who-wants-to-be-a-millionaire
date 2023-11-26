<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Գրանցվել</title>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.5.0/css/flag-icon.min.css">
  <style>

  </style>
</head>
<body bgcolor="#000B46">
    
    <div class="centered login-container">
        <div class="login-container-inside register">
            <h1 class="title-1">Գրանցվել</h1>
            <br>
            <div>
                 <input type="text" class="input-1" placeholder="Անուն" id="r_name" name="r_name" required>
                <br>
                <input type="text" class="input-1" placeholder="Ազգանուն" id="r_surname" name="r_surname" required>
                <br>
                <input type="text" class="input-1" placeholder="Օգտանուն" id="r_username" name="r_username" required>
                <br>
                <input type="password" class="input-1" placeholder="Գաղտնաբառ" id="r_password" name="r_password" required>
                <br>
                <input type="number" class="input-1" placeholder="Հեռախոսահամար" id="r_phone_number" name="r_phone-number" required>
                <br>
                <input type="number" class="input-1" placeholder="Տարիք" id="r_age" name="r_age" required>
                <br><br>
                <label for="r_gender">Սեռ:</label>
                <br>
                <select class="dropdown-1" id="r_gender" name="r_gender">
                    <option value="1">Արական</option>
                    <option value="2">Իգական</option>
                </select>
                <br><br>
                <label for="r_country">Ազգություն:</label>
                <br>
                <select class="dropdown-1" id="r_country" name="r_country">
                    <option value="Հայաստան">🇦🇲 Հայաստան</option>
                    <option value="ԱՄՆ"><i class="flag-icon flag-icon-us"></i>🇺🇸 ԱՄՆ</option>
                    <option value="Ռուսաստան">🇷🇺 Ռուսաստան</option>
                    <option value="Ֆրանսիա">🇫🇷 Ֆրանսիա</option>
                    <option value="Գերմանիա">🇩🇪 Գերմանիա</option>
                    <option value="Չինաստան">🇨🇳 Չինաստան</option>
                    <option value="Հնդկաստան">🇮🇳 Հնդկաստան</option>
                    <option value="Ուրիշ">🏁 Ուրիշ</option>
                </select>
                <br>
                <br>
                <div id="error_massage" style="display:none;"><p style="color:red;">Մուտքագրե՛ք բոլոր դաշտերը</p></div>
                <div onclick="handleRegisterFormSubmit()" class="button-1" value="Գրանցվել">Գրանցվել</div>
            </div>
            <br>
            <a class="a-1" href="login.php">Ունե՞ք հաշիվ</a>
        </div>
    </div>
    <div class="menu-button audience">
        <a href="index.php" class="p-home-button">
            <button class="audience-b" style="color:#fff;">
                HOME
            </button>
        </a>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.js"></script>
  <script  src="register.js"></script>
</body>
</html>