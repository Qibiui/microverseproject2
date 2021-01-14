var init_friend_lookup;

init_friend_lookup = function(){
  $('#friend-lookup-form').on('ajax:before', function(event, data, status){
    show_spinner();
  });

  $('#friend-lookup-form').on('ajax:after', function(event, data, status){
    hide_spinner();
  });

  $('#friend-lookup-form').on('ajax:success', function(event, data, status){
    $('#friend-lookup').replaceWith(data);
    init_friend_lookup();
  });

  $('#friend-lookup-form').on('ajax:error', fu