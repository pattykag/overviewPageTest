using {overname as my} from '../db/schema';

service overservice {
    entity log_status_bankstatement_hc as projection on my.log_status_bankstatement_hc;
}
