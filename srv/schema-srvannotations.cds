using {overservice} from './schema-srv';


annotate overservice.log_status_bankstatement_hc with {
    companyCode    @title: '{i18n>companyCode}';
    houseBank      @title: '{i18n>houseBank}';
    accountID      @title: '{i18n>accountID}';
    date_processed @title: '{i18n>date_processed}';
    status         @title: '{i18n>status}';
    countryKey     @title: '{i18n>countryKey}';
    count          @title: '{i18n>count}';
    job            @title: '{i18n>job}'
};

annotate overname.log_status_bankstatement_hc with @(UI: {LineItem: [
    {Value: companyCode},
    {Value: houseBank},
    {Value: accountID},
    {Value: date_processed},
    {Value: status},
    {Value: countryKey},
// {
//     $Type : 'UI.DataFieldWithUrl',
//     Value : 'Google',
//     Label : 'Link to:',
//     Url   : 'http://www.google.com'
//}
], });


// URL
// annotate overservice.log_status_bankstatement_hc with @(UI.LineItem #List : [{
//     $Type : 'UI.DataFieldWithUrl',
//     Value : 'Google',
//     Label : 'Link to:',
//     Url   : 'http://www.facebook.com'
// }]);
// URL

// annotate overservice.log_status_bankstatement_hc with @(
//     UI.LineItem : {
//         $value : [
//             {
//                 $Type : 'UI.DataFieldForIntentBasedNavigation',
//                 Label : '{i18n>inboundNavigation}',
//                 SemanticObject : 'FeatureShowcaseChildEntity2',
//                 Action : 'manage',
//                 RequiresContext : true,
//                 Inline : true,
//                 IconUrl : 'sap-icon://cart',
//                 Mapping : [
//                     {
//                         $Type : 'Common.SemanticObjectMappingType',
//                         LocalProperty : companyCode,
//                         SemanticObjectProperty : 'integerProperty',
//                     },
//                 ],
//                 ![@UI.Importance] : #High,
//             }
//         ]
//     }
// );

// Donut Chart
// annotate overservice.log_status_bankstatement_hc with @(UI : {Chart #Donut : {
//     $Type               : 'UI.ChartDefinitionType',
//     ChartType           : #Donut,
//     Description         : 'Donut Chart',
//     Measures            : ['count'],
//     MeasureAttributes   : [{
//         $Type   : 'UI.ChartMeasureAttributeType',
//         Measure : 'count',
//         Role    : #Axis1,
//     }],
//     Dimensions          : ['status'],
//     DimensionAttributes : [{
//         $Type     : 'UI.ChartDimensionAttributeType',
//         Dimension : 'status',
//         Role      : #Category
//     }]
// }});

//manifest -> "identificationAnnotationPath": "com.sap.vocabularies.UI.v1.Identification#BarHeader"
annotate overservice.log_status_bankstatement_hc with @(
    // Line Chart
    UI: {Chart #Line: {
        $Type              : 'UI.ChartDefinitionType',
        ChartType          : #Line,
        Description        : 'Line Chart',
        Measures           : ['count'],
        MeasureAttributes  : [{
            $Type  : 'UI.ChartMeasureAttributeType',
            Measure: 'count',
            Role   : #Axis1
        }],
        Dimensions         : ['job'],
        DimensionAttributes: [{
            $Type    : 'UI.ChartDimensionAttributeType',
            Dimension: 'job',
            Role     : #Category
        }]
    }},
    // Donut Chart
    UI: {Chart #Donut: {
        $Type              : 'UI.ChartDefinitionType',
        ChartType          : #Donut,
        Description        : 'Donut Chart',
        Measures           : ['count'],
        MeasureAttributes  : [{
            $Type  : 'UI.ChartMeasureAttributeType',
            Measure: 'count',
            Role   : #Axis1,
        }],
        Dimensions         : ['status'],
        DimensionAttributes: [{
            $Type    : 'UI.ChartDimensionAttributeType',
            Dimension: 'status',
            Role     : #Category
        }]
    }},
    // Bar Chart
    UI: {Chart #Bar: {
        $Type              : 'UI.ChartDefinitionType',
        ChartType          : #Bar,
        Description        : 'Bar Chart',
        Measures           : ['count'], // must be a number
        MeasureAttributes  : [{
            $Type  : 'UI.ChartMeasureAttributeType',
            Measure: 'count',
            Role   : #Axis1,
        }],
        Dimensions         : ['status'],
        DimensionAttributes: [{
            $Type    : 'UI.ChartDimensionAttributeType',
            Dimension: 'status',
            Role     : #Category
        }]
    }},
    // "identificationAnnotationPath": "com.sap.vocabularies.UI.v1.Identification#BarHeader"
    UI: {Identification #BarHeader: [{
        $Type: 'UI.DataFieldWithUrl',
        Value: 'Google',
        Label: 'Link to:',
        Url  : 'http://www.facebook.com'
    }
    //     {
    //     $Type : 'UI.DataFieldForIntentBasedNavigation',
    //     SemanticObject : 'Action',
    //     Action : 'toappnavsample',
    //     Label : 'SO Navigation (M)'
    // },
    // {
    //     $Type : 'UI.DataField',
    //     Label : 'Company Code',
    //     Value : companyCode
    // }
    ], },
    // "selectionAnnotationPath": "com.sap.vocabularies.UI.v1.SelectionVariant#preventative",
    UI: {PresentationVariant #Bar: {
        $Type    : 'UI.PresentationVariantType',
        SortOrder: [{
            $Type     : 'Common.SortOrderType',
            Descending: false,
            Property  : status
        }]
    }},
    // UI: {LineItem #List: [{
    //     $Type: 'UI.DataFieldWithUrl',
    //     Value: 'Google',
    //     Label: 'Link to:',
    //     Url  : 'http://www.facebook.com'
    // }], }
// "dataPointAnnotationPath": "com.sap.vocabularies.UI.v1.DataPoint#preventative"
// UI: {DataPoint #Bar: {
//     Value : starsValue,
//     TargetValue : 4,
//     Visualization : #Rating,
//     Title : '{i18n>ratingIndicator}',
//     ![@Common.QuickInfo] : 'Tooltip via Common.QuickInfo'
// },}
// "presentationAnnotationPath": "com.sap.vocabularies.UI.v1.PresentationVariant#Bar",
// https://central4659.rssing.com/chan-58414835/article273.html
);


// annotate overservice.log_status_bankstatement_hc with @(UI : {PresentationVariant #Bar : {
//     $Type     : 'UI.PresentationVariantType',
//     SortOrder : [{
//         $Type      : 'Common.SortOrderType',
//         Descending : false,
//         Property   : status
//     }],
// }},
// UI.DataPoint: {
//     $Type: 'UI.DataPointType',

// }
// );

// UI.Identification : [
//     {
//         $Type : 'UI.DataFieldForIntentBasedNavigation',
//         SemanticObject : 'Action',
//         Action : 'toappnavsample',
//         Label : 'SO Navigation (M)',
//         ![@UI.Importance] : #Medium
//     },
//     {
//         $Type : 'UI.DataField',
//         Label : 'Sales Order ID',
//         Value : SalesOrderID
//     }
// ]
