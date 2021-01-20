var init_stock_lookup;

init_stock_lookup = function(){
  $('#stock-lookup-form').on('ajax:before', function(event, data, status){
    show_