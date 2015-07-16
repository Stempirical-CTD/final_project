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
//= require jquery-ui

// $('.nav-link').click(function(e){
//     $('.nav-link').css("color", "black");
//     $(this).css("color", "red");
// });

// navigation link - stay active


// create experiment view: add fields dynamically
function dynamicAdder(btnSelector, listSelector) {
    var liSelector = listSelector + ' li';
    if ($('.experiment').length) {
        var material = $(liSelector).last().html();

        $(btnSelector).on('click', function (e) {
            e.preventDefault();
            e.stopPropagation();

            material = material.replace(/\[[0-9]+\]/g, '[' + $(liSelector).length + ']')
                .replace(/_[0-9]+_/g, '_' + $(liSelector).length + '_');

            $(listSelector).append('<li>' + material + '</li>')
        })
    }
}

$(function () {
    dynamicAdder('.add-material-btn', '.unordered-list-materials');
    dynamicAdder('.add-instruction-btn', '.unordered-list-instructions');

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
