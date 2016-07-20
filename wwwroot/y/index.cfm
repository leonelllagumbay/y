<!DOCTYPE HTML>
<html manifest="">
<head>
	<cfheader name="Access-Control-Allow-Origin" value="*" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <title>iBOSe</title>

	<link rel="shortcut icon" type="image/ico" href="./build/development/iBOSe/classic/resources/images/diginfoicon.ico" />

    <script type="text/javascript">
        var Ext = Ext || {}; // Ext namespace won't be defined yet...

        // This function is called by the Microloader after it has performed basic
        // device detection. The results are provided in the "tags" object. You can
        // use these tags here or even add custom tags. These can be used by platform
        // filters in your manifest or by platformConfig expressions in your app.
        //
        Ext.beforeLoad = function (tags) {
            var s = location.search,  // the query string (ex "?foo=1&bar")
                profile;

            // For testing look for "?classic" or "?modern" in the URL to override
            // device detection default.
            //
            if (s.match(/\bclassic\b/)) {
                profile = 'classic';
            }
            else if (s.match(/\bmodern\b/)) {
                profile = 'modern';
            }
            else {
                profile = tags.desktop ? 'classic' : 'modern';
                //profile = tags.phone ? 'modern' : 'classic';
            }

            Ext.manifest = profile; // this name must match a build profile name

            // This function is called once the manifest is available but before
            // any data is pulled from it.
            //
            //return function (manifest) {
                // peek at / modify the manifest object
            //};
        };
    </script>


    <!-- The line below must be kept intact for Sencha Cmd to build your application -->
    <script id="microloader" data-app="82ae52d2-3406-4a87-9373-1207d964a29d" type="text/javascript" src="bootstrap.js"></script>
	<!-- The following script is an exception coz of the lack of knowledge on bootstrapping this to the above ext js app -->
	<script id="chatmanager" type="text/javascript" src="./IBOSE/extra/chat.js"></script>
	<cfwebsocket
	     name        ="ws"
	     onMessage   ="displayMessage"
		 subscribeto ="chat"
		 onError     ="displayError"
		 onOpen      ="displayOpen"
		 onClose     ="displayClose"
	/>
</head>
<body>
	<div style="display:none;">
    <div id="app-header-content">
        <div id="app-logo">
            <div class="logo-top">&nbsp;</div>
            <div id="logo-body">&nbsp;</div>
            <div class="logo-bottom">&nbsp;</div>
        </div>
        <span id="app-msg" class="x-hidden"></span>
    </div>
    </div>
</body>
</html>
