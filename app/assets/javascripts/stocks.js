var init_stock_lookup;

init_stock_lookup = function(){
  $('#stock-lookup-form').on('ajax:before', function(event, data, status){
    show_spinner();
  });

  $('#stock-lookup-form').on('ajax:after', function(event, data, status){
    hide_spinner();