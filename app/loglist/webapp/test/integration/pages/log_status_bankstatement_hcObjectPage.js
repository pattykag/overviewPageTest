sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'nsloglist.loglist',
            componentId: 'log_status_bankstatement_hcObjectPage',
            entitySet: 'log_status_bankstatement_hc'
        },
        CustomPageDefinitions
    );
});