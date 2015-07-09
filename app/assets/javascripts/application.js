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
//= require_tree .
//= require jquery.raty
//= require ratyrate


// create experiment view: tab navigation

$(document).ready(function(){
    $("ul#tabs li").click(function(e){
        if (!$(this).hasClass("active")) {
            var tabNum = $(this).index();
            var nthChild = tabNum+1;
            $("ul#tabs li.active").removeClass("active");
            $(this).addClass("active");
            $("ul#tab li.active").removeClass("active");
            $("ul#tab li:nth-child("+nthChild+")").addClass("active");
        }
    });
});

// create experiment view: add fields dynamically

$(function () {

    if ($('.experiment').length) {
      var material = $('.material').html();

      $('.unorder_numbered-list-materials').on('click', '.add-material-btn', function (e) {
        e.preventDefault();
        e.stopPropagation();

      material = material.replace(/\[[0-9]+\]/g, '[' + $('.unorder_numbered-list-materials li').length + ']')
      .replace(/_[0-9]+_/g, '_' + $('.unorder_numbered-list-materials li').length + '_');

      $('.unorder_numbered-list-materials').append('<li>' + material + '</li>')
 })

 }

 });

$(function () {

    if ($('.experiment').length) {
      var instruction = $('.instruction-fields').html();

      $('.unorder_numbered-list-instructions').on('click', '.add-instruction-btn', function (e) {
        e.preventDefault();
        e.stopPropagation();

      instruction = instruction.replace(/\[[0-9]+\]/g, '[' + $('.unorder_numbered-list-instructions li').length + ']')
      .replace(/_[0-9]+_/g, '_' + $('.unorder_numbered-list-instructions li').length + '_');

      $('.unorder_numbered-list-instructions').append('<li>' + instruction + '</li>')
 })

 }

 });

 // display thumbnail of image when trying to upload

 $(function() {
   $('#pictureInput').on('change', function(event) {
     var files = event.target.files;
     var image = files[0]
     var reader = new FileReader();
     reader.onload = function(file) {
       var img = new Image();
       console.log(file);
       img.src = file.target.result;
       $('#target').html(img);
     }
     reader.readAsDataURL(image);
     console.log(files);
   });
 });
