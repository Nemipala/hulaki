function getData(){
   var url = $('#requestUrl').val();
   $.get( url, function( data ) {
     var j = JSON.stringify( data , null, 4)
     console.log( "data =>" + JSON.stringify(data));
     $("#response" ).html( j );
   });
}