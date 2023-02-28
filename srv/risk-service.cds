using { sap.ui.riskmanagement as my } from '../db/schema';
using { SupplierService as external} from './external/SupplierService.csn';

@path: 'service/risk'
service RiskService {
  entity Risks @(restrict : [
    {grant: 'CREATE', to: 'RiskManager'}
  ]) as projection on my.Risks;
    annotate Risks with @odata.draft.enabled;
  entity Mitigations as projection on my.Mitigations;
    annotate Mitigations with @odata.draft.enabled;
  entity Suppliers as projection on my.Suppliers;

}