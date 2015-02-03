$(document).ready(function() {
  if ($('#chat').length == 1 && window.DASHBOARD_URL) {
    setInterval(function() {
      $.getScript(DASHBOARD_URL);
    }, 2000)
  }
})