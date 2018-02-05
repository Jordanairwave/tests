var site = {
    regionID: null,
    regionName: null,
	init: function() {

        //Map mouse enter functionality
        $('#svg2 .region').on('mouseenter', function() {

            //Add class hover to current region
            $(this).addClass('hover');
        });

        //Map mouse leave functionality
        $('#svg2 .region').on('mouseleave', function() {

            //remove class hover to current region
            $(this).removeClass('hover');
        });

        //Map region click function
        $('#svg2 .region').on('click', function() {

            //Get ID of region
            site.regionID = $(this).attr('id');

            //Remove Class clicked from other regions
            $('.region.clicked').removeClass('clicked');

            //Add class clicked to this region
            $(this).addClass('clicked');

            
        });



    }
};

$(document).ready(function(){ site.init(); });