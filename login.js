function handleRegisterFormSubmit() {
    if (document.getElementById('l_username').value && document.getElementById('l_password').value) {
    let data = {
    'username': document.getElementById('l_username').value,
    'password': document.getElementById('l_password').value
    }
    $.ajax({
    url: "api.php",
    type: "POST",
    data: JSON.stringify(data),
    contentType: 'application/json',
    success: function (response) {
    
    let jsonResponsev = JSON.parse(response);
    if (jsonResponsev.status) {
    localStorage.setItem("id", jsonResponsev.id);
    localStorage.setItem("name", jsonResponsev.name);
    window.location.href = "index.php";
    }
    },
    error: function (xhr, status, error) {
    console.log(error);
    }
    });
    } else {
    document.querySelector('h5').innerText = "լրացրեք բոլոր դաշտերը"
    }
    
    
}