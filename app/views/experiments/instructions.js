var ready, set_positions;

set_positions = function() {
  // loop through and give each task a data-pos
  // attribute that holds its position in the DOM
  $('.panel.panel-default').each(function(i) {
    $(this).attr("data-pos", i + 1);
  });
}

ready = function() {
  // call set_positions function
  set_positions();

  $('.sortable').sortable();
}

$(document).ready(ready);
