$(document).on('turbolinks:load', function() {

  function inputs() {
    var search = $( ".search-drugs" ).val();
    var sector = $( "#city-dropdown" ).val();
    $( "a#link" ).prop( "href", "/locations/"+sector+"/drugs?utf8=✓&q="+search );
  }

  $( "input").change( inputs );
  $( "select" ).change( inputs );
  $( "input").keyup( inputs );
  inputs();

  $('.search-drugs').keypress(function (event) {
    if (event.keyCode == 10 || event.keyCode == 13) {
      var submitsearch = function() {
        document.location.href = $( "a#link" ).attr('href');
      };
      $( "a#link" ).click(submitsearch);
      submitsearch();
    }
  });

  var urlsearch = "/locations/1/drugs/autocomplete";

  $( ".search-drugs" ).autocomplete({
    source: urlsearch,
    minLength: 2,
    select: function(e, ui){
      $('.search-drugs').val(ui.item.value);
      inputs()
    }
  });

  var submit = function() {
    document.location.href = $( "a#link" ).attr('href')
    $( "a#link" ).click( submit );
  };
  
  $(".city-dp").change( submit )

});
