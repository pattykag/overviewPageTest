using {cuid} from '@sap/cds/common';

namespace overname;

entity log_status_bankstatement_hc: cuid {
    companyCode    : String(4) @Common.IsUpperCase;
    houseBank      : String(5);
    accountID      : String(5);
    ID_job         : String;
    status         : String(15);
    date_processed : Date;
    countryKey     : String(2);
    count          : Int16 default 1;
}

@Aggregation.ApplySupported.PropertyRestrictions: true
view StatusAnalytics as select from log_status_bankstatement_hc {
  key companyCode,
  key houseBank,
  key accountID,
  @Analytics.Dimension: true
  status,
  @Analytics.Measure: true
  @Aggregation.default: #SUM
  count,
};
