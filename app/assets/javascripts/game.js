$(function(){

  $('#bet').hide();
  $('#ready').click(hide_button);
  $('#go').click(go);

});

function hide_button()
{
  $('#ready').hide();
  $('#bet').show();
}

function go()
{
  $('#go').val();
  $('#bet').hide();
  
}


