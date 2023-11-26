<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="style.css">
    
    <title>Ով Է Ուզում Դառնալ Միլիոնատեր</title>
    
    <script src="https://kit.fontawesome.com/cd2c07f92b.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
</head>

<body bgcolor="#000B46">


 
    <div class="buttons-2">
        <div class="menu-button audience">
            <a href="index.php" class="p-home-button">
                <button class="audience-b">
                    <i class="fa-solid fa-house lifeline-images-2"></i>
                </button>
            </a>
        </div>
        
        <div class="skip-button audience">
            <button class="audience-b skip-question-button">
                <i class="fa-solid fa-forward lifeline-images-2"></i>
            </button>
        </div>
    </div>
    <div class="main">

        <div class="p-message">
            <div class="call-friend-text">
                <p class="call-friend-p">Ու՞մ եք ցանկանում զանգահարել...</p>
            </div>
            <div class="friends">
                <div class="friend1">
                    <img class="friend1-img" src="" alt="">
                    <p class="friend1-name">dfg</p>
                </div>
                <div class="friend2">
                    <img src="" alt="" class="friend2-img">
                    <p class="friend2-name">fghj</p>
                </div>
                <div class="friend3">
                    <img src="" alt="" class="friend3-img">
                    <p class="friend3-name">dfgh</p>
                </div>
                <div class="friend4">
                    <img src="" alt="" class="friend4-img">
                    <p class="friend4-name">tyu</p>
                </div>
            </div>
            <button class="p-message-x"><i class="fa-solid fa-xmark"></i></button>
        </div>

        <div class="p-answer">
            <div class = "answer-text">
                       
            </div>
        </div>




        <div class="p-message-2" id="audience">
            <button class="p-message-x-2" onclick="closeAudience()">X</button>
            <canvas id="myChart" style="width:100%;max-width:600px; margin-left: 10%; margin-top: 11px;"></canvas>
        </div>

        <div class="p-message-2" id="game_lose">
            <h3 id="loseText"></h3>
        </div>
        
        <div class="">
            <img src="images/logo1.png" alt="" id="funny" class="logo-image-3">
        </div>
        <div class="timer">
        <div id="timer" class="timer1"><h3 class="timer_text">01:00</h3></div>
        </div>
        <div id="question" class="question">
        </div>
        <div class="answers">
            <div class="answer">
                <button id="answer1" ans="a1" class="answersb answer-button-a"></button>
            </div>
            <div class="answer">
                <button id="answer2" ans="a2" class="answersb answer-button-b"></button>
            </div>
            <div class="answer">
                <button id="answer3" ans="a3" class="answersb answer-button-c"></button>
            </div>
            <div class="answer">
                <button id="answer4" ans="a4" class="answersb answer-button-d"></button>
            </div>
        </div>
        
        
    </div>
    
    <div class="money-cont">
        <div class="buttons">
            
            <div class="fifty-fifty">
                <button class="fifty-fifty-b" id = "50/50-button" >
                    <img src="images/50-50.png" alt="" class="lifeline-images">
                </button>
            </div>
            
            
            <div class="audience">
                <button class="audience-b" id = "audience-button" onclick="openAudience()">
                    <i class="fa-solid fa-users-line lifeline-images-2"></i>
                </button>
            </div>
            
            <div class="call-friend">
                <button class="call-friend-d">
                    <i class="fa-solid fa-phone-volume lifeline-images-2 call-friend-2" style="pointer-events: none;"></i>
                </button>
            </div>
            
        </div>
        
        <div class="balance">
            <ol reversed class="balance-ol">
                <li>
                    <div id="l15" class="m-1000000">
                        <p>$1,000,000</p>
                    </div>
                </li>
                <li>
                    <div id="l14" class="m-500000">
                        <p>$500,000</p>
                    </div>
                </li>
                <li>
                    <div id="l13" class="m-250000">
                        <p>$250,000</p>
                    </div>
                </li>
                <li>
                    <div id="l12" class="m-125000">
                        <p>$125,000</p>
                    </div>
                </li>
                <li>
                    <div id="l11" class="m-64000">
                        <p>$64,000</p>
                    </div>
                </li>
                <li>
                    <div id="l10" class="m-32000">
                        <p>$32,000</p>
                    </div>
                </li>
                <li>
                    <div id="l9" class="m-16000">
                        <p>$16,000</p>
                    </div>
                </li>
                <li>
                    <div id="l8" class="m-8000">
                        <p>$8000</p>
                    </div>
                </li>
                <li>
                    <div id="l7" class="m-4000">
                        <p>$4000</p>
                    </div>
                </li>
                <li>
                    <div id="l6" class="m-2000">
                        <p>$2000</p>
                    </div>
                </li>
                <li>
                    <div id="l5" class="m-1000">
                        <p>$1000</p>
                    </div>
                </li>
                <li>
                    <div id="l4" class="m-500">
                        <p>$500</p>
                    </div>
                </li>
                <li>
                    <div id="l3" class="m-300">
                        <p>$300</p>
                    </div>
                </li>
                <li>
                    <div id="l2" class="m-200">
                        <p>$200</p>
                    </div>
                </li>
                <li>
                    <div id="l1" class="m-100">
                        <p>$100</p>
                    </div>
                </li>
            </ol>
            
            
        </div>
        
    </div>
    <div id="gameTimer"></div>
    <div id="welcome">
        <h3>
            Դուք ունեք հնարավորություն ՝ փոխել հարցը, 50/50 , զանգ ընկերոջը եւ հանդիսատեսի օգնություն: Դե ինչ մաղթում ենք Ձեզ հաջողություն:
        </h3>
        <button onclick="startFirstQuestion()">Առաջ</button>
        <script>
            let b1 = document.getElementsByClassName('money-cont')
            let b2 = document.getElementsByClassName('buttons-2')
            b1[0].style.visibility = "hidden"
            b2[0].style.visibility = "hidden"

        </script>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.js"></script>
    <script  src="ajax.js"></script>
        <script>

       if (!localStorage.getItem("id")) {
           window.location.href  =  'login.php'
        }
    </script>

</body>

</html>