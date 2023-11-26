let userId = localStorage.getItem("id");
let startButton = document.getElementById("startButton")
let user_name = document.getElementById("user-name")

if (userId) {
    user_name.innerText = localStorage.getItem("name")
} else {
    user_name.innerText = "Գրանցված չէ"
}

startButton.addEventListener("click", function() {
    if (userId) {
        window.location.href = "play.php";
    } else {
        window.location.href = "register.php";
    }
})


