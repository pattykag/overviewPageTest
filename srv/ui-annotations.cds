using {overservice} from './schema-srv';

annotate overservice.log_status_bankstatement_hc with @(UI : {HeaderInfo #header1 : {
    $Type          : 'UI.HeaderInfoType',
    TypeName       : 'Status',
    TypeNamePlural : 'Statuses',
    Title          : {
        $Type : 'UI.DataField',
        Label : 'Status DB',
        Value : 'status'
    },
    Description: {
        $Type : 'UI.DataField',
        Label : 'Product Description',
        Value : 'companyCode'
    }
}});

// UI.HeaderInfo #header1 : {
//     $Type : 'UI.HeaderInfoType',
//     TypeName : 'Product',
//     TypeNamePlural : 'Products',
//     Title : {
//         $Type : 'UI.DataField',
//         Label : 'Product Name',
//         Value : Name
//     },
//     Description : {
//         $Type : 'UI.DataField',
//         Label : 'Product Description',
//         Value : Description
//     },
//     TypeImageUrl : ImageUrl
// },
// annotate overservice.log_status_bankstatement_hc with @(
//     UI: {
//         Chart: {
//             $Type: 'UI.ChartDefinitionType',
//             ChartType: #Donut,
//             Measures: ['status'],
//             MeasureAttributes: [{
//                 $Type: 'UI.ChartMeasureAttributeType',
//                 Measure: 'status',
//                 Role: #Axis1
//             }],
//             // Dimensions: ['category'],
//             // DimensionAttributes: [{
//             //     $Type: 'UI.ChartDimensionAttributeType',
//             //     Dimension: 'category',
//             //     Role: #Category
//             // }]
//         }
//     }
// );

// annotate overservice.log_status_bankstatement_hc with @(
//     UI: {
//         //SelectionFields: [postingDate, category],
//         LineItem: [
//             {Value: 'companyCode'},
//             {Value: 'houseBank'},
//             {Value: 'accountID'},
//             {Value: 'date_processed'},
//             {Value: 'status'},
//             {Value: 'countryKey'}
//         ],
//     }
// );
