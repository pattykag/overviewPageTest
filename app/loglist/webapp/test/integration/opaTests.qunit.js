sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'nsloglist/loglist/test/integration/FirstJourney',
		'nsloglist/loglist/test/integration/pages/log_status_bankstatement_hcList',
		'nsloglist/loglist/test/integration/pages/log_status_bankstatement_hcObjectPage'
    ],
    function(JourneyRunner, opaJourney, log_status_bankstatement_hcList, log_status_bankstatement_hcObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('nsloglist/loglist') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThelog_status_bankstatement_hcList: log_status_bankstatement_hcList,
					onThelog_status_bankstatement_hcObjectPage: log_status_bankstatement_hcObjectPage
                }
            },
            opaJourney.run
        );
    }
);