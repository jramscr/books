$(document).on('keyup', '.js--searchInput', function() {
  var rex = new RegExp($(this).val(), 'i')

  $('.js--searchableComponent').hide();
  $('.js--searchableComponent').filter(function(){
    var name = $(this).find('.js--searchCriteria').text();

    return rex.test(name);
  }).show();
});

