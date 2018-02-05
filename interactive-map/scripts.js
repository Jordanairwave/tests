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

            //Remove Class clicked from other regions
            $('.region.clicked').removeClass('clicked');

            //Add class clicked to this region
            $(this).addClass('clicked');

            //Get ID of region
            site.regionID = $(this).attr('id');

            switch (site.regionID) {
                case 'path2470':
                case 'path3273':
                case 'path3265':
                case 'path3259':
                case 'path3261':
                case 'path3251':
                case 'path3253':
                case 'path3255':
                case 'path3257':
                case 'path3263':
                case 'path3267':
                case 'path3269':
                case 'path3271':
                case 'path3275':
                case 'path3277':
                case 'path3279':
                case 'path3281':
                case 'path3283':
                case 'path3285':
                case 'path3287':
                case 'path3289':
                case 'path3291':
                case 'path3293':
                case 'path3295':
                case 'path3297':
                case 'path3299':
                case 'path3301':
                case 'path3303':
                    site.regionName = 'Scotland';
                    break;
                case 'path96':
                    site.regionName = 'East Midlands';
                    break;
                case 'path152':
                    site.regionName = 'London';
                    break;
                case 'path164':
                    site.regionName = 'South West';
                    break;
                case 'path6609':
                    site.regionName = 'Northen Ireland';
                    break;
                case 'path2727':
                    site.regionName = 'Isle of Man';
                    break;
                case 'path3499':
                case 'path3501':
                case 'path3503':
                case 'path3505':
                case 'path3507':
                    site.regionName = 'Channel Islands';
                    break;
                case 'path36':
                    site.regionName = 'Yorkshire and the Humber';
                    break;
                case 'path20':
                    site.regionName = 'North East';
                    break;
                case 'path24':
                    site.regionName = 'North West';
                    break;
                case 'path80':
                    site.regionName = 'West Midlands';
                    break;
                case 'path132':
                    site.regionName = 'South East';
                    break;
                case 'path84':
                    site.regionName = 'East of England';
                    break;
                case 'path6137':
                    site.regionName = 'Wales';
                    break;
            }


            //Ajax request to for database script
            $.ajax({
                url: 'find-sales-guy.php',
                type: 'POST',
                data: {region: site.regionName},
                success: function(data){
                    var result = jQuery.parseJSON(data);
                    $('.sales-rep-information ul li span.first-name').text(result.firstName);
                    $('.sales-rep-information ul li span.last-name').text(result.lastName);
                    $('.sales-rep-information ul li span.email').text(result.email);
                    $('.sales-rep-information ul li span.mobile-number').text(result.mobileNumber);
                    $('.sales-rep-information ul li span.profile-pic').text(result.pic);
                    $('.sales-rep-information').show();

                },
                error: function(textStatus, errorThrown){
                    console.log(textStatus);
                    console.log(errorThrown);
                }
            });


        });

        //Post Code form search function
        $('#postCode').submit(function(event){

            //Event prevent defaults
            event.preventDefault();

            //Ajax call to get region from database
            $.ajax({
                url: 'post-code-lookup.php',
                type: 'POST',
                data: $(this).serialize(),
                success: function(data){
                    var result = jQuery.parseJSON(data);
                    $('.sales-rep-information ul li span.first-name').text(result.firstName);
                    $('.sales-rep-information ul li span.last-name').text(result.lastName);
                    $('.sales-rep-information ul li span.email').text(result.email);
                    $('.sales-rep-information ul li span.mobile-number').text(result.mobileNumber);
                    $('.sales-rep-information ul li span.profile-pic').text(result.pic);
                    $('.sales-rep-information').show();

                    //Remove Class clicked from other regions
                    $('.region.clicked').removeClass('clicked');

                    //add clicked class to region on map
                    switch(result.region) {
                        case 'Scotland':
                            $('#path2470, #path3273, #path3265, #path3259, #path3261 ,#path3251, #path3253, #path3255 ,#path3257, #path3263 ,#path3267 ,#path3269, #path3271 ,#path3275, #path3277, #path3279, #path3281, #path3283, #path3285, #path3287, #path3289, #path3291, #path3293, #path3295, #path3297, #path3299, #path3301, #path3303').addClass('clicked');
                            break;
                        case 'East Midlands':
                            $('#path96').addClass('clicked');
                            break;
                        case 'London':
                            $('#path152').addClass('clicked');
                            break;
                        case 'South West':
                            $('#path164').addClass('clicked');
                            break;
                        case 'Northen Ireland':
                            $('#path6609').addClass('clicked');
                            break;
                        case 'Yorkshire and the Humber':
                            $('#path36').addClass('clicked');
                            break;
                        case 'North East':
                            $('#path20').addClass('clicked');
                            break;
                        case 'North West':
                            $('#path24').addClass('clicked');
                            break;
                        case 'West Midlands':
                            $('#path80').addClass('clicked');
                            break;
                        case 'South East':
                            $('#path132').addClass('clicked');
                            break;
                        case 'East of England':
                            $('#path84').addClass('clicked');
                            break;
                        case 'Wales':
                            $('#path6137').addClass(clicked);
                            break;
                    }

                },
                error: function(textStatus, errorThrown){
                    console.log(textStatus);
                    console.log(errorThrown);
                }
            });

        });

    }
};

$(document).ready(function(){ site.init(); });