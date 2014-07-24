function getData(){
   var url = $('#requestUrl').val();
   //alert(url);
   $.get( url, function( data ) {
     var j = JSON.stringify( data , null, 4)
     console.log( "data =>" + JSON.stringify(data));
     $("#response" ).html( j );
   });
}

function format(res) {
    //var res = "${requestInstance?.response}";
    var j = JSON.stringify( res , null, 4)
    console.log( "data =>" + JSON.stringify(res, null, 4));
    $("#response" ).html( j );
}
function trial(){
    var arr = ["a", "b", "c"];
    var str = JSON.stringify(arr);
    document.write(str);
    document.write ("<br/>");

    var newArr = JSON.parse(str);

    while (newArr.length > 0) {
        document.write(newArr.pop() + "<br/>");
    }
}