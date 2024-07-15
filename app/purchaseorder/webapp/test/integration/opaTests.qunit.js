sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ust/hari/purchaseorder/test/integration/FirstJourney',
		'ust/hari/purchaseorder/test/integration/pages/POsList',
		'ust/hari/purchaseorder/test/integration/pages/POsObjectPage',
		'ust/hari/purchaseorder/test/integration/pages/POItemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, POsList, POsObjectPage, POItemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ust/hari/purchaseorder') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePOsList: POsList,
					onThePOsObjectPage: POsObjectPage,
					onThePOItemsObjectPage: POItemsObjectPage
                }
            },
            opaJourney.run
        );
    }
);