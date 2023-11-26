const timer_text = document.querySelector(".timer_text");

const swipeQuestionButton = document.querySelector(".skip-question-button");

let timer = 60;

let preview = "01:00";

let clickStatus = false;

let swpieClickStatus = false;

let swipeUserLevel;


const audio1 = new Audio('audio/100-4000$.mp3');
const audio2 = new Audio('audio/4000-250000$.mp3');
const audio3 = new Audio('audio/250000-1000000$.mp3');
const audio4 = new Audio('audio/correctAnswer.mp3');
const audio5 = new Audio('audio/loseLast.mp3');


function getRandomIndexes(count, max) {
  const indexes = [];
  while (indexes.length < count) {
    const randomIndex = Math.floor(Math.random() * max);
    if (!indexes.includes(randomIndex)) {
      indexes.push(randomIndex);
    }
  }
  return indexes;
}

function startFirstQuestion(){
  audio1.play();
  document.getElementById("welcome").style.display = "none"
  document.getElementById("welcome").style.display="none"
  b1[0].style.visibility = "visible"
  b2[0].style.visibility = "visible"
  getQuestion(1);
}


function getQuestion(userLevel) {
  if (userLevel == 15) {
    const audio = new Audio("audio/finalAnswer.mp3");
    audio.play();
  }
  swipeUserLevel = userLevel;
  if(userLevel < 16){
  document.getElementById("l" + userLevel).style.color = "orange";
}
  let test = {
    give_question: "1",
    level: userLevel,
    user: localStorage.getItem("id"),
  };

  if (userLevel == 16) {
    setTimeout(
      (window.location.href = "win.html"),
      5000
    );
  }
  console.log(test)
  $.ajax({
    url: "api.php",
    type: "POST",
    data: JSON.stringify(test),
    contentType: "application/json",
    success: function (response) {
      let jsonResponsev = JSON.parse(response);

      jsonResponsev.forEach((element) => {
        let answer1 = element.answer1;
        let answer2 = element.answer2;
        let answer3 = element.answer3;
        let answer4 = element.answer4;
        let question_id = element.id;
        let rightAnswer = element.right_answer;
        let question = element.question;
        let category = element.category;
        console.log('right-answer'+rightAnswer);




        localStorage.setItem("ra", rightAnswer);

  

        var button = document.getElementById("50/50-button");
        button.addEventListener("click", fiftyFifty);

        let newArray = [];

        for (let i = 1; i < 5; i++) {
          let rndQuestion = getRoundQuestion(newArray);
          newArray.push(rndQuestion);
          document.querySelector("#answer" + i).textContent =
            question[rndQuestion];
        }



        document.getElementById("question").innerHTML = question;
        document.getElementById("answer1").innerHTML = answer1;
        document.getElementById("answer2").innerHTML = answer2;
        document.getElementById("answer3").innerHTML = answer3;
        document.getElementById("answer4").innerHTML = answer4;
        closeAudience();
        runGame(element.right_answer, userLevel, question_id);
        timerInterval();

        const friend1 = {
          subjects: ["Sport", "Art", "Science", "Pop-Culture"],
        };
        const friend2 = {
          subjects: ["History", "Geography", "Astronomy", "Media"],
        };
        const friend3 = { subjects: ["Animals", "Math", "Programming", "Art"] };
        const friend4 = {
          subjects: ["Politics", "Pop-culture", "Media", "Geography"],
        };

        const boyNames = [
          "Sam",
          "Michael",
          "David",
          "Deni",
          "Matthew",
          "Alex",
          "William",
        ];
        const girlNames = [
          "Alice",
          "Emma",
          "Olivia",
          "Sophia",
          "Emily",
          "Grace",
          "Ava",
        ];
        const boyPhotos = [
          "images/boy1.png",
          "images/boy2.png",
          "images/boy3.png",
          "images/boy4.png",
          "images/boy5.png",
          "images/boy6.png",
          "images/boy7.png",
        ];
        const girlPhotos = [
          "images/girl1.png",
          "images/girl2.png",
          "images/girl3.png",
          "images/girl4.png",
          "images/girl5.png",
          "images/girl6.png",
          "images/girl7.png",
        ];
        function fiftyFifty() {
          const audio = new Audio("audio/50.mp3");
          audio.play();

          let questionOptions = [
            { text: answer1, correct: false },
            { text: answer2, correct: false },
            { text: answer3, correct: false },
            { text: answer4, correct: false },
          ];

          questionOptions[rightAnswer - 1].correct = true;

          question = element.question;

          document.getElementById("question").innerHTML = question;

          const falseAnswers = questionOptions.filter(
            (option) => !option.correct
          );
          const randomIndexes = getRandomIndexes(2, falseAnswers.length);


          randomIndexes.forEach((index) => {
            falseAnswers[index].text = "";
          });





          ///fifty fifty
          const fiftyFiftyOptions = questionOptions;

          document.getElementById("answer1").innerHTML =
            fiftyFiftyOptions[0].text;
          document.getElementById("answer2").innerHTML =
            fiftyFiftyOptions[1].text;
          document.getElementById("answer3").innerHTML =
            fiftyFiftyOptions[2].text;
          document.getElementById("answer4").innerHTML =
            fiftyFiftyOptions[3].text;
          const button = document.getElementById("50/50-button");
          button.classList.add("transparent");
          button.disabled = true;



          var answersb = document.getElementsByClassName("answersb");

          for (let a = 0; a < answersb.length; a++) {
            console.log(answersb[a].textContent)
            if(answersb[a].innerHTML==''){
              answersb[a].replaceWith(answersb[a].cloneNode(true));
            }
          }

          
        }
        function getRandomElementFromArray(array) {
          const randomIndex = Math.floor(Math.random() * array.length);
          return array[randomIndex];
        }

        function assignRandomNameAndPhoto(
          friendElement,
          nameArray,
          photoArray
        ) {
          const name = getRandomElementFromArray(nameArray);
          const photoSrc = getRandomElementFromArray(photoArray);
          friendElement.textContent = name;
          friendElement.previousElementSibling.src = photoSrc;
        }

        const openWindow = document.querySelector(".call-friend");
        openWindow.addEventListener("click", openFriendWindow);
        document
          .querySelector(".p-message-x")
          .addEventListener("click", closeFriendWindow);

        document
          .querySelector(".friend1-img")
          .addEventListener("click", function () {
            callFriend(1);
          });
        document
          .querySelector(".friend2-img")
          .addEventListener("click", function () {
            callFriend(2);
          });
        document
          .querySelector(".friend3-img")
          .addEventListener("click", function () {
            callFriend(3);
          });
        document
          .querySelector(".friend4-img")
          .addEventListener("click", function () {
            callFriend(4);
          });

        assignRandomNameAndPhoto(
          document.querySelector(".friend1-name"),
          boyNames,
          boyPhotos
        );
        assignRandomNameAndPhoto(
          document.querySelector(".friend2-name"),
          boyNames,
          boyPhotos
        );
        assignRandomNameAndPhoto(
          document.querySelector(".friend3-name"),
          girlNames,
          girlPhotos
        );
        assignRandomNameAndPhoto(
          document.querySelector(".friend4-name"),
          girlNames,
          girlPhotos
        );

        function openFriendWindow() {
          const helpFriends = document.querySelector(".p-message");
          helpFriends.style.display = "block";
        }

        function closeFriendWindow() {
          const helpFriends = document.querySelector(".p-message");
          helpFriends.style.display = "none";
        }

        function getFriendByIndex(index) {
          switch (index) {
            case 1:
              return friend1;
            case 2:
              return friend2;
            case 3:
              return friend3;
            case 4:
              return friend4;
            default:
              return null;
          }
        }
        const rightanswer = rightAnswer - 1;

        function callFriend(friendIndex) {
          const answers = [
            element.answer1,
            element.answer2,
            element.answer3,
            element.answer4,
          ];

          const friend = getFriendByIndex(friendIndex);
          if (friend) {
            if (friend.subjects.includes(category)) {
              const audio = new Audio("audio/call.mp3");
              audio.play();

              closeFriendWindow();
              const answerText = document.querySelector(".p-answer");
              answerText.style.display = "block";

              let ellipsisInterval = setInterval(() => {
                const answerDiv = document.querySelector(".answer-text");
                if (answerDiv.textContent.endsWith("...")) {
                  answerDiv.textContent = "";
                } else {
                  answerDiv.textContent += ".";
                }
              }, 250);

              setTimeout(() => {
                clearInterval(ellipsisInterval);
                const answerDiv = document.querySelector(".answer-text");
                answerDiv.textContent += `Իմ կարծիքով ճիշտ պատասխանն է ${answers[rightanswer]}...`;
                setTimeout(() => {
                  const answer = document.querySelector(".p-answer");
                  answer.style.display = "none";
                }, 3000);
              }, 3000);

              const callFriendButton1 = document.querySelector(".call-friend-d");
              const callFriendButton2 = document.querySelector(".call-friend-2");
              callFriendButton1.classList.add("transparent");
              callFriendButton1.disabled = true;
              callFriendButton2.disabled = true;

            } else {
              const audio = new Audio("audio/call.mp3");
              audio.play();

              closeFriendWindow();
              const answerText = document.querySelector(".p-answer");
              answerText.style.display = "block";

              let ellipsisInterval = setInterval(() => {
                const answerDiv = document.querySelector(".answer-text");
                if (answerDiv.textContent.endsWith("...")) {
                  answerDiv.textContent = "";
                } else {
                  answerDiv.textContent += ".";
                }
              }, 250);

              setTimeout(() => {
                clearInterval(ellipsisInterval);
                let noncorrectAnswerIndex = Math.floor(Math.random() * 4);
                while (noncorrectAnswerIndex === rightanswer) {
                  noncorrectAnswerIndex = Math.floor(Math.random() * 4);
                }
                const answerDiv = document.querySelector(".answer-text");
                answerDiv.textContent = `Իմ կարծիքով ճիշտ պատասխանն է ${answers[noncorrectAnswerIndex]}...`;
                setTimeout(() => {
                  const answer = document.querySelector(".p-answer");
                  answer.style.display = "none";
                }, 3000); // pagely
              }, 3000);

              const callFriendButton = document.querySelector(".call-friend-d");
              callFriendButton.disabled = true;
              callFriendButton.classList.add("transparent");
            }
          }
        }
      });
    },
    error: function (xhr, status, error) {
      console.log(error);
    },
  });
}

function runGame(ra, ul, qid) {
  var ra = ra;
  var answersb = document.getElementsByClassName("answersb");

  for (let a = 0; a < answersb.length; a++) {
    answersb[a].replaceWith(answersb[a].cloneNode(true));
  }
  for (let i = 0; i < answersb.length; i++) {
    answersb[i].addEventListener("click", function () {

      var buttons = document.getElementsByClassName('buttons')
      var buttonsSkip = document.getElementsByClassName('skip-button')
      for(let i = 0 ; i < buttons.length; i++){
        buttons[i].style.display = 'none'
      }
      buttonsSkip[0].style.display = 'none'

      clickStatus = true;
      let orb = document.getElementsByClassName("orange");
      if (orb.length == 0) {
        this.classList.add("orange");
        let thisAnswer = this.getAttribute("ans");
        for (let z = 0; z < answersb.length; z++) {
            answersb[z].replaceWith(answersb[z].cloneNode(true));
        }
        setTimeout(function () {
          var answ1 = document.getElementsByClassName("orange");






          if ("a" + ra == thisAnswer) {
            for(let i = 0 ; i < buttons.length; i++){
              buttons[i].style.display = 'flex'
            }
            buttonsSkip[0].style.display = 'block'
            audio4.play()
            answ1[0].classList.add("green");
            answ1[0].classList.remove("orange");
            setTimeout(function () {
              let answ2 = document.getElementsByClassName("green");
              answ2[0].classList.remove("green");
              ul = parseInt(ul) + 1;
              let test = {
                user_id: localStorage.getItem("id"),
                level: ul,
                question_id: qid,
                answer_id: thisAnswer,
                status: 1,
                game_played: 1,
              };

              $.ajax({
                url: "api.php",
                type: "POST",
                data: JSON.stringify(test),
                contentType: "application/json",
                success: function (response) {
                  let jsonResponsev = JSON.parse(response);
                  if(ul > 2 && ul==10){
                    audio1.pause();
                    audio1.currentTime = 0;
                     audio2.play();
                  }
                  if(ul > 10 && ul==13){
                    audio2.pause();
                    audio2.currentTime = 0;
                    audio3.play();
                  }
     
                  setTimeout(function(){
                  audio4.pause();
                  audio4.currentTime = 0;
                  getQuestion(ul)
                  },1000)
                  
                },
                error: function (xhr, status, error) {
                  console.log(error);
                },
              });
            }, 1000);
          } else {
            for(let i = 0 ; i < buttons.length; i++){
              buttons[i].style.display = 'flex'
            }
            buttonsSkip[0].style.display = 'block'
            audio5.play()
            answ1[0].classList.add("red");
            answ1[0].classList.remove("orange");
            document.getElementById("answer" + ra).classList.add("green");

            let test = {
              user_id: localStorage.getItem("id"),
              level: ul,
              question_id: qid,
              answer_id: thisAnswer,
              level: ul,
              status: 0,
              game_played: 1,
            };

            $.ajax({
              url: "api.php",
              type: "POST",
              data: JSON.stringify(test),
              contentType: "application/json",
              success: function (response) {
                let jsonResponsev = JSON.parse(response);
                audio5.pause();
                audio5.currentTime = 0;
                openGameOverNotification();
              },
              error: function (xhr, status, error) {
                console.log(error);
              },
            });
          }
        }, 2500);
      }
    });
  }
}

function getRoundQuestion(narray) {
  var rndQuestion = Math.floor(Math.random() * 4);
  if (!narray.includes(rndQuestion)) {
    return rndQuestion;
  } else {
    return getRoundQuestion(narray);
  }
}

function openAudience() {
  const audio = new Audio("audio/audiencee.mp3");
  audio.play();

  document.getElementById("audience").style.display = "block";
  askAudience(localStorage.getItem("ra"));
}

function closeAudience() {
  document.getElementById("audience").style.display = "none";
}

function askAudience(ra) {
  const button = document.getElementById("audience-button");
  let n1 = Math.floor(Math.random() * 20);
  let n2 = Math.floor(Math.random() * 10) + 31;
  let n3 = Math.floor(Math.random() * 10) + 19;
  let n4 = 100 - n1 - n2 - n3;

  if (ra == 1) {
    n1 = n2 + n1;
    n2 = n1 - n2;
    n1 = n1 - n2;
  } else if (ra == 3) {
    n3 = n2 + n3;
    n2 = n3 - n2;
    n3 = n3 - n2;
  } else if (ra == 4) {
    n4 = n2 + n4;
    n2 = n4 - n2;
    n4 = n4 - n2;
  }

  updateChart([n1, n2, n3, n4, 100]);
  button.disabled = true;
  button.classList.add("transparent");
}

function updateChart(values) {
  var chartCanvas = document.getElementById("myChart");

  if (chartCanvas) {
    var ctx = chartCanvas.getContext("2d");

    ctx.clearRect(0, 0, chartCanvas.width, chartCanvas.height);

    new Chart(ctx, {
      type: "bar",
      data: {
        labels: ["A", "B", "C", "D"],
        datasets: [
          {
            backgroundColor: ["blue", "red", "green", "yellow"],
            data: values,
          },
        ],
      },
      options: {
        legend: { display: false },
        title: {
          display: true,
          text: "Great help from The Audience",
        },
      },
    });
  }
}

function timerInterval() {
  let interval = setInterval(() => {
    if (clickStatus) {
      clearInterval(interval);
      setTimeout(() => {
        preview = "01:00";

        timer = 60;

        clickStatus = false;
      }, 0);
    }
    if (timer < 1) {
      timer = "00";
      clearInterval(interval);
      TimerEnd();
    }

    if (timer < 10) {
      timer = "0" + timer;
    }

    if (timer < 60) {
      preview = `00:${timer}`;
    }

    timer_text.innerText = preview;

    timer--;
  }, 1000);
}

function TimerEnd() {
  document.querySelectorAll(".answersb").forEach((answer) => {
    answer.disabled = true;
  });

  openGameOverNotification();
}

swipeQuestionButton.onclick = swipeQuestion;

function swipeQuestion() {
  clickStatus = true
  swipeQuestionButton.classList.add("transparent");

  swipeQuestionButton.disabled = true;

  getQuestion(swipeUserLevel);
}

function openGameOverNotification() {
  const gameLoseModal = document.querySelector("#game_lose");

  const gameLoseText = document.querySelector("#loseText");

  let test = {
    get_final: 1,
    user: localStorage.getItem("id"),
  };

  $.ajax({
    url: "api.php",
    type: "POST",
    data: JSON.stringify(test),
    contentType: "application/json",
    success: function (response) {
      console.log(response)
      let jsonResponsev = JSON.parse(response);

      gameLoseModal.style.display = "block";

      let translation = {
        Sport: "Սպորտով",

        "Pop-culture": "Փոփ-մշակույթով",

        Math: "Մաթեմատիկայով",

        Art: "Արվեստով",

        Science: "Բնագիտություն",

        Programming: "Ծրագրավորումով",

        History: "Պատմությունով",

        Astronomy: "Աստղագիտությունով",

        Geography: "Աշխարագիտությունով",

        Animals: "Կենդանիներով",

        Politics: "Պոլիտիկներով",

        Media: "Մեդիա Կոնտենտով",
      };
      gameLoseText.innerText = `Ես Ձեզ առաջարկում եմ հետաքրքրվել ${
        translation[jsonResponsev[0].category]
      }`;

      setTimeout(() => {
        window.location.href = "index.php";
      }, 2500);

      setTimeout(() => {
        window.location.href = "lose.html";
      }, 2500);
    },
    error: function (xhr, status, error) {
      console.log(error);
    },
  });
}

let a = document.querySelector("#funny");
a.addEventListener("mouseenter", function () {
  const audio = new Audio("audio/funny.mp3");
  audio.autoplay = true;
});


