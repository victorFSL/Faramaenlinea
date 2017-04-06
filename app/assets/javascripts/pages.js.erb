$(document).on('turbolinks:load', function() {

  function inputs() {
    var search = $( "#search" ).val();
    var provincia = $( "#provincia select" ).val();
    var sector = $( "#sector select" ).val();
    $( "a#link" ).prop( "href", "/states/"+provincia+"/cities/"+sector+"/drugs?utf8=✓&q="+search );
  }

  $( "input").change( inputs );
  $( "select" ).change( inputs );
  $( "input").keyup( inputs );
  inputs();

  $('#search').keypress(function (event) {
    if (event.keyCode == 10 || event.keyCode == 13) {
      var submitsearch = function() {
        document.location.href = $( "a#link" ).attr('href');
      };
      $( "a#link" ).click(submitsearch);
      submitsearch();
    }
  });

  var provincia = $( "#provincia select" ).val();
  var sector = $( "#sector select" ).val();
  var search = $( "#search" ).val();
  var urlsearch = "/states/"+provincia+"/cities/"+sector+"/drugs/autocomplete";

  $( "#search" ).autocomplete({
    source: urlsearch,
    minLength: 2
  });
  $('#cities-dp').dropdown(
    'set selected', "#{@city.id}"
  );

  $('#states-dp').dropdown(
    'set selected', "#{@state.id}"
  );

});
