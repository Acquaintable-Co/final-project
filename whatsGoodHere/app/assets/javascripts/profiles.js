
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
