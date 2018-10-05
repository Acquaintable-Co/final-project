
function showOfferDetail () {
  var offers = document.getElementsByClassName('fare-detail')
  for (var offer of offers) {
    if (offer.classList.contains('hidden')) {
      offer.classList.remove('hidden')
    } else {
      offer.classList.add('hidden')
    }
  }
}

function showHighlightDetail() {
  var highlights = document.getElementsByClassName('highlight-detail') 
  for (var highlight of highlights) {
    if (highlight.classList.contains('hidden')) {
      highlight.classList.remove('hidden')
    } else {
      highlight.classList.add('hidden')
    }
  }
}