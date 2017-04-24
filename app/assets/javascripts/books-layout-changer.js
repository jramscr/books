$(document).on('click', '.js--booksLayoutChanger', function() {
  var layout = $(this).data('layout');
  var url = $(this).data('url');
  $.ajax({
    method: 'GET',
    url: url,
    data: {
      layout: layout
    }
  });
});

