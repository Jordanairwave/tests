var site = {
	init: function() {
        //find a representative form
        jQuery('#sales-representative-lookup-form').submit(function(event){
            //prevent default form action
            event.preventDefault();

            //output event to see what data I need.
            //console.log(event);

            //ukPostcodeArray
            var ukPostcodeArray = {'AB': 'north', 'BB': 'north', 'BD': 'north', 'BL': 'north', 'CA': 'north', 'CH': 'north',
            'CW': 'north', 'DD': 'north', 'DE': 'north', 'DG': 'north', 'DH': 'north', 'DL': 'north', 'DN': 'north', 'EH': 'north', 'FK': 'north',
            'G': 'north', 'HD': 'north', 'HG': 'north', 'HU': 'north', 'HX': 'north', 'IV': 'north', 'KA': 'north', 'KW': 'north', 'KY': 'north', 'L': 'north', 'LA': 'north', 'LN': 'north', 'LS': 'north', 'M': 'north', 'ML': 'north', 'NE': 'north', 'NG': 'north', 'OL': 'north', 'PA': 'north', 'PH': 'north', 'PR': 'north', 'TD': 'north', 'S': 'north', 'SK': 'north', 'SR': 'north', 'TS': 'north', 'WA': 'north', 'WF': 'north', 'WN': 'north', 'YO': 'north', 'ZE': 'north', 'AL': 'midlands', 'B': 'midlands', 'BT': 'midlands', 'CB': 'midlands', 'CM': 'midlands', 'CO': 'midlands', 'CV': 'midlands', 'DY': 'midlands', 'IM': 'midlands', 'IP': 'midlands', 'HP': 'midlands', 'LE': 'midlands', 'LL': 'midlands', 'LU': 'midlands', 'MK': 'midlands', 'NN': 'midlands', 'NR': 'midlands', 'OX': 'midlands', 'PE': 'midlands', 'SG': 'midlands', 'ST': 'midlands', 'SY': 'midlands', 'TF': 'midlands', 'WR': 'midlands', 'WS': 'midlands', 'WV': 'midlands', 'BN': 'southEast', 'BR': 'southEast', 'CR': 'southEast', 'CT': 'southEast', 'DA': 'southEast', 'E': 'southEast', 'EC': 'southEast', 'EN': 'southEast', 'GU': 'southEast', 'HA': 'southEast', 'IG': 'southEast', 'IG': 'southEast', 'KT': 'southEast', 'ME': 'southEast', 'N': 'southEast', 'NW': 'southEast', 'PO': 'southEast', 'RG': 'southEast', 'RH': 'southEast', 'RM': 'southEast', 'SE': 'southEast', 'SL': 'southEast', 'SM': 'southEast', 'SS': 'southEast', 'SW': 'southEast', 'TN': 'southEast', 'TW': 'southEast', 'UB': 'southEast', 'W': 'southEast', 'WC': 'southEast', 'BA': 'southWest', 'BH': 'southWest', 'BS': 'southWest', 'CF': 'southWest', 'DT': 'southWest', 'EX': 'southWest', 'GL': 'southWest', 'HR': 'southWest', 'LD': 'southWest', 'NP': 'southWest', 'PL': 'southWest', 'SA': 'southWest', 'SN': 'southWest', 'SO': 'southWest', 'SP': 'southWest', 'TA': 'southWest', 'TQ': 'southWest', 'TR': 'southWest',};

            //get postcode value
            var postCode = event.currentTarget[1].value; 
            
            //postcode to uppercase
            var postCodeUppercase = postCode.toUpperCase();

            //postcode remove all spaces
            var postCodeNoSpace = postCodeUppercase.replace(/ /g,'');

            //postcode array
            var postCodeArray = postCodeNoSpace.split("");

            //postcodeLetter string
            var postcodeLetters = '';

            //postcode number count
            var postcodeNumbersCount = 0;

            //loop through array to get the first letters in till you get to a number
            jQuery.each(postCodeArray, function(index, item) {

                //only run if post count is below 1
                if(postcodeNumbersCount < 1) {
                    //if character is letter add to postcodes letters else if number +1 on number count
                    if(item.match(/[a-z]/i)){
                        postcodeLetters += item;
                    } else {
                        postcodeNumbersCount++;
                    }
                }
            });

            //Get correct region from ukPostcodeArray
            var postCodeRegion = ukPostcodeArray[postcodeLetters];

            //display correct div with details in or display error div.
            if(postCodeRegion != null) {

                //hide all boxes just incase
                jQuery.each(jQuery('#boxes > div'), function(index, item) {
                    if(!jQuery(item).hasClass('hide')) {
                        jQuery(item).addClass('hide');
                    }
                });

                //show correct details
                jQuery('#boxes .' + postCodeRegion).removeClass('hide');

            } else {

                //show error message
                jQuery('#boxes .error').removeClass('hide');
            }

            //console.log(postCodeRegion);
        });
    }
};

$(document).ready(function(){ site.init(); });