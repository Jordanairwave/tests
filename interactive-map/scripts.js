var site = {
    regionID: null,
    regionName: null,
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

        //Map region click function
        $('#svg2 .region').on('click', function() {

            //Get ID of region
            site.regionID = $(this).attr('id');

            console.log(site.regionID);
        });



    }
};

$(document).ready(function(){ site.init(); });