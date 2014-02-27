

<div class="content-container unit size3of4 lastUnit">
    <article>
        <h1>$Title</h1>
        <div class="content">
            <div class="left">$form</div>
            <div class="contright">$Content</div>
            </div>

    </article>


</div>
<h2>Map and directions</h2>

<a href="https://maps.google.co.uk/maps?q=23-29+Great+Suffolk+street+SE10UE&daddr=23+Great+Suffolk+St,+London+SE1+0UE&oe=utf-8&client=firefox-a&hnear=0x487604af6138dc17:0xda55e3b2d7c9236e,23+Great+Suffolk+St,+London+SE1+0UE&gl=uk&t=m&z=16">
    <div class="directions-button">Get directions</div>
</a>

<div id="map-canvas" style="width: 100%; min-height: 400px; border:1px solid #999;"/></div>

<script type="text/javascript">

// Google Map
    function initialize() {

        var bnLatLng = new google.maps.LatLng(51.504578,-0.101887);

        var MY_MAPTYPE_ID = 'custom_style';

        var featureOpts = [
            {
                stylers: [
                    {hue: '#E30D32'},
                    {gamma: 1},
                    {weight: 2}
                ]
            },
            {
                elementType: 'labels',
                stylers: [
                    {visibility: 'On'}
                ]
            },
            {
                featureType: 'water',
                stylers: [
                    {color: '#E30D32'},
                    {gamma: 8}
                ]
            }
        ];

        var mapOptions = {
            zoom: 16,
            center: bnLatLng,
            mapTypeControlOptions: {
                mapTypeIds: [google.maps.MapTypeId.ROADMAP, MY_MAPTYPE_ID]
            },
            mapTypeId: MY_MAPTYPE_ID
        };

        var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);

        var styledMapOptions = {
            name: 'Custom Style'
        };

        var marker = new google.maps.Marker({
            position: bnLatLng,
            map: map,
            animation: google.maps.Animation.DROP,
            title: 'Luciepersonaltraining',
            icon: '/themes/simple/images/marker.png'
        });
        
        
        var bnDirections = '<div id="content">' +
                '<div id="siteNotice">' +
                '</div>' +
                '<div id="bodyContent">' +
                '<b>Lucie Personal Training</b><br />' +
                '@ Fitness4less Southwark<br />' +
                '23-29 Great Suffolk street<br />' +
                'London SE1 0UE<br /><br />' +
                '</div>' +
                '</div>';

        var customMapType = new google.maps.StyledMapType(featureOpts, styledMapOptions);
        map.mapTypes.set(MY_MAPTYPE_ID, customMapType);

        var infowindow = new google.maps.InfoWindow({
            content: bnDirections
        });

        google.maps.event.addListener(marker, 'click', function() {
            infowindow.open(map, marker);
        });

        google.maps.event.addDomListener(window, 'resize', function() {
            map.setCenter(bnLatLng);
        });

    }

    google.maps.event.addDomListener(window, 'load', initialize);
</script>