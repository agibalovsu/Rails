document.addEventListener('turbolinks:load', () => {
   
  let control = document.getElementById('progress-bar');

  if (control) {
    showCurrentProgress(control);
  }
});

function showCurrentProgress(control) {
  let progress = control.dataset.progress;
  let value = control.getAttribute('aria-valuenow');
  value = progress;
  control.style.width = progress + '%';
}