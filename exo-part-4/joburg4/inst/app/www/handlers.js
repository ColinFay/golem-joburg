$( document ).ready(function() {
  Shiny.addCustomMessageHandler('alertuser', function(arg) {
    alert(arg.n + " rows available for " + arg.type);
  })
});
