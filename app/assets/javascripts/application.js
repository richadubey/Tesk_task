// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks

//= require jquery
//= require bootstrap-sprockets
//= require js/jquery-3.3.1.min.js
//= require js/jquery-migrate-3.0.1.min.js
//= require js/jquery-ui.js
//= require js/popper.min.js
//= require js/bootstrap.min.js

//= require js/jquery.stellar.min.js

//= require js/bootstrap-datepicker.min.js



//= require_tree .
$(document).on('click','button','.post_like', function(){
	// post_id = this.dataset.postId
	// alert(post_id)
	$(this).next('.comments').toggle('show');
});


