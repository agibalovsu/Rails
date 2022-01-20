document.addEventListener('turbolinks:load', function () {
  let control = document.getElementById('user_password_confirmation')

  if (control) { control.addEventListener('input', check) }
});

let check = function() {
  let password = document.getElementById('user_password').value
  let conf_password = document.getElementById('user_password_confirmation').value
  let message = document.getElementById('message')
  let smiley = document.querySelector('.octicon-smiley')
  let alert =  document.querySelector('.octicon-alert')

  if (password == conf_password && conf_password != '')  {

    smiley.classList.remove('hide')
    alert.classList.add('hide')

    message.style.color = 'green';
    message.textContent = 'Пароли совпадают';

  } else if (password != conf_password && conf_password != '')  {

    smiley.classList.add('hide')
    alert.classList.remove('hide')

    message.style.color = 'red';
    message.textContent = 'Пароли не совпадают';

  } else {

    smiley.classList.add('hide')
    alert.classList.add('hide')

    message.textContent = '';

  }
}