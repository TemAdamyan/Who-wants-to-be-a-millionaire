<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Ով Է Ուզում Դառնալ Միլիոնատեր</title>
    <script src="https://kit.fontawesome.com/cd2c07f92b.js" crossorigin="anonymous"></script>
    <script>
function startGame(){
    const audio = new Audio('audio/opening.mp3');
    audio.play();
    document.getElementById("welcome").style.display="none"
}
    </script>
</head>
<body bgcolor="#000B46">

    <div class="button-3"><i class="i-2 fa-solid fa-user"></i> <span id="user-name"></span></div>
    
    <div class="menu-container">
        <div class="logo-td"><img class="logo-image" src="images/logo1.png" alt="Լոգոն"></div>
        <div class="other-td">
            <div class="menu-titles">
                <h3 class="menu-subtitle">Բարի գալուստ</h3>
                <h1 class="menu-title">Ով Է Ուզում Դառնալ<br>Միլիոնատեր</h1>
                <br><br>
                <div class="menu-buttons">
                    <a class="button-2" id="startButton"><i class="i-1 fa-solid fa-play" ></i> Սկսել</a>
                    <br>
                    <a href="register.php" class="button-2"><i class="i-1 fa-solid fa-user-plus"></i> Գրանցվել</a>
                    <br>
                    <a href="admin.php" class="button-2"><i class="i-1 fa-solid fa-question"></i> Առաջարկել հարց</a>
                </div>
            </div>
        </div>
    </div>

    <div id="welcome">
        <h1>
            Բարի Գալուստ Ով Է Ուզում Դառնալ Միլիոնատեր Խաղ 
        </h1>
        <button onclick="startGame()">Առաջ</button>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.js"></script>
    <script src="script.js"></script>
    <script>

       if (!localStorage.getItem("id")) {
           window.location.href  =  'login.php'
        }
    </script>
</body>
</html>