﻿alert("hello008");
function showValue() {
    alert(document.getElementById("txtName").value);
}
(function () {
    var widget, initAddressFinder = function () {
        widget = new AddressFinder.Widget(
            document.getElementById('addrs_1'),
            'ADDRESSFINDER_DEMO_KEY',
            'AU', {
            "address_params": {
                "au_paf": "1",
                "post_box": "0"
            },
            "empty_content": "No addresses were found. This could be a new address, or you may need to check the spelling. Learn more"
        }
        );

        widget.on('address:select', function (fullAddress, metaData) {
            // TODO - You will need to update these ids to match those in your form


            let addressLine1 = metaData.address_line_1;
            let addressLine2 = metaData.address_line_2;

            //   if(metaData.address_line_2) {
            //     addressLine1 = metaData.address_line_2;
            //     addressLine2 = metaData.address_line_1;
            //   }

            document.getElementById('addrs_1').value = addressLine1;
            document.getElementById('addrs_2').value = addressLine2;
            document.getElementById('suburb').value = metaData.locality_name;
            document.getElementById('state').value = metaData.state_territory;
            document.getElementById('postcode').value = metaData.postcode;
        });


    };

    function downloadAddressFinder() {
        var script = document.createElement('script');
        script.src = 'https://api.addressfinder.io/assets/v3/widget.js';
        script.async = true;
        script.onload = initAddressFinder;
        document.body.appendChild(script);
    };

    document.addEventListener('DOMContentLoaded', downloadAddressFinder);
})();
(function () {
    var widget, initAddressFinder = function () {
        widget = new AddressFinder.Widget(
            document.getElementById('suburb'),
            'ADDRESSFINDER_DEMO_KEY',
            'AU', {
            "show_addresses": false,
            "show_locations": true,
            "location_params": {
                "location_types": "locality, state"
            },
            "empty_content": "No addresses were found. This could be a new address, or you may need to check the spelling. Learn more"
        }
        );


        widget.on('location:select', function (fullLocation, metaData) {
            /* TODO - You will need to update these ids to match those in your form and
             * include the location attributes you wish to collect.
             */

            document.getElementById('suburb').value = metaData.locality_name;
            //document.getElementById('state').value = metaData.state_territory;
            document.getElementById('postcode').value = metaData.postcode;

        });

    };

    function downloadAddressFinder() {
        var script = document.createElement('script');
        script.src = 'https://api.addressfinder.io/assets/v3/widget.js';
        script.async = true;
        script.onload = initAddressFinder;
        document.body.appendChild(script);
    };

    document.addEventListener('DOMContentLoaded', downloadAddressFinder);
})();
