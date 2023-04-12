sap.ui.define([
    "sap/ui/test/opaQunit"
], function (opaTest) {
    "use strict";

    var Journey = {
        run: function() {
            QUnit.module("First journey");

            opaTest("Start application", function (Given, When, Then) {
                Given.iStartMyApp();

                Then.onThelog_status_bankstatement_hcList.iSeeThisPage();

            });


            opaTest("Navigate to ObjectPage", function (Given, When, Then) {
                // Note: this test will fail if the ListReport page doesn't show any data
                When.onThelog_status_bankstatement_hcList.onFilterBar().iExecuteSearch();
                Then.onThelog_status_bankstatement_hcList.onTable().iCheckRows();

                When.onThelog_status_bankstatement_hcList.onTable().iPressRow(0);
                Then.onThelog_status_bankstatement_hcObjectPage.iSeeThisPage();

            });

            opaTest("Teardown", function (Given, When, Then) { 
                // Cleanup
                Given.iTearDownMyApp();
            });
        }
    }

    return Journey;
});