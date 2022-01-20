document.addEventListener('turbolinks:load', function() {
  $('.form-inline-link').on('click', formInlineLinkHandler)

  let errors = document.querySelector('.resource-errors')

  if (errors) {
    let resourceId = errors.dataset.resourceId
    formInlineHandler(resourceId)
  }
})

function formInlineLinkHandler(event) {
  event.preventDefault()

  let testId = this.dataset.testId
  formInlineHandler(testId)
}

function formInlineHandler(testId) {
  let link = document.querySelector(`.form-inline-link[data-test-id="${testId}"]`)

  if (link == null) {
    return
  }

  let $testTitle = $(`.test-title[data-test-id="${testId}"]`)
  let $formInline = $(`.form-inline[data-test-id="${testId}"]`)

  $testTitle.toggle()
  $formInline.toggle()

  if ($formInline.is(':visible')) {
    link.textContent = 'Выход'
  } else {
    link.textContent = 'Изменить'
  }
}