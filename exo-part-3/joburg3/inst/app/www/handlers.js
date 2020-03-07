$( document ).ready(function() {
  Shiny.addCustomMessageHandler('alertuser', function(arg) {
    debugger;
    alert(arg.n + " rows available for " + arg.type);
  })
});
