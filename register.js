

function handleRegisterFormSubmit() {
    let data = {
        'name': document.getElementById('r_name').value,
        'surname': document.getElementById('r_surname').value,
        'password': document.getElementById('r_password').value,
        'phone': document.getElementById('r_phone_number').value,
        'age': parseInt(document.getElementById('r_age').value),
        'gender': parseInt(document.getElementById('r_gender').value),
        'nation': document.getElementById('r_country').value,
        'username': document.getElementById('r_username').value
    }

    let error_massage = document.getElementById("error_massage");
    let filled = true
    for (const key in data) {
        if (!data[key]) {
            filled = false
        }
    }
            console.log(data)
    if(filled){
        error_massage.style.display = "none";
        $.ajax({
            url: "api.php",
            type: "POST",
            data: JSON.stringify(data),
            contentType: 'application/json',
            success: function(response) {
                
                let jsonResponsev = JSON.parse(response);
                if(jsonResponsev.status == 'ok'){
                    window.location.href = "login.php"
                }else{
                    location.reload();
                }
             

            },
            error: function(xhr, status, error) {
                console.log(error);
            }
        });
    } else {
        error_massage.style.display = "block";
    }       

}




