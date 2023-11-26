<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Առաջարկել հարց</title>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.5.0/css/flag-icon.min.css">

  <script defer src="./admin.js"></script>

</head>


<body bgcolor="#000B46">
    <div class="menu-button audience">
        <a href="index.php" class="p-home-button">
            <button class="audience-b" style="color:#fff;">
                HOME
            </button>
        </a>
    </div>
    <div class="centered login-container">
        <div class="login-container-inside">
            <h1 class="title-1">Առաջարկել հարց</h1>
            <br>
                <input type="text" class="input-1" placeholder="Հարց" id="a_question" name="a_question" required>
                <br>
                <input type="text" class="input-1" placeholder="Պատասխան 1" id="a_ans1" name="a_ans1" required>
                <input class="radio-1" type="radio" id="radio_ans1" name="correct_answer" value="1">
                <br>
                <input type="text" class="input-1" placeholder="Պատասխան 2" id="a_ans2" name="a_ans2" required>
                <input class="radio-1" type="radio" id="radio_ans2" name="correct_answer" value="2">
                <br>
                <input type="text" class="input-1" placeholder="Պատասխան 3" id="a_ans3" name="a_ans3" required>
                <input class="radio-1" type="radio" id="radio_ans3" name="correct_answer" value="3">
                <br>
                <input type="text" class="input-1" placeholder="Պատասխան 4" id="a_ans4" name="a_ans4" required>
                <input class="radio-1" type="radio" id="radio_ans4" name="correct_answer" value="4">
                <br><br>
                <label for="a_difficulty">Դժվարություն: </label>
                <br>
                <select class="dropdown-1" id="a_difficulty" name="a_difficulty">
                    <option value="1">1 (Շատ հեշտ)</option>
                    <option value="2">2 (Հեշտ)</option>
                    <option value="3">3 (Միջին)</option>
                    <option value="4">4 (Դժվար)</option>
                    <option value="5">5 (Շատ դժվար)</option>
                </select>
                <br><br>
                <label for="a_category">Տեսակ: </label>
                <br>
                <select class="dropdown-1" id="a_category" name="a_category">
                    <option value="Sport">Սպորտ</option>
                    <option value="Art">Արվեստ</option>
                    <option value="Science">Գիտություն</option>
                    <option value="Programming">Ծրագրավորում</option>
                    <option value="History">Պատմություն</option>
                    <option value="Astronomy">Աստղագիտություն</option>
                    <option value="Geography">Աշխարագրություն</option>
                    <option value="Animals">Կենդանիներ</option>
                    <option value="Math">Մաթեմատիկա</option>
                    <option value="Politics">Քաղաքականություն</option>
                    <option value="Pop-culture">Փոփ մշակույթ</option>
                    <option value="Media">Կինո</option>
                </select>
                <br><br>
                <h5></h5>
                <input type="submit" class="button-1" value="Ուղարկել">
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.7.0.js" integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>    
</body>
</html>
