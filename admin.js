const questionForm = document.querySelector('.button-1');

const formInputs = document.querySelectorAll('.input-1');

const formSelects = document.querySelectorAll('.dropdown-1');

const formRadio = document.querySelectorAll('.radio-1');

const h5 = document.querySelector('h5');


let selectedRightAnswer;


formRadio.forEach(radio => {
    radio.onclick = event => {
        selectedRightAnswer = event.target.value
    }
})

questionForm.onclick = handleQuestionFormSubmit;

function handleQuestionFormSubmit() {

    if(formInputs[0].value && formInputs[1].value && formInputs[2].value && formInputs[3].value && formInputs[4].value && +formSelects[0].value && formSelects[1].value && +selectedRightAnswer) {
        let data = {
            question: formInputs[0].value,
            answer1: formInputs[1].value,
            answer2: formInputs[2].value,
            answer3: formInputs[3].value,
            answer4: formInputs[4].value,
            hard_level: +formSelects[0].value,
            category: formSelects[1].value,
            right_answer: +selectedRightAnswer
        }
    
        $.ajax({
            url: 'api.php',
            data: JSON.stringify(data),
            contentType: 'application/json',
            method: 'POST',
            success: function (response) {
                let jsonResponsev = JSON.parse(response);
                    h5.innerText = 'success';

            },
            error: function (xhr, status, error) {
                console.log(error);
            }
        })
    }  else {
            h5.innerText = 'լրացրեք բոլոր դաշտերը';
    }
}
