sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'nsloglist.loglist',
            componentId: 'log_status_bankstatement_hcList',
            entitySet: 'log_status_bankstatement_hc'
        },
        CustomPageDefinitions
    );
});