// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$('document').ready(function() {

  function displayVals() {
    calcUsage();
  }

// variable for  checkboxes
  var $cbs = $('input[name="ch1"]');

  function calcUsage() {
    var total = 0;

    // for each checkbox
    $cbs.each(function() {

      // if this checkbox is checked
      if (this.checked)

      // parse the value and add it to the total
      total = parseInt(total) + parseInt(this.value);
    });

//display message to user based on total
//display in the div named usertotal
    if(total>299){
      $("#usertotal").text(total + ". At risk of illness.");
    }
    else if (total>149){
      $("#usertotal").text(total +". Risk of illness is moderate.");
    }
    else{
      $("#usertotal").text(total +". Only have a slight risk of illness.");
    }
  }

  $("select").change(displayVals);
  displayVals();

  $cbs.click(calcUsage);

});
