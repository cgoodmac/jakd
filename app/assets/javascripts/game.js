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



// <%= form_tag '/games', :remote => true do %>
//   <div id= "ready">
//     <%= submit_tag 'Ready to Play' %>
//   </div><!--#start-->
//   <div id= "bet">
//     How much do you want to bet?    <input type="number" placeholder="Insert $ amount" />
//     <%= submit_tag 'Go', :id => 'go' %>
//   </div><!--#bet-->

//   <div id="bet"></div>
// <% end %>