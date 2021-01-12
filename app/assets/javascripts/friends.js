var init_friend_lookup;

init_friend_lookup = function(){
  $('#friend-lookup-form').on('ajax:before', function(event, data, status){
    show_spinner();
  });

  $('#friend-lookup-form').