using {cuid} from '@sap/cds/common';

namespace overname;

entity log_status_bankstatement_hc: cuid {
    companyCode    : String(4) @Common.IsUpperCase;
    houseBank      : String(5);
    accountID      : String(5);
    //ID_job         : String;
    status         : String;
    date_processed : Date;
    countryKey     : String(2);
    //time_processed : Time;
}
