var site = {
	init: function() {

        //Map mouse enter functionality
        $('#svg2 .region').on('mouseenter', function() {

            //Add class hover to current region
            $(this).attr("class", "region hover");
        });

        //Map mouse leave functionality
        $('#svg2 .region').on('mouseleave', function() {

            //remove class hover to current region
            $(this).attr("class", "region");
        });



    }
};

$(document).ready(function(){ site.init(); });