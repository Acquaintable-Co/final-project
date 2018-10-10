
function showDetail (className) {
  var divs = document.getElementsByClassName(className)
  for (var div of divs) {
    if (div.classList.contains('hidden')) {
      div.classList.remove('hidden')
    } else {
      div.classList.add('hidden')
    }
  }
}

window.onload = function () {
  var modal = document.getElementById('fare-modal')
  var btn = document.getElementById('fare-info')
  var span = document.getElementsByClassName('close')
  btn.onclick = function () {
    console.log('hi')
    modal.style.display = 'block'
  }
  span.onclick = function () {
    modal.style.display = 'none'
  }

  window.onclick = function (event) {
    if (event.target === modal) {
      modal.style.display = 'none'
    }
  }
}

window.onload = function () {
  var modal = document.getElementById('tips-modal')
  var btn = document.getElementById('tips-info')
  var span = document.getElementsByClassName('close')
  btn.onclick = function () {
    console.log('hi')
    modal.style.display = 'block'
  }
  span.onclick = function () {
    modal.style.display = 'none'
  }

  window.onclick = function (event) {
    if (event.target === modal) {
      modal.style.display = 'none'
    }
  }
}

window.onload = function () {
  var modal = document.getElementById('specs-modal')
  var btn = document.getElementById('specs-info')
  var span = document.getElementsByClassName('close')
  btn.onclick = function () {
    console.log('hi')
    modal.style.display = 'block'
  }
  span.onclick = function () {
    modal.style.display = 'none'
  }

  window.onclick = function (event) {
    if (event.target === modal) {
      modal.style.display = 'none'
    }
  }
}