class DomainResourceSearch {
  final Map<String, String> _parameters = {};
  DomainResourceSearch by_text(String value) {
    _parameters['_text'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class ResourceSearch {
  final Map<String, String> _parameters = {};
  ResourceSearch by_content(String value) {
    _parameters['_content'] = value;
    return this;
  }

  ResourceSearch by_filter(String value) {
    _parameters['_filter'] = value;
    return this;
  }

  ResourceSearch by_has(String value) {
    _parameters['_has'] = value;
    return this;
  }

  ResourceSearch by_id(String value) {
    _parameters['_id'] = value;
    return this;
  }

  ResourceSearch by_lastUpdated(DateTime value) {
    _parameters['_lastUpdated'] = value.toIso8601String();
    return this;
  }

  ResourceSearch by_list(String value) {
    _parameters['_list'] = value;
    return this;
  }

  ResourceSearch by_query(String value) {
    _parameters['_query'] = value;
    return this;
  }

  ResourceSearch by_security(String value) {
    _parameters['_security'] = value;
    return this;
  }

  ResourceSearch by_tag(String value) {
    _parameters['_tag'] = value;
    return this;
  }

  ResourceSearch by_text(String value) {
    _parameters['_text'] = value;
    return this;
  }

  ResourceSearch by_type(String value) {
    _parameters['_type'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class AccountSearch {
  final Map<String, String> _parameters = {};
  AccountSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  AccountSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  AccountSearch byperiod(DateTime value) {
    _parameters['period'] = value.toIso8601String();
    return this;
  }

  AccountSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  AccountSearch bytype(String value) {
    _parameters['type'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class ActivityDefinitionSearch {
  final Map<String, String> _parameters = {};
  ActivityDefinitionSearch bycontext(String value) {
    _parameters['context'] = value;
    return this;
  }

  ActivityDefinitionSearch bycontext_type(String value) {
    _parameters['context_type'] = value;
    return this;
  }

  ActivityDefinitionSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  ActivityDefinitionSearch bydescription(String value) {
    _parameters['description'] = value;
    return this;
  }

  ActivityDefinitionSearch byeffective(DateTime value) {
    _parameters['effective'] = value.toIso8601String();
    return this;
  }

  ActivityDefinitionSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  ActivityDefinitionSearch byjurisdiction(String value) {
    _parameters['jurisdiction'] = value;
    return this;
  }

  ActivityDefinitionSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  ActivityDefinitionSearch bypublisher(String value) {
    _parameters['publisher'] = value;
    return this;
  }

  ActivityDefinitionSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  ActivityDefinitionSearch bytitle(String value) {
    _parameters['title'] = value;
    return this;
  }

  ActivityDefinitionSearch bytopic(String value) {
    _parameters['topic'] = value;
    return this;
  }

  ActivityDefinitionSearch byversion(String value) {
    _parameters['version'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class AdministrableProductDefinitionSearch {
  final Map<String, String> _parameters = {};
  AdministrableProductDefinitionSearch bydose_form(String value) {
    _parameters['dose_form'] = value;
    return this;
  }

  AdministrableProductDefinitionSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  AdministrableProductDefinitionSearch byingredient(String value) {
    _parameters['ingredient'] = value;
    return this;
  }

  AdministrableProductDefinitionSearch byroute(String value) {
    _parameters['route'] = value;
    return this;
  }

  AdministrableProductDefinitionSearch bytarget_species(String value) {
    _parameters['target_species'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class AdverseEventSearch {
  final Map<String, String> _parameters = {};
  AdverseEventSearch byactuality(String value) {
    _parameters['actuality'] = value;
    return this;
  }

  AdverseEventSearch bycategory(String value) {
    _parameters['category'] = value;
    return this;
  }

  AdverseEventSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  AdverseEventSearch byevent(String value) {
    _parameters['event'] = value;
    return this;
  }

  AdverseEventSearch byseriousness(String value) {
    _parameters['seriousness'] = value;
    return this;
  }

  AdverseEventSearch byseverity(String value) {
    _parameters['severity'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class AllergyIntoleranceSearch {
  final Map<String, String> _parameters = {};
  AllergyIntoleranceSearch bycategory(String value) {
    _parameters['category'] = value;
    return this;
  }

  AllergyIntoleranceSearch byclinical_status(String value) {
    _parameters['clinical_status'] = value;
    return this;
  }

  AllergyIntoleranceSearch bycode(String value) {
    _parameters['code'] = value;
    return this;
  }

  AllergyIntoleranceSearch bycriticality(String value) {
    _parameters['criticality'] = value;
    return this;
  }

  AllergyIntoleranceSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  AllergyIntoleranceSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  AllergyIntoleranceSearch bylast_date(DateTime value) {
    _parameters['last_date'] = value.toIso8601String();
    return this;
  }

  AllergyIntoleranceSearch bymanifestation(String value) {
    _parameters['manifestation'] = value;
    return this;
  }

  AllergyIntoleranceSearch byonset(DateTime value) {
    _parameters['onset'] = value.toIso8601String();
    return this;
  }

  AllergyIntoleranceSearch byroute(String value) {
    _parameters['route'] = value;
    return this;
  }

  AllergyIntoleranceSearch byseverity(String value) {
    _parameters['severity'] = value;
    return this;
  }

  AllergyIntoleranceSearch bytype(String value) {
    _parameters['type'] = value;
    return this;
  }

  AllergyIntoleranceSearch byverification_status(String value) {
    _parameters['verification_status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class ConditionSearch {
  final Map<String, String> _parameters = {};
  ConditionSearch bycode(String value) {
    _parameters['code'] = value;
    return this;
  }

  ConditionSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  ConditionSearch byabatement_date(DateTime value) {
    _parameters['abatement_date'] = value.toIso8601String();
    return this;
  }

  ConditionSearch byabatement_string(String value) {
    _parameters['abatement_string'] = value;
    return this;
  }

  ConditionSearch bybody_site(String value) {
    _parameters['body_site'] = value;
    return this;
  }

  ConditionSearch bycategory(String value) {
    _parameters['category'] = value;
    return this;
  }

  ConditionSearch byclinical_status(String value) {
    _parameters['clinical_status'] = value;
    return this;
  }

  ConditionSearch byevidence(String value) {
    _parameters['evidence'] = value;
    return this;
  }

  ConditionSearch byonset_date(DateTime value) {
    _parameters['onset_date'] = value.toIso8601String();
    return this;
  }

  ConditionSearch byonset_info(String value) {
    _parameters['onset_info'] = value;
    return this;
  }

  ConditionSearch byrecorded_date(DateTime value) {
    _parameters['recorded_date'] = value.toIso8601String();
    return this;
  }

  ConditionSearch byseverity(String value) {
    _parameters['severity'] = value;
    return this;
  }

  ConditionSearch bystage(String value) {
    _parameters['stage'] = value;
    return this;
  }

  ConditionSearch byverification_status(String value) {
    _parameters['verification_status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class DeviceRequestSearch {
  final Map<String, String> _parameters = {};
  DeviceRequestSearch bycode(String value) {
    _parameters['code'] = value;
    return this;
  }

  DeviceRequestSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  DeviceRequestSearch byauthored_on(DateTime value) {
    _parameters['authored_on'] = value.toIso8601String();
    return this;
  }

  DeviceRequestSearch byevent_date(DateTime value) {
    _parameters['event_date'] = value.toIso8601String();
    return this;
  }

  DeviceRequestSearch bygroup_identifier(String value) {
    _parameters['group_identifier'] = value;
    return this;
  }

  DeviceRequestSearch byintent(String value) {
    _parameters['intent'] = value;
    return this;
  }

  DeviceRequestSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class DiagnosticReportSearch {
  final Map<String, String> _parameters = {};
  DiagnosticReportSearch bycode(String value) {
    _parameters['code'] = value;
    return this;
  }

  DiagnosticReportSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  DiagnosticReportSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  DiagnosticReportSearch bycategory(String value) {
    _parameters['category'] = value;
    return this;
  }

  DiagnosticReportSearch byconclusion(String value) {
    _parameters['conclusion'] = value;
    return this;
  }

  DiagnosticReportSearch byissued(DateTime value) {
    _parameters['issued'] = value.toIso8601String();
    return this;
  }

  DiagnosticReportSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class FamilyMemberHistorySearch {
  final Map<String, String> _parameters = {};
  FamilyMemberHistorySearch bycode(String value) {
    _parameters['code'] = value;
    return this;
  }

  FamilyMemberHistorySearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  FamilyMemberHistorySearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  FamilyMemberHistorySearch byrelationship(String value) {
    _parameters['relationship'] = value;
    return this;
  }

  FamilyMemberHistorySearch bysex(String value) {
    _parameters['sex'] = value;
    return this;
  }

  FamilyMemberHistorySearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class ListSearch {
  final Map<String, String> _parameters = {};
  ListSearch bycode(String value) {
    _parameters['code'] = value;
    return this;
  }

  ListSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  ListSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  ListSearch byempty_reason(String value) {
    _parameters['empty_reason'] = value;
    return this;
  }

  ListSearch bynotes(String value) {
    _parameters['notes'] = value;
    return this;
  }

  ListSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  ListSearch bytitle(String value) {
    _parameters['title'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class MedicationSearch {
  final Map<String, String> _parameters = {};
  MedicationSearch bycode(String value) {
    _parameters['code'] = value;
    return this;
  }

  MedicationSearch byexpiration_date(DateTime value) {
    _parameters['expiration_date'] = value.toIso8601String();
    return this;
  }

  MedicationSearch byform(String value) {
    _parameters['form'] = value;
    return this;
  }

  MedicationSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  MedicationSearch byingredient_code(String value) {
    _parameters['ingredient_code'] = value;
    return this;
  }

  MedicationSearch bylot_number(String value) {
    _parameters['lot_number'] = value;
    return this;
  }

  MedicationSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class MedicationAdministrationSearch {
  final Map<String, String> _parameters = {};
  MedicationAdministrationSearch bycode(String value) {
    _parameters['code'] = value;
    return this;
  }

  MedicationAdministrationSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  MedicationAdministrationSearch byeffective_time(DateTime value) {
    _parameters['effective_time'] = value.toIso8601String();
    return this;
  }

  MedicationAdministrationSearch byreason_given(String value) {
    _parameters['reason_given'] = value;
    return this;
  }

  MedicationAdministrationSearch byreason_not_given(String value) {
    _parameters['reason_not_given'] = value;
    return this;
  }

  MedicationAdministrationSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class MedicationDispenseSearch {
  final Map<String, String> _parameters = {};
  MedicationDispenseSearch bycode(String value) {
    _parameters['code'] = value;
    return this;
  }

  MedicationDispenseSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  MedicationDispenseSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  MedicationDispenseSearch bytype(String value) {
    _parameters['type'] = value;
    return this;
  }

  MedicationDispenseSearch bywhenhandedover(DateTime value) {
    _parameters['whenhandedover'] = value.toIso8601String();
    return this;
  }

  MedicationDispenseSearch bywhenprepared(DateTime value) {
    _parameters['whenprepared'] = value.toIso8601String();
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class MedicationRequestSearch {
  final Map<String, String> _parameters = {};
  MedicationRequestSearch bycode(String value) {
    _parameters['code'] = value;
    return this;
  }

  MedicationRequestSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  MedicationRequestSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  MedicationRequestSearch byauthoredon(DateTime value) {
    _parameters['authoredon'] = value.toIso8601String();
    return this;
  }

  MedicationRequestSearch bycategory(String value) {
    _parameters['category'] = value;
    return this;
  }

  MedicationRequestSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  MedicationRequestSearch byintended_performertype(String value) {
    _parameters['intended_performertype'] = value;
    return this;
  }

  MedicationRequestSearch byintent(String value) {
    _parameters['intent'] = value;
    return this;
  }

  MedicationRequestSearch bypriority(String value) {
    _parameters['priority'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class MedicationStatementSearch {
  final Map<String, String> _parameters = {};
  MedicationStatementSearch bycode(String value) {
    _parameters['code'] = value;
    return this;
  }

  MedicationStatementSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  MedicationStatementSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  MedicationStatementSearch bycategory(String value) {
    _parameters['category'] = value;
    return this;
  }

  MedicationStatementSearch byeffective(DateTime value) {
    _parameters['effective'] = value.toIso8601String();
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class ObservationSearch {
  final Map<String, String> _parameters = {};
  ObservationSearch bycode(String value) {
    _parameters['code'] = value;
    return this;
  }

  ObservationSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  ObservationSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  ObservationSearch bycategory(String value) {
    _parameters['category'] = value;
    return this;
  }

  ObservationSearch bycombo_code(String value) {
    _parameters['combo_code'] = value;
    return this;
  }

  ObservationSearch bycombo_data_absent_reason(String value) {
    _parameters['combo_data_absent_reason'] = value;
    return this;
  }

  ObservationSearch bycombo_value_concept(String value) {
    _parameters['combo_value_concept'] = value;
    return this;
  }

  ObservationSearch bycomponent_code(String value) {
    _parameters['component_code'] = value;
    return this;
  }

  ObservationSearch bycomponent_data_absent_reason(String value) {
    _parameters['component_data_absent_reason'] = value;
    return this;
  }

  ObservationSearch bycomponent_value_concept(String value) {
    _parameters['component_value_concept'] = value;
    return this;
  }

  ObservationSearch bydata_absent_reason(String value) {
    _parameters['data_absent_reason'] = value;
    return this;
  }

  ObservationSearch bymethod(String value) {
    _parameters['method'] = value;
    return this;
  }

  ObservationSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  ObservationSearch byvalue_concept(String value) {
    _parameters['value_concept'] = value;
    return this;
  }

  ObservationSearch byvalue_date(DateTime value) {
    _parameters['value_date'] = value.toIso8601String();
    return this;
  }

  ObservationSearch byvalue_string(String value) {
    _parameters['value_string'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class ProcedureSearch {
  final Map<String, String> _parameters = {};
  ProcedureSearch bycode(String value) {
    _parameters['code'] = value;
    return this;
  }

  ProcedureSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  ProcedureSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  ProcedureSearch bycategory(String value) {
    _parameters['category'] = value;
    return this;
  }

  ProcedureSearch byreason_code(String value) {
    _parameters['reason_code'] = value;
    return this;
  }

  ProcedureSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class ServiceRequestSearch {
  final Map<String, String> _parameters = {};
  ServiceRequestSearch bycode(String value) {
    _parameters['code'] = value;
    return this;
  }

  ServiceRequestSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  ServiceRequestSearch byauthored(DateTime value) {
    _parameters['authored'] = value.toIso8601String();
    return this;
  }

  ServiceRequestSearch bybody_site(String value) {
    _parameters['body_site'] = value;
    return this;
  }

  ServiceRequestSearch bycategory(String value) {
    _parameters['category'] = value;
    return this;
  }

  ServiceRequestSearch byintent(String value) {
    _parameters['intent'] = value;
    return this;
  }

  ServiceRequestSearch byoccurrence(DateTime value) {
    _parameters['occurrence'] = value.toIso8601String();
    return this;
  }

  ServiceRequestSearch byperformer_type(String value) {
    _parameters['performer_type'] = value;
    return this;
  }

  ServiceRequestSearch bypriority(String value) {
    _parameters['priority'] = value;
    return this;
  }

  ServiceRequestSearch byrequisition(String value) {
    _parameters['requisition'] = value;
    return this;
  }

  ServiceRequestSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class CarePlanSearch {
  final Map<String, String> _parameters = {};
  CarePlanSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  CarePlanSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  CarePlanSearch byactivity_code(String value) {
    _parameters['activity_code'] = value;
    return this;
  }

  CarePlanSearch byactivity_date(DateTime value) {
    _parameters['activity_date'] = value.toIso8601String();
    return this;
  }

  CarePlanSearch bycategory(String value) {
    _parameters['category'] = value;
    return this;
  }

  CarePlanSearch byintent(String value) {
    _parameters['intent'] = value;
    return this;
  }

  CarePlanSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class CareTeamSearch {
  final Map<String, String> _parameters = {};
  CareTeamSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  CareTeamSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  CareTeamSearch bycategory(String value) {
    _parameters['category'] = value;
    return this;
  }

  CareTeamSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class ClinicalImpressionSearch {
  final Map<String, String> _parameters = {};
  ClinicalImpressionSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  ClinicalImpressionSearch byfinding_code(String value) {
    _parameters['finding_code'] = value;
    return this;
  }

  ClinicalImpressionSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  ClinicalImpressionSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class CompositionSearch {
  final Map<String, String> _parameters = {};
  CompositionSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  CompositionSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  CompositionSearch bytype(String value) {
    _parameters['type'] = value;
    return this;
  }

  CompositionSearch bycategory(String value) {
    _parameters['category'] = value;
    return this;
  }

  CompositionSearch byconfidentiality(String value) {
    _parameters['confidentiality'] = value;
    return this;
  }

  CompositionSearch bycontext(String value) {
    _parameters['context'] = value;
    return this;
  }

  CompositionSearch byperiod(DateTime value) {
    _parameters['period'] = value.toIso8601String();
    return this;
  }

  CompositionSearch byrelated_id(String value) {
    _parameters['related_id'] = value;
    return this;
  }

  CompositionSearch bysection(String value) {
    _parameters['section'] = value;
    return this;
  }

  CompositionSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  CompositionSearch bytitle(String value) {
    _parameters['title'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class ConsentSearch {
  final Map<String, String> _parameters = {};
  ConsentSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  ConsentSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  ConsentSearch byaction(String value) {
    _parameters['action'] = value;
    return this;
  }

  ConsentSearch bycategory(String value) {
    _parameters['category'] = value;
    return this;
  }

  ConsentSearch byperiod(DateTime value) {
    _parameters['period'] = value.toIso8601String();
    return this;
  }

  ConsentSearch bypurpose(String value) {
    _parameters['purpose'] = value;
    return this;
  }

  ConsentSearch byscope(String value) {
    _parameters['scope'] = value;
    return this;
  }

  ConsentSearch bysecurity_label(String value) {
    _parameters['security_label'] = value;
    return this;
  }

  ConsentSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class EncounterSearch {
  final Map<String, String> _parameters = {};
  EncounterSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  EncounterSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  EncounterSearch bytype(String value) {
    _parameters['type'] = value;
    return this;
  }

  EncounterSearch byclass(String value) {
    _parameters['class'] = value;
    return this;
  }

  EncounterSearch bylocation_period(DateTime value) {
    _parameters['location_period'] = value.toIso8601String();
    return this;
  }

  EncounterSearch byparticipant_type(String value) {
    _parameters['participant_type'] = value;
    return this;
  }

  EncounterSearch byreason_code(String value) {
    _parameters['reason_code'] = value;
    return this;
  }

  EncounterSearch byspecial_arrangement(String value) {
    _parameters['special_arrangement'] = value;
    return this;
  }

  EncounterSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class EpisodeOfCareSearch {
  final Map<String, String> _parameters = {};
  EpisodeOfCareSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  EpisodeOfCareSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  EpisodeOfCareSearch bytype(String value) {
    _parameters['type'] = value;
    return this;
  }

  EpisodeOfCareSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class FlagSearch {
  final Map<String, String> _parameters = {};
  FlagSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  FlagSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class ImmunizationSearch {
  final Map<String, String> _parameters = {};
  ImmunizationSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  ImmunizationSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  ImmunizationSearch bylot_number(String value) {
    _parameters['lot_number'] = value;
    return this;
  }

  ImmunizationSearch byreaction_date(DateTime value) {
    _parameters['reaction_date'] = value.toIso8601String();
    return this;
  }

  ImmunizationSearch byreason_code(String value) {
    _parameters['reason_code'] = value;
    return this;
  }

  ImmunizationSearch byseries(String value) {
    _parameters['series'] = value;
    return this;
  }

  ImmunizationSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  ImmunizationSearch bystatus_reason(String value) {
    _parameters['status_reason'] = value;
    return this;
  }

  ImmunizationSearch bytarget_disease(String value) {
    _parameters['target_disease'] = value;
    return this;
  }

  ImmunizationSearch byvaccine_code(String value) {
    _parameters['vaccine_code'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class RiskAssessmentSearch {
  final Map<String, String> _parameters = {};
  RiskAssessmentSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  RiskAssessmentSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  RiskAssessmentSearch bymethod(String value) {
    _parameters['method'] = value;
    return this;
  }

  RiskAssessmentSearch byprobability(num value) {
    _parameters['probability'] = value.toString();
    return this;
  }

  RiskAssessmentSearch byrisk(String value) {
    _parameters['risk'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class SupplyRequestSearch {
  final Map<String, String> _parameters = {};
  SupplyRequestSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  SupplyRequestSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  SupplyRequestSearch bycategory(String value) {
    _parameters['category'] = value;
    return this;
  }

  SupplyRequestSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class DetectedIssueSearch {
  final Map<String, String> _parameters = {};
  DetectedIssueSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  DetectedIssueSearch bycode(String value) {
    _parameters['code'] = value;
    return this;
  }

  DetectedIssueSearch byidentified(DateTime value) {
    _parameters['identified'] = value.toIso8601String();
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class DocumentManifestSearch {
  final Map<String, String> _parameters = {};
  DocumentManifestSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  DocumentManifestSearch bytype(String value) {
    _parameters['type'] = value;
    return this;
  }

  DocumentManifestSearch bycreated(DateTime value) {
    _parameters['created'] = value.toIso8601String();
    return this;
  }

  DocumentManifestSearch bydescription(String value) {
    _parameters['description'] = value;
    return this;
  }

  DocumentManifestSearch byrelated_id(String value) {
    _parameters['related_id'] = value;
    return this;
  }

  DocumentManifestSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class DocumentReferenceSearch {
  final Map<String, String> _parameters = {};
  DocumentReferenceSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  DocumentReferenceSearch bytype(String value) {
    _parameters['type'] = value;
    return this;
  }

  DocumentReferenceSearch bycategory(String value) {
    _parameters['category'] = value;
    return this;
  }

  DocumentReferenceSearch bycontenttype(String value) {
    _parameters['contenttype'] = value;
    return this;
  }

  DocumentReferenceSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  DocumentReferenceSearch bydescription(String value) {
    _parameters['description'] = value;
    return this;
  }

  DocumentReferenceSearch byevent(String value) {
    _parameters['event'] = value;
    return this;
  }

  DocumentReferenceSearch byfacility(String value) {
    _parameters['facility'] = value;
    return this;
  }

  DocumentReferenceSearch byformat(String value) {
    _parameters['format'] = value;
    return this;
  }

  DocumentReferenceSearch bylanguage(String value) {
    _parameters['language'] = value;
    return this;
  }

  DocumentReferenceSearch byperiod(DateTime value) {
    _parameters['period'] = value.toIso8601String();
    return this;
  }

  DocumentReferenceSearch byrelation(String value) {
    _parameters['relation'] = value;
    return this;
  }

  DocumentReferenceSearch bysecurity_label(String value) {
    _parameters['security_label'] = value;
    return this;
  }

  DocumentReferenceSearch bysetting(String value) {
    _parameters['setting'] = value;
    return this;
  }

  DocumentReferenceSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class GoalSearch {
  final Map<String, String> _parameters = {};
  GoalSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  GoalSearch byachievement_status(String value) {
    _parameters['achievement_status'] = value;
    return this;
  }

  GoalSearch bycategory(String value) {
    _parameters['category'] = value;
    return this;
  }

  GoalSearch bylifecycle_status(String value) {
    _parameters['lifecycle_status'] = value;
    return this;
  }

  GoalSearch bystart_date(DateTime value) {
    _parameters['start_date'] = value.toIso8601String();
    return this;
  }

  GoalSearch bytarget_date(DateTime value) {
    _parameters['target_date'] = value.toIso8601String();
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class ImagingStudySearch {
  final Map<String, String> _parameters = {};
  ImagingStudySearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  ImagingStudySearch bybodysite(String value) {
    _parameters['bodysite'] = value;
    return this;
  }

  ImagingStudySearch bydicom_class(String value) {
    _parameters['dicom_class'] = value;
    return this;
  }

  ImagingStudySearch byinstance(String value) {
    _parameters['instance'] = value;
    return this;
  }

  ImagingStudySearch bymodality(String value) {
    _parameters['modality'] = value;
    return this;
  }

  ImagingStudySearch byreason(String value) {
    _parameters['reason'] = value;
    return this;
  }

  ImagingStudySearch byseries(String value) {
    _parameters['series'] = value;
    return this;
  }

  ImagingStudySearch bystarted(DateTime value) {
    _parameters['started'] = value.toIso8601String();
    return this;
  }

  ImagingStudySearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class NutritionOrderSearch {
  final Map<String, String> _parameters = {};
  NutritionOrderSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  NutritionOrderSearch byadditive(String value) {
    _parameters['additive'] = value;
    return this;
  }

  NutritionOrderSearch bydatetime(DateTime value) {
    _parameters['datetime'] = value.toIso8601String();
    return this;
  }

  NutritionOrderSearch byformula(String value) {
    _parameters['formula'] = value;
    return this;
  }

  NutritionOrderSearch byoraldiet(String value) {
    _parameters['oraldiet'] = value;
    return this;
  }

  NutritionOrderSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  NutritionOrderSearch bysupplement(String value) {
    _parameters['supplement'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class SupplyDeliverySearch {
  final Map<String, String> _parameters = {};
  SupplyDeliverySearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  SupplyDeliverySearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class VisionPrescriptionSearch {
  final Map<String, String> _parameters = {};
  VisionPrescriptionSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  VisionPrescriptionSearch bydatewritten(DateTime value) {
    _parameters['datewritten'] = value.toIso8601String();
    return this;
  }

  VisionPrescriptionSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class DeviceUseStatementSearch {
  final Map<String, String> _parameters = {};
  DeviceUseStatementSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class AppointmentSearch {
  final Map<String, String> _parameters = {};
  AppointmentSearch byappointment_type(String value) {
    _parameters['appointment_type'] = value;
    return this;
  }

  AppointmentSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  AppointmentSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  AppointmentSearch bypart_status(String value) {
    _parameters['part_status'] = value;
    return this;
  }

  AppointmentSearch byreason_code(String value) {
    _parameters['reason_code'] = value;
    return this;
  }

  AppointmentSearch byservice_category(String value) {
    _parameters['service_category'] = value;
    return this;
  }

  AppointmentSearch byservice_type(String value) {
    _parameters['service_type'] = value;
    return this;
  }

  AppointmentSearch byspecialty(String value) {
    _parameters['specialty'] = value;
    return this;
  }

  AppointmentSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class AppointmentResponseSearch {
  final Map<String, String> _parameters = {};
  AppointmentResponseSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  AppointmentResponseSearch bypart_status(String value) {
    _parameters['part_status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class AuditEventSearch {
  final Map<String, String> _parameters = {};
  AuditEventSearch byaction(String value) {
    _parameters['action'] = value;
    return this;
  }

  AuditEventSearch byaddress(String value) {
    _parameters['address'] = value;
    return this;
  }

  AuditEventSearch byagent_name(String value) {
    _parameters['agent_name'] = value;
    return this;
  }

  AuditEventSearch byagent_role(String value) {
    _parameters['agent_role'] = value;
    return this;
  }

  AuditEventSearch byaltid(String value) {
    _parameters['altid'] = value;
    return this;
  }

  AuditEventSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  AuditEventSearch byentity_name(String value) {
    _parameters['entity_name'] = value;
    return this;
  }

  AuditEventSearch byentity_role(String value) {
    _parameters['entity_role'] = value;
    return this;
  }

  AuditEventSearch byentity_type(String value) {
    _parameters['entity_type'] = value;
    return this;
  }

  AuditEventSearch byoutcome(String value) {
    _parameters['outcome'] = value;
    return this;
  }

  AuditEventSearch bysite(String value) {
    _parameters['site'] = value;
    return this;
  }

  AuditEventSearch bysubtype(String value) {
    _parameters['subtype'] = value;
    return this;
  }

  AuditEventSearch bytype(String value) {
    _parameters['type'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class BasicSearch {
  final Map<String, String> _parameters = {};
  BasicSearch bycode(String value) {
    _parameters['code'] = value;
    return this;
  }

  BasicSearch bycreated(DateTime value) {
    _parameters['created'] = value.toIso8601String();
    return this;
  }

  BasicSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class BodyStructureSearch {
  final Map<String, String> _parameters = {};
  BodyStructureSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  BodyStructureSearch bylocation(String value) {
    _parameters['location'] = value;
    return this;
  }

  BodyStructureSearch bymorphology(String value) {
    _parameters['morphology'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class BundleSearch {
  final Map<String, String> _parameters = {};
  BundleSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  BundleSearch bytimestamp(DateTime value) {
    _parameters['timestamp'] = value.toIso8601String();
    return this;
  }

  BundleSearch bytype(String value) {
    _parameters['type'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class CapabilityStatementSearch {
  final Map<String, String> _parameters = {};
  CapabilityStatementSearch bycontext(String value) {
    _parameters['context'] = value;
    return this;
  }

  CapabilityStatementSearch bycontext_type(String value) {
    _parameters['context_type'] = value;
    return this;
  }

  CapabilityStatementSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  CapabilityStatementSearch bydescription(String value) {
    _parameters['description'] = value;
    return this;
  }

  CapabilityStatementSearch byfhirversion(String value) {
    _parameters['fhirversion'] = value;
    return this;
  }

  CapabilityStatementSearch byformat(String value) {
    _parameters['format'] = value;
    return this;
  }

  CapabilityStatementSearch byjurisdiction(String value) {
    _parameters['jurisdiction'] = value;
    return this;
  }

  CapabilityStatementSearch bymode(String value) {
    _parameters['mode'] = value;
    return this;
  }

  CapabilityStatementSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  CapabilityStatementSearch bypublisher(String value) {
    _parameters['publisher'] = value;
    return this;
  }

  CapabilityStatementSearch byresource(String value) {
    _parameters['resource'] = value;
    return this;
  }

  CapabilityStatementSearch bysecurity_service(String value) {
    _parameters['security_service'] = value;
    return this;
  }

  CapabilityStatementSearch bysoftware(String value) {
    _parameters['software'] = value;
    return this;
  }

  CapabilityStatementSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  CapabilityStatementSearch bytitle(String value) {
    _parameters['title'] = value;
    return this;
  }

  CapabilityStatementSearch byversion(String value) {
    _parameters['version'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class CodeSystemSearch {
  final Map<String, String> _parameters = {};
  CodeSystemSearch bycontext(String value) {
    _parameters['context'] = value;
    return this;
  }

  CodeSystemSearch bycontext_type(String value) {
    _parameters['context_type'] = value;
    return this;
  }

  CodeSystemSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  CodeSystemSearch bydescription(String value) {
    _parameters['description'] = value;
    return this;
  }

  CodeSystemSearch byjurisdiction(String value) {
    _parameters['jurisdiction'] = value;
    return this;
  }

  CodeSystemSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  CodeSystemSearch bypublisher(String value) {
    _parameters['publisher'] = value;
    return this;
  }

  CodeSystemSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  CodeSystemSearch bytitle(String value) {
    _parameters['title'] = value;
    return this;
  }

  CodeSystemSearch byversion(String value) {
    _parameters['version'] = value;
    return this;
  }

  CodeSystemSearch bycode(String value) {
    _parameters['code'] = value;
    return this;
  }

  CodeSystemSearch bycontent_mode(String value) {
    _parameters['content_mode'] = value;
    return this;
  }

  CodeSystemSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  CodeSystemSearch bylanguage(String value) {
    _parameters['language'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class CompartmentDefinitionSearch {
  final Map<String, String> _parameters = {};
  CompartmentDefinitionSearch bycontext(String value) {
    _parameters['context'] = value;
    return this;
  }

  CompartmentDefinitionSearch bycontext_type(String value) {
    _parameters['context_type'] = value;
    return this;
  }

  CompartmentDefinitionSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  CompartmentDefinitionSearch bydescription(String value) {
    _parameters['description'] = value;
    return this;
  }

  CompartmentDefinitionSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  CompartmentDefinitionSearch bypublisher(String value) {
    _parameters['publisher'] = value;
    return this;
  }

  CompartmentDefinitionSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  CompartmentDefinitionSearch byversion(String value) {
    _parameters['version'] = value;
    return this;
  }

  CompartmentDefinitionSearch bycode(String value) {
    _parameters['code'] = value;
    return this;
  }

  CompartmentDefinitionSearch byresource(String value) {
    _parameters['resource'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class ConceptMapSearch {
  final Map<String, String> _parameters = {};
  ConceptMapSearch bycontext(String value) {
    _parameters['context'] = value;
    return this;
  }

  ConceptMapSearch bycontext_type(String value) {
    _parameters['context_type'] = value;
    return this;
  }

  ConceptMapSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  ConceptMapSearch bydescription(String value) {
    _parameters['description'] = value;
    return this;
  }

  ConceptMapSearch byjurisdiction(String value) {
    _parameters['jurisdiction'] = value;
    return this;
  }

  ConceptMapSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  ConceptMapSearch bypublisher(String value) {
    _parameters['publisher'] = value;
    return this;
  }

  ConceptMapSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  ConceptMapSearch bytitle(String value) {
    _parameters['title'] = value;
    return this;
  }

  ConceptMapSearch byversion(String value) {
    _parameters['version'] = value;
    return this;
  }

  ConceptMapSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  ConceptMapSearch bysource_code(String value) {
    _parameters['source_code'] = value;
    return this;
  }

  ConceptMapSearch bytarget_code(String value) {
    _parameters['target_code'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class GraphDefinitionSearch {
  final Map<String, String> _parameters = {};
  GraphDefinitionSearch bycontext(String value) {
    _parameters['context'] = value;
    return this;
  }

  GraphDefinitionSearch bycontext_type(String value) {
    _parameters['context_type'] = value;
    return this;
  }

  GraphDefinitionSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  GraphDefinitionSearch bydescription(String value) {
    _parameters['description'] = value;
    return this;
  }

  GraphDefinitionSearch byjurisdiction(String value) {
    _parameters['jurisdiction'] = value;
    return this;
  }

  GraphDefinitionSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  GraphDefinitionSearch bypublisher(String value) {
    _parameters['publisher'] = value;
    return this;
  }

  GraphDefinitionSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  GraphDefinitionSearch byversion(String value) {
    _parameters['version'] = value;
    return this;
  }

  GraphDefinitionSearch bystart(String value) {
    _parameters['start'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class ImplementationGuideSearch {
  final Map<String, String> _parameters = {};
  ImplementationGuideSearch bycontext(String value) {
    _parameters['context'] = value;
    return this;
  }

  ImplementationGuideSearch bycontext_type(String value) {
    _parameters['context_type'] = value;
    return this;
  }

  ImplementationGuideSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  ImplementationGuideSearch bydescription(String value) {
    _parameters['description'] = value;
    return this;
  }

  ImplementationGuideSearch byjurisdiction(String value) {
    _parameters['jurisdiction'] = value;
    return this;
  }

  ImplementationGuideSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  ImplementationGuideSearch bypublisher(String value) {
    _parameters['publisher'] = value;
    return this;
  }

  ImplementationGuideSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  ImplementationGuideSearch bytitle(String value) {
    _parameters['title'] = value;
    return this;
  }

  ImplementationGuideSearch byversion(String value) {
    _parameters['version'] = value;
    return this;
  }

  ImplementationGuideSearch byexperimental(String value) {
    _parameters['experimental'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class MessageDefinitionSearch {
  final Map<String, String> _parameters = {};
  MessageDefinitionSearch bycontext(String value) {
    _parameters['context'] = value;
    return this;
  }

  MessageDefinitionSearch bycontext_type(String value) {
    _parameters['context_type'] = value;
    return this;
  }

  MessageDefinitionSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  MessageDefinitionSearch bydescription(String value) {
    _parameters['description'] = value;
    return this;
  }

  MessageDefinitionSearch byjurisdiction(String value) {
    _parameters['jurisdiction'] = value;
    return this;
  }

  MessageDefinitionSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  MessageDefinitionSearch bypublisher(String value) {
    _parameters['publisher'] = value;
    return this;
  }

  MessageDefinitionSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  MessageDefinitionSearch bytitle(String value) {
    _parameters['title'] = value;
    return this;
  }

  MessageDefinitionSearch byversion(String value) {
    _parameters['version'] = value;
    return this;
  }

  MessageDefinitionSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  MessageDefinitionSearch bycategory(String value) {
    _parameters['category'] = value;
    return this;
  }

  MessageDefinitionSearch byevent(String value) {
    _parameters['event'] = value;
    return this;
  }

  MessageDefinitionSearch byfocus(String value) {
    _parameters['focus'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class NamingSystemSearch {
  final Map<String, String> _parameters = {};
  NamingSystemSearch bycontext(String value) {
    _parameters['context'] = value;
    return this;
  }

  NamingSystemSearch bycontext_type(String value) {
    _parameters['context_type'] = value;
    return this;
  }

  NamingSystemSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  NamingSystemSearch bydescription(String value) {
    _parameters['description'] = value;
    return this;
  }

  NamingSystemSearch byjurisdiction(String value) {
    _parameters['jurisdiction'] = value;
    return this;
  }

  NamingSystemSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  NamingSystemSearch bypublisher(String value) {
    _parameters['publisher'] = value;
    return this;
  }

  NamingSystemSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  NamingSystemSearch bycontact(String value) {
    _parameters['contact'] = value;
    return this;
  }

  NamingSystemSearch byid_type(String value) {
    _parameters['id_type'] = value;
    return this;
  }

  NamingSystemSearch bykind(String value) {
    _parameters['kind'] = value;
    return this;
  }

  NamingSystemSearch byperiod(DateTime value) {
    _parameters['period'] = value.toIso8601String();
    return this;
  }

  NamingSystemSearch byresponsible(String value) {
    _parameters['responsible'] = value;
    return this;
  }

  NamingSystemSearch bytelecom(String value) {
    _parameters['telecom'] = value;
    return this;
  }

  NamingSystemSearch bytype(String value) {
    _parameters['type'] = value;
    return this;
  }

  NamingSystemSearch byvalue(String value) {
    _parameters['value'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class OperationDefinitionSearch {
  final Map<String, String> _parameters = {};
  OperationDefinitionSearch bycontext(String value) {
    _parameters['context'] = value;
    return this;
  }

  OperationDefinitionSearch bycontext_type(String value) {
    _parameters['context_type'] = value;
    return this;
  }

  OperationDefinitionSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  OperationDefinitionSearch bydescription(String value) {
    _parameters['description'] = value;
    return this;
  }

  OperationDefinitionSearch byjurisdiction(String value) {
    _parameters['jurisdiction'] = value;
    return this;
  }

  OperationDefinitionSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  OperationDefinitionSearch bypublisher(String value) {
    _parameters['publisher'] = value;
    return this;
  }

  OperationDefinitionSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  OperationDefinitionSearch bytitle(String value) {
    _parameters['title'] = value;
    return this;
  }

  OperationDefinitionSearch byversion(String value) {
    _parameters['version'] = value;
    return this;
  }

  OperationDefinitionSearch bycode(String value) {
    _parameters['code'] = value;
    return this;
  }

  OperationDefinitionSearch byinstance(String value) {
    _parameters['instance'] = value;
    return this;
  }

  OperationDefinitionSearch bykind(String value) {
    _parameters['kind'] = value;
    return this;
  }

  OperationDefinitionSearch bysystem(String value) {
    _parameters['system'] = value;
    return this;
  }

  OperationDefinitionSearch bytype(String value) {
    _parameters['type'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class SearchParameterSearch {
  final Map<String, String> _parameters = {};
  SearchParameterSearch bycontext(String value) {
    _parameters['context'] = value;
    return this;
  }

  SearchParameterSearch bycontext_type(String value) {
    _parameters['context_type'] = value;
    return this;
  }

  SearchParameterSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  SearchParameterSearch bydescription(String value) {
    _parameters['description'] = value;
    return this;
  }

  SearchParameterSearch byjurisdiction(String value) {
    _parameters['jurisdiction'] = value;
    return this;
  }

  SearchParameterSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  SearchParameterSearch bypublisher(String value) {
    _parameters['publisher'] = value;
    return this;
  }

  SearchParameterSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  SearchParameterSearch byversion(String value) {
    _parameters['version'] = value;
    return this;
  }

  SearchParameterSearch bybase(String value) {
    _parameters['base'] = value;
    return this;
  }

  SearchParameterSearch bycode(String value) {
    _parameters['code'] = value;
    return this;
  }

  SearchParameterSearch bytarget(String value) {
    _parameters['target'] = value;
    return this;
  }

  SearchParameterSearch bytype(String value) {
    _parameters['type'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class StructureDefinitionSearch {
  final Map<String, String> _parameters = {};
  StructureDefinitionSearch bycontext(String value) {
    _parameters['context'] = value;
    return this;
  }

  StructureDefinitionSearch bycontext_type(String value) {
    _parameters['context_type'] = value;
    return this;
  }

  StructureDefinitionSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  StructureDefinitionSearch bydescription(String value) {
    _parameters['description'] = value;
    return this;
  }

  StructureDefinitionSearch byjurisdiction(String value) {
    _parameters['jurisdiction'] = value;
    return this;
  }

  StructureDefinitionSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  StructureDefinitionSearch bypublisher(String value) {
    _parameters['publisher'] = value;
    return this;
  }

  StructureDefinitionSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  StructureDefinitionSearch bytitle(String value) {
    _parameters['title'] = value;
    return this;
  }

  StructureDefinitionSearch byversion(String value) {
    _parameters['version'] = value;
    return this;
  }

  StructureDefinitionSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  StructureDefinitionSearch byabstract(String value) {
    _parameters['abstract'] = value;
    return this;
  }

  StructureDefinitionSearch bybase_path(String value) {
    _parameters['base_path'] = value;
    return this;
  }

  StructureDefinitionSearch byderivation(String value) {
    _parameters['derivation'] = value;
    return this;
  }

  StructureDefinitionSearch byexperimental(String value) {
    _parameters['experimental'] = value;
    return this;
  }

  StructureDefinitionSearch byext_context(String value) {
    _parameters['ext_context'] = value;
    return this;
  }

  StructureDefinitionSearch bykeyword(String value) {
    _parameters['keyword'] = value;
    return this;
  }

  StructureDefinitionSearch bykind(String value) {
    _parameters['kind'] = value;
    return this;
  }

  StructureDefinitionSearch bypath(String value) {
    _parameters['path'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class StructureMapSearch {
  final Map<String, String> _parameters = {};
  StructureMapSearch bycontext(String value) {
    _parameters['context'] = value;
    return this;
  }

  StructureMapSearch bycontext_type(String value) {
    _parameters['context_type'] = value;
    return this;
  }

  StructureMapSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  StructureMapSearch bydescription(String value) {
    _parameters['description'] = value;
    return this;
  }

  StructureMapSearch byjurisdiction(String value) {
    _parameters['jurisdiction'] = value;
    return this;
  }

  StructureMapSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  StructureMapSearch bypublisher(String value) {
    _parameters['publisher'] = value;
    return this;
  }

  StructureMapSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  StructureMapSearch bytitle(String value) {
    _parameters['title'] = value;
    return this;
  }

  StructureMapSearch byversion(String value) {
    _parameters['version'] = value;
    return this;
  }

  StructureMapSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class TerminologyCapabilitiesSearch {
  final Map<String, String> _parameters = {};
  TerminologyCapabilitiesSearch bycontext(String value) {
    _parameters['context'] = value;
    return this;
  }

  TerminologyCapabilitiesSearch bycontext_type(String value) {
    _parameters['context_type'] = value;
    return this;
  }

  TerminologyCapabilitiesSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  TerminologyCapabilitiesSearch bydescription(String value) {
    _parameters['description'] = value;
    return this;
  }

  TerminologyCapabilitiesSearch byjurisdiction(String value) {
    _parameters['jurisdiction'] = value;
    return this;
  }

  TerminologyCapabilitiesSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  TerminologyCapabilitiesSearch bypublisher(String value) {
    _parameters['publisher'] = value;
    return this;
  }

  TerminologyCapabilitiesSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  TerminologyCapabilitiesSearch bytitle(String value) {
    _parameters['title'] = value;
    return this;
  }

  TerminologyCapabilitiesSearch byversion(String value) {
    _parameters['version'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class ValueSetSearch {
  final Map<String, String> _parameters = {};
  ValueSetSearch bycontext(String value) {
    _parameters['context'] = value;
    return this;
  }

  ValueSetSearch bycontext_type(String value) {
    _parameters['context_type'] = value;
    return this;
  }

  ValueSetSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  ValueSetSearch bydescription(String value) {
    _parameters['description'] = value;
    return this;
  }

  ValueSetSearch byjurisdiction(String value) {
    _parameters['jurisdiction'] = value;
    return this;
  }

  ValueSetSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  ValueSetSearch bypublisher(String value) {
    _parameters['publisher'] = value;
    return this;
  }

  ValueSetSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  ValueSetSearch bytitle(String value) {
    _parameters['title'] = value;
    return this;
  }

  ValueSetSearch byversion(String value) {
    _parameters['version'] = value;
    return this;
  }

  ValueSetSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  ValueSetSearch bycode(String value) {
    _parameters['code'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class ChargeItemSearch {
  final Map<String, String> _parameters = {};
  ChargeItemSearch bycode(String value) {
    _parameters['code'] = value;
    return this;
  }

  ChargeItemSearch byentered_date(DateTime value) {
    _parameters['entered_date'] = value.toIso8601String();
    return this;
  }

  ChargeItemSearch byfactor_override(num value) {
    _parameters['factor_override'] = value.toString();
    return this;
  }

  ChargeItemSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  ChargeItemSearch byoccurrence(DateTime value) {
    _parameters['occurrence'] = value.toIso8601String();
    return this;
  }

  ChargeItemSearch byperformer_function(String value) {
    _parameters['performer_function'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class ChargeItemDefinitionSearch {
  final Map<String, String> _parameters = {};
  ChargeItemDefinitionSearch bycontext(String value) {
    _parameters['context'] = value;
    return this;
  }

  ChargeItemDefinitionSearch bycontext_type(String value) {
    _parameters['context_type'] = value;
    return this;
  }

  ChargeItemDefinitionSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  ChargeItemDefinitionSearch bydescription(String value) {
    _parameters['description'] = value;
    return this;
  }

  ChargeItemDefinitionSearch byeffective(DateTime value) {
    _parameters['effective'] = value.toIso8601String();
    return this;
  }

  ChargeItemDefinitionSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  ChargeItemDefinitionSearch byjurisdiction(String value) {
    _parameters['jurisdiction'] = value;
    return this;
  }

  ChargeItemDefinitionSearch bypublisher(String value) {
    _parameters['publisher'] = value;
    return this;
  }

  ChargeItemDefinitionSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  ChargeItemDefinitionSearch bytitle(String value) {
    _parameters['title'] = value;
    return this;
  }

  ChargeItemDefinitionSearch byversion(String value) {
    _parameters['version'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class CitationSearch {
  final Map<String, String> _parameters = {};
  CitationSearch bycontext(String value) {
    _parameters['context'] = value;
    return this;
  }

  CitationSearch bycontext_type(String value) {
    _parameters['context_type'] = value;
    return this;
  }

  CitationSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  CitationSearch bydescription(String value) {
    _parameters['description'] = value;
    return this;
  }

  CitationSearch byeffective(DateTime value) {
    _parameters['effective'] = value.toIso8601String();
    return this;
  }

  CitationSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  CitationSearch byjurisdiction(String value) {
    _parameters['jurisdiction'] = value;
    return this;
  }

  CitationSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  CitationSearch bypublisher(String value) {
    _parameters['publisher'] = value;
    return this;
  }

  CitationSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  CitationSearch bytitle(String value) {
    _parameters['title'] = value;
    return this;
  }

  CitationSearch byversion(String value) {
    _parameters['version'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class ClaimSearch {
  final Map<String, String> _parameters = {};
  ClaimSearch bycreated(DateTime value) {
    _parameters['created'] = value.toIso8601String();
    return this;
  }

  ClaimSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  ClaimSearch bypriority(String value) {
    _parameters['priority'] = value;
    return this;
  }

  ClaimSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  ClaimSearch byuse(String value) {
    _parameters['use'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class ClaimResponseSearch {
  final Map<String, String> _parameters = {};
  ClaimResponseSearch bycreated(DateTime value) {
    _parameters['created'] = value.toIso8601String();
    return this;
  }

  ClaimResponseSearch bydisposition(String value) {
    _parameters['disposition'] = value;
    return this;
  }

  ClaimResponseSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  ClaimResponseSearch byoutcome(String value) {
    _parameters['outcome'] = value;
    return this;
  }

  ClaimResponseSearch bypayment_date(DateTime value) {
    _parameters['payment_date'] = value.toIso8601String();
    return this;
  }

  ClaimResponseSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  ClaimResponseSearch byuse(String value) {
    _parameters['use'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class ClinicalUseDefinitionSearch {
  final Map<String, String> _parameters = {};
  ClinicalUseDefinitionSearch bycontraindication(String value) {
    _parameters['contraindication'] = value;
    return this;
  }

  ClinicalUseDefinitionSearch byeffect(String value) {
    _parameters['effect'] = value;
    return this;
  }

  ClinicalUseDefinitionSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  ClinicalUseDefinitionSearch byindication(String value) {
    _parameters['indication'] = value;
    return this;
  }

  ClinicalUseDefinitionSearch byinteraction(String value) {
    _parameters['interaction'] = value;
    return this;
  }

  ClinicalUseDefinitionSearch bytype(String value) {
    _parameters['type'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class CommunicationSearch {
  final Map<String, String> _parameters = {};
  CommunicationSearch bycategory(String value) {
    _parameters['category'] = value;
    return this;
  }

  CommunicationSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  CommunicationSearch bymedium(String value) {
    _parameters['medium'] = value;
    return this;
  }

  CommunicationSearch byreceived(DateTime value) {
    _parameters['received'] = value.toIso8601String();
    return this;
  }

  CommunicationSearch bysent(DateTime value) {
    _parameters['sent'] = value.toIso8601String();
    return this;
  }

  CommunicationSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class CommunicationRequestSearch {
  final Map<String, String> _parameters = {};
  CommunicationRequestSearch byauthored(DateTime value) {
    _parameters['authored'] = value.toIso8601String();
    return this;
  }

  CommunicationRequestSearch bycategory(String value) {
    _parameters['category'] = value;
    return this;
  }

  CommunicationRequestSearch bygroup_identifier(String value) {
    _parameters['group_identifier'] = value;
    return this;
  }

  CommunicationRequestSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  CommunicationRequestSearch bymedium(String value) {
    _parameters['medium'] = value;
    return this;
  }

  CommunicationRequestSearch byoccurrence(DateTime value) {
    _parameters['occurrence'] = value.toIso8601String();
    return this;
  }

  CommunicationRequestSearch bypriority(String value) {
    _parameters['priority'] = value;
    return this;
  }

  CommunicationRequestSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class ContractSearch {
  final Map<String, String> _parameters = {};
  ContractSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  ContractSearch byissued(DateTime value) {
    _parameters['issued'] = value.toIso8601String();
    return this;
  }

  ContractSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class CoverageSearch {
  final Map<String, String> _parameters = {};
  CoverageSearch byclass_type(String value) {
    _parameters['class_type'] = value;
    return this;
  }

  CoverageSearch byclass_value(String value) {
    _parameters['class_value'] = value;
    return this;
  }

  CoverageSearch bydependent(String value) {
    _parameters['dependent'] = value;
    return this;
  }

  CoverageSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  CoverageSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  CoverageSearch bytype(String value) {
    _parameters['type'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class CoverageEligibilityRequestSearch {
  final Map<String, String> _parameters = {};
  CoverageEligibilityRequestSearch bycreated(DateTime value) {
    _parameters['created'] = value.toIso8601String();
    return this;
  }

  CoverageEligibilityRequestSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  CoverageEligibilityRequestSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class CoverageEligibilityResponseSearch {
  final Map<String, String> _parameters = {};
  CoverageEligibilityResponseSearch bycreated(DateTime value) {
    _parameters['created'] = value.toIso8601String();
    return this;
  }

  CoverageEligibilityResponseSearch bydisposition(String value) {
    _parameters['disposition'] = value;
    return this;
  }

  CoverageEligibilityResponseSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  CoverageEligibilityResponseSearch byoutcome(String value) {
    _parameters['outcome'] = value;
    return this;
  }

  CoverageEligibilityResponseSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class DeviceSearch {
  final Map<String, String> _parameters = {};
  DeviceSearch bydevice_name(String value) {
    _parameters['device_name'] = value;
    return this;
  }

  DeviceSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  DeviceSearch bymanufacturer(String value) {
    _parameters['manufacturer'] = value;
    return this;
  }

  DeviceSearch bymodel(String value) {
    _parameters['model'] = value;
    return this;
  }

  DeviceSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  DeviceSearch bytype(String value) {
    _parameters['type'] = value;
    return this;
  }

  DeviceSearch byudi_carrier(String value) {
    _parameters['udi_carrier'] = value;
    return this;
  }

  DeviceSearch byudi_di(String value) {
    _parameters['udi_di'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class DeviceDefinitionSearch {
  final Map<String, String> _parameters = {};
  DeviceDefinitionSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  DeviceDefinitionSearch bytype(String value) {
    _parameters['type'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class DeviceMetricSearch {
  final Map<String, String> _parameters = {};
  DeviceMetricSearch bycategory(String value) {
    _parameters['category'] = value;
    return this;
  }

  DeviceMetricSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  DeviceMetricSearch bytype(String value) {
    _parameters['type'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class EndpointSearch {
  final Map<String, String> _parameters = {};
  EndpointSearch byconnection_type(String value) {
    _parameters['connection_type'] = value;
    return this;
  }

  EndpointSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  EndpointSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  EndpointSearch bypayload_type(String value) {
    _parameters['payload_type'] = value;
    return this;
  }

  EndpointSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class EnrollmentRequestSearch {
  final Map<String, String> _parameters = {};
  EnrollmentRequestSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  EnrollmentRequestSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class EnrollmentResponseSearch {
  final Map<String, String> _parameters = {};
  EnrollmentResponseSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  EnrollmentResponseSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class EventDefinitionSearch {
  final Map<String, String> _parameters = {};
  EventDefinitionSearch bycontext(String value) {
    _parameters['context'] = value;
    return this;
  }

  EventDefinitionSearch bycontext_type(String value) {
    _parameters['context_type'] = value;
    return this;
  }

  EventDefinitionSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  EventDefinitionSearch bydescription(String value) {
    _parameters['description'] = value;
    return this;
  }

  EventDefinitionSearch byeffective(DateTime value) {
    _parameters['effective'] = value.toIso8601String();
    return this;
  }

  EventDefinitionSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  EventDefinitionSearch byjurisdiction(String value) {
    _parameters['jurisdiction'] = value;
    return this;
  }

  EventDefinitionSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  EventDefinitionSearch bypublisher(String value) {
    _parameters['publisher'] = value;
    return this;
  }

  EventDefinitionSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  EventDefinitionSearch bytitle(String value) {
    _parameters['title'] = value;
    return this;
  }

  EventDefinitionSearch bytopic(String value) {
    _parameters['topic'] = value;
    return this;
  }

  EventDefinitionSearch byversion(String value) {
    _parameters['version'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class EvidenceSearch {
  final Map<String, String> _parameters = {};
  EvidenceSearch bycontext(String value) {
    _parameters['context'] = value;
    return this;
  }

  EvidenceSearch bycontext_type(String value) {
    _parameters['context_type'] = value;
    return this;
  }

  EvidenceSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  EvidenceSearch bydescription(String value) {
    _parameters['description'] = value;
    return this;
  }

  EvidenceSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  EvidenceSearch bypublisher(String value) {
    _parameters['publisher'] = value;
    return this;
  }

  EvidenceSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  EvidenceSearch bytitle(String value) {
    _parameters['title'] = value;
    return this;
  }

  EvidenceSearch byversion(String value) {
    _parameters['version'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class EvidenceReportSearch {
  final Map<String, String> _parameters = {};
  EvidenceReportSearch bycontext(String value) {
    _parameters['context'] = value;
    return this;
  }

  EvidenceReportSearch bycontext_type(String value) {
    _parameters['context_type'] = value;
    return this;
  }

  EvidenceReportSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  EvidenceReportSearch bypublisher(String value) {
    _parameters['publisher'] = value;
    return this;
  }

  EvidenceReportSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class EvidenceVariableSearch {
  final Map<String, String> _parameters = {};
  EvidenceVariableSearch bycontext(String value) {
    _parameters['context'] = value;
    return this;
  }

  EvidenceVariableSearch bycontext_type(String value) {
    _parameters['context_type'] = value;
    return this;
  }

  EvidenceVariableSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  EvidenceVariableSearch bydescription(String value) {
    _parameters['description'] = value;
    return this;
  }

  EvidenceVariableSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  EvidenceVariableSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  EvidenceVariableSearch bypublisher(String value) {
    _parameters['publisher'] = value;
    return this;
  }

  EvidenceVariableSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  EvidenceVariableSearch bytitle(String value) {
    _parameters['title'] = value;
    return this;
  }

  EvidenceVariableSearch byversion(String value) {
    _parameters['version'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class ExampleScenarioSearch {
  final Map<String, String> _parameters = {};
  ExampleScenarioSearch bycontext(String value) {
    _parameters['context'] = value;
    return this;
  }

  ExampleScenarioSearch bycontext_type(String value) {
    _parameters['context_type'] = value;
    return this;
  }

  ExampleScenarioSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  ExampleScenarioSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  ExampleScenarioSearch byjurisdiction(String value) {
    _parameters['jurisdiction'] = value;
    return this;
  }

  ExampleScenarioSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  ExampleScenarioSearch bypublisher(String value) {
    _parameters['publisher'] = value;
    return this;
  }

  ExampleScenarioSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  ExampleScenarioSearch byversion(String value) {
    _parameters['version'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class ExplanationOfBenefitSearch {
  final Map<String, String> _parameters = {};
  ExplanationOfBenefitSearch bycreated(DateTime value) {
    _parameters['created'] = value.toIso8601String();
    return this;
  }

  ExplanationOfBenefitSearch bydisposition(String value) {
    _parameters['disposition'] = value;
    return this;
  }

  ExplanationOfBenefitSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  ExplanationOfBenefitSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class GroupSearch {
  final Map<String, String> _parameters = {};
  GroupSearch byactual(String value) {
    _parameters['actual'] = value;
    return this;
  }

  GroupSearch bycharacteristic(String value) {
    _parameters['characteristic'] = value;
    return this;
  }

  GroupSearch bycode(String value) {
    _parameters['code'] = value;
    return this;
  }

  GroupSearch byexclude(String value) {
    _parameters['exclude'] = value;
    return this;
  }

  GroupSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  GroupSearch bytype(String value) {
    _parameters['type'] = value;
    return this;
  }

  GroupSearch byvalue(String value) {
    _parameters['value'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class GuidanceResponseSearch {
  final Map<String, String> _parameters = {};
  GuidanceResponseSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  GuidanceResponseSearch byrequest(String value) {
    _parameters['request'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class HealthcareServiceSearch {
  final Map<String, String> _parameters = {};
  HealthcareServiceSearch byactive(String value) {
    _parameters['active'] = value;
    return this;
  }

  HealthcareServiceSearch bycharacteristic(String value) {
    _parameters['characteristic'] = value;
    return this;
  }

  HealthcareServiceSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  HealthcareServiceSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  HealthcareServiceSearch byprogram(String value) {
    _parameters['program'] = value;
    return this;
  }

  HealthcareServiceSearch byservice_category(String value) {
    _parameters['service_category'] = value;
    return this;
  }

  HealthcareServiceSearch byservice_type(String value) {
    _parameters['service_type'] = value;
    return this;
  }

  HealthcareServiceSearch byspecialty(String value) {
    _parameters['specialty'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class ImmunizationEvaluationSearch {
  final Map<String, String> _parameters = {};
  ImmunizationEvaluationSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  ImmunizationEvaluationSearch bydose_status(String value) {
    _parameters['dose_status'] = value;
    return this;
  }

  ImmunizationEvaluationSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  ImmunizationEvaluationSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  ImmunizationEvaluationSearch bytarget_disease(String value) {
    _parameters['target_disease'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class ImmunizationRecommendationSearch {
  final Map<String, String> _parameters = {};
  ImmunizationRecommendationSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  ImmunizationRecommendationSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  ImmunizationRecommendationSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  ImmunizationRecommendationSearch bytarget_disease(String value) {
    _parameters['target_disease'] = value;
    return this;
  }

  ImmunizationRecommendationSearch byvaccine_type(String value) {
    _parameters['vaccine_type'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class IngredientSearch {
  final Map<String, String> _parameters = {};
  IngredientSearch byfunction(String value) {
    _parameters['function'] = value;
    return this;
  }

  IngredientSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  IngredientSearch byrole(String value) {
    _parameters['role'] = value;
    return this;
  }

  IngredientSearch bysubstance_code(String value) {
    _parameters['substance_code'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class InsurancePlanSearch {
  final Map<String, String> _parameters = {};
  InsurancePlanSearch byaddress(String value) {
    _parameters['address'] = value;
    return this;
  }

  InsurancePlanSearch byaddress_city(String value) {
    _parameters['address_city'] = value;
    return this;
  }

  InsurancePlanSearch byaddress_country(String value) {
    _parameters['address_country'] = value;
    return this;
  }

  InsurancePlanSearch byaddress_postalcode(String value) {
    _parameters['address_postalcode'] = value;
    return this;
  }

  InsurancePlanSearch byaddress_state(String value) {
    _parameters['address_state'] = value;
    return this;
  }

  InsurancePlanSearch byaddress_use(String value) {
    _parameters['address_use'] = value;
    return this;
  }

  InsurancePlanSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  InsurancePlanSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  InsurancePlanSearch byphonetic(String value) {
    _parameters['phonetic'] = value;
    return this;
  }

  InsurancePlanSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  InsurancePlanSearch bytype(String value) {
    _parameters['type'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class InvoiceSearch {
  final Map<String, String> _parameters = {};
  InvoiceSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  InvoiceSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  InvoiceSearch byparticipant_role(String value) {
    _parameters['participant_role'] = value;
    return this;
  }

  InvoiceSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  InvoiceSearch bytype(String value) {
    _parameters['type'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class LibrarySearch {
  final Map<String, String> _parameters = {};
  LibrarySearch bycontent_type(String value) {
    _parameters['content_type'] = value;
    return this;
  }

  LibrarySearch bycontext(String value) {
    _parameters['context'] = value;
    return this;
  }

  LibrarySearch bycontext_type(String value) {
    _parameters['context_type'] = value;
    return this;
  }

  LibrarySearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  LibrarySearch bydescription(String value) {
    _parameters['description'] = value;
    return this;
  }

  LibrarySearch byeffective(DateTime value) {
    _parameters['effective'] = value.toIso8601String();
    return this;
  }

  LibrarySearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  LibrarySearch byjurisdiction(String value) {
    _parameters['jurisdiction'] = value;
    return this;
  }

  LibrarySearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  LibrarySearch bypublisher(String value) {
    _parameters['publisher'] = value;
    return this;
  }

  LibrarySearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  LibrarySearch bytitle(String value) {
    _parameters['title'] = value;
    return this;
  }

  LibrarySearch bytopic(String value) {
    _parameters['topic'] = value;
    return this;
  }

  LibrarySearch bytype(String value) {
    _parameters['type'] = value;
    return this;
  }

  LibrarySearch byversion(String value) {
    _parameters['version'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class LinkageSearch {
  final Map<String, String> _parameters = {};
  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class LocationSearch {
  final Map<String, String> _parameters = {};
  LocationSearch byaddress(String value) {
    _parameters['address'] = value;
    return this;
  }

  LocationSearch byaddress_city(String value) {
    _parameters['address_city'] = value;
    return this;
  }

  LocationSearch byaddress_country(String value) {
    _parameters['address_country'] = value;
    return this;
  }

  LocationSearch byaddress_postalcode(String value) {
    _parameters['address_postalcode'] = value;
    return this;
  }

  LocationSearch byaddress_state(String value) {
    _parameters['address_state'] = value;
    return this;
  }

  LocationSearch byaddress_use(String value) {
    _parameters['address_use'] = value;
    return this;
  }

  LocationSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  LocationSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  LocationSearch byoperational_status(String value) {
    _parameters['operational_status'] = value;
    return this;
  }

  LocationSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  LocationSearch bytype(String value) {
    _parameters['type'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class ManufacturedItemDefinitionSearch {
  final Map<String, String> _parameters = {};
  ManufacturedItemDefinitionSearch bydose_form(String value) {
    _parameters['dose_form'] = value;
    return this;
  }

  ManufacturedItemDefinitionSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  ManufacturedItemDefinitionSearch byingredient(String value) {
    _parameters['ingredient'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class MeasureSearch {
  final Map<String, String> _parameters = {};
  MeasureSearch bycontext(String value) {
    _parameters['context'] = value;
    return this;
  }

  MeasureSearch bycontext_type(String value) {
    _parameters['context_type'] = value;
    return this;
  }

  MeasureSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  MeasureSearch bydescription(String value) {
    _parameters['description'] = value;
    return this;
  }

  MeasureSearch byeffective(DateTime value) {
    _parameters['effective'] = value.toIso8601String();
    return this;
  }

  MeasureSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  MeasureSearch byjurisdiction(String value) {
    _parameters['jurisdiction'] = value;
    return this;
  }

  MeasureSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  MeasureSearch bypublisher(String value) {
    _parameters['publisher'] = value;
    return this;
  }

  MeasureSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  MeasureSearch bytitle(String value) {
    _parameters['title'] = value;
    return this;
  }

  MeasureSearch bytopic(String value) {
    _parameters['topic'] = value;
    return this;
  }

  MeasureSearch byversion(String value) {
    _parameters['version'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class MeasureReportSearch {
  final Map<String, String> _parameters = {};
  MeasureReportSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  MeasureReportSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  MeasureReportSearch byperiod(DateTime value) {
    _parameters['period'] = value.toIso8601String();
    return this;
  }

  MeasureReportSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class MediaSearch {
  final Map<String, String> _parameters = {};
  MediaSearch bycreated(DateTime value) {
    _parameters['created'] = value.toIso8601String();
    return this;
  }

  MediaSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  MediaSearch bymodality(String value) {
    _parameters['modality'] = value;
    return this;
  }

  MediaSearch bysite(String value) {
    _parameters['site'] = value;
    return this;
  }

  MediaSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  MediaSearch bytype(String value) {
    _parameters['type'] = value;
    return this;
  }

  MediaSearch byview(String value) {
    _parameters['view'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class MedicationKnowledgeSearch {
  final Map<String, String> _parameters = {};
  MedicationKnowledgeSearch byclassification(String value) {
    _parameters['classification'] = value;
    return this;
  }

  MedicationKnowledgeSearch byclassification_type(String value) {
    _parameters['classification_type'] = value;
    return this;
  }

  MedicationKnowledgeSearch bycode(String value) {
    _parameters['code'] = value;
    return this;
  }

  MedicationKnowledgeSearch bydoseform(String value) {
    _parameters['doseform'] = value;
    return this;
  }

  MedicationKnowledgeSearch byingredient_code(String value) {
    _parameters['ingredient_code'] = value;
    return this;
  }

  MedicationKnowledgeSearch bymonitoring_program_name(String value) {
    _parameters['monitoring_program_name'] = value;
    return this;
  }

  MedicationKnowledgeSearch bymonitoring_program_type(String value) {
    _parameters['monitoring_program_type'] = value;
    return this;
  }

  MedicationKnowledgeSearch bymonograph_type(String value) {
    _parameters['monograph_type'] = value;
    return this;
  }

  MedicationKnowledgeSearch bysource_cost(String value) {
    _parameters['source_cost'] = value;
    return this;
  }

  MedicationKnowledgeSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class MedicinalProductDefinitionSearch {
  final Map<String, String> _parameters = {};
  MedicinalProductDefinitionSearch bycharacteristic(String value) {
    _parameters['characteristic'] = value;
    return this;
  }

  MedicinalProductDefinitionSearch bycharacteristic_type(String value) {
    _parameters['characteristic_type'] = value;
    return this;
  }

  MedicinalProductDefinitionSearch bydomain(String value) {
    _parameters['domain'] = value;
    return this;
  }

  MedicinalProductDefinitionSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  MedicinalProductDefinitionSearch byingredient(String value) {
    _parameters['ingredient'] = value;
    return this;
  }

  MedicinalProductDefinitionSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  MedicinalProductDefinitionSearch byname_language(String value) {
    _parameters['name_language'] = value;
    return this;
  }

  MedicinalProductDefinitionSearch byproduct_classification(String value) {
    _parameters['product_classification'] = value;
    return this;
  }

  MedicinalProductDefinitionSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  MedicinalProductDefinitionSearch bytype(String value) {
    _parameters['type'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class MessageHeaderSearch {
  final Map<String, String> _parameters = {};
  MessageHeaderSearch bycode(String value) {
    _parameters['code'] = value;
    return this;
  }

  MessageHeaderSearch bydestination(String value) {
    _parameters['destination'] = value;
    return this;
  }

  MessageHeaderSearch byevent(String value) {
    _parameters['event'] = value;
    return this;
  }

  MessageHeaderSearch byresponse_id(String value) {
    _parameters['response_id'] = value;
    return this;
  }

  MessageHeaderSearch bysource(String value) {
    _parameters['source'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class MolecularSequenceSearch {
  final Map<String, String> _parameters = {};
  MolecularSequenceSearch bychromosome(String value) {
    _parameters['chromosome'] = value;
    return this;
  }

  MolecularSequenceSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  MolecularSequenceSearch byreferenceseqid(String value) {
    _parameters['referenceseqid'] = value;
    return this;
  }

  MolecularSequenceSearch bytype(String value) {
    _parameters['type'] = value;
    return this;
  }

  MolecularSequenceSearch byvariant_end(num value) {
    _parameters['variant_end'] = value.toString();
    return this;
  }

  MolecularSequenceSearch byvariant_start(num value) {
    _parameters['variant_start'] = value.toString();
    return this;
  }

  MolecularSequenceSearch bywindow_end(num value) {
    _parameters['window_end'] = value.toString();
    return this;
  }

  MolecularSequenceSearch bywindow_start(num value) {
    _parameters['window_start'] = value.toString();
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class NutritionProductSearch {
  final Map<String, String> _parameters = {};
  NutritionProductSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  NutritionProductSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class OrganizationSearch {
  final Map<String, String> _parameters = {};
  OrganizationSearch byactive(String value) {
    _parameters['active'] = value;
    return this;
  }

  OrganizationSearch byaddress(String value) {
    _parameters['address'] = value;
    return this;
  }

  OrganizationSearch byaddress_city(String value) {
    _parameters['address_city'] = value;
    return this;
  }

  OrganizationSearch byaddress_country(String value) {
    _parameters['address_country'] = value;
    return this;
  }

  OrganizationSearch byaddress_postalcode(String value) {
    _parameters['address_postalcode'] = value;
    return this;
  }

  OrganizationSearch byaddress_state(String value) {
    _parameters['address_state'] = value;
    return this;
  }

  OrganizationSearch byaddress_use(String value) {
    _parameters['address_use'] = value;
    return this;
  }

  OrganizationSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  OrganizationSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  OrganizationSearch byphonetic(String value) {
    _parameters['phonetic'] = value;
    return this;
  }

  OrganizationSearch bytype(String value) {
    _parameters['type'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class OrganizationAffiliationSearch {
  final Map<String, String> _parameters = {};
  OrganizationAffiliationSearch byactive(String value) {
    _parameters['active'] = value;
    return this;
  }

  OrganizationAffiliationSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  OrganizationAffiliationSearch byemail(String value) {
    _parameters['email'] = value;
    return this;
  }

  OrganizationAffiliationSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  OrganizationAffiliationSearch byphone(String value) {
    _parameters['phone'] = value;
    return this;
  }

  OrganizationAffiliationSearch byrole(String value) {
    _parameters['role'] = value;
    return this;
  }

  OrganizationAffiliationSearch byspecialty(String value) {
    _parameters['specialty'] = value;
    return this;
  }

  OrganizationAffiliationSearch bytelecom(String value) {
    _parameters['telecom'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class PackagedProductDefinitionSearch {
  final Map<String, String> _parameters = {};
  PackagedProductDefinitionSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  PackagedProductDefinitionSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  PackagedProductDefinitionSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class PatientSearch {
  final Map<String, String> _parameters = {};
  PatientSearch byactive(String value) {
    _parameters['active'] = value;
    return this;
  }

  PatientSearch byaddress(String value) {
    _parameters['address'] = value;
    return this;
  }

  PatientSearch byaddress_city(String value) {
    _parameters['address_city'] = value;
    return this;
  }

  PatientSearch byaddress_country(String value) {
    _parameters['address_country'] = value;
    return this;
  }

  PatientSearch byaddress_postalcode(String value) {
    _parameters['address_postalcode'] = value;
    return this;
  }

  PatientSearch byaddress_state(String value) {
    _parameters['address_state'] = value;
    return this;
  }

  PatientSearch byaddress_use(String value) {
    _parameters['address_use'] = value;
    return this;
  }

  PatientSearch bybirthdate(DateTime value) {
    _parameters['birthdate'] = value.toIso8601String();
    return this;
  }

  PatientSearch bydeath_date(DateTime value) {
    _parameters['death_date'] = value.toIso8601String();
    return this;
  }

  PatientSearch bydeceased(String value) {
    _parameters['deceased'] = value;
    return this;
  }

  PatientSearch byemail(String value) {
    _parameters['email'] = value;
    return this;
  }

  PatientSearch byfamily(String value) {
    _parameters['family'] = value;
    return this;
  }

  PatientSearch bygender(String value) {
    _parameters['gender'] = value;
    return this;
  }

  PatientSearch bygiven(String value) {
    _parameters['given'] = value;
    return this;
  }

  PatientSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  PatientSearch bylanguage(String value) {
    _parameters['language'] = value;
    return this;
  }

  PatientSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  PatientSearch byphone(String value) {
    _parameters['phone'] = value;
    return this;
  }

  PatientSearch byphonetic(String value) {
    _parameters['phonetic'] = value;
    return this;
  }

  PatientSearch bytelecom(String value) {
    _parameters['telecom'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class PersonSearch {
  final Map<String, String> _parameters = {};
  PersonSearch byaddress(String value) {
    _parameters['address'] = value;
    return this;
  }

  PersonSearch byaddress_city(String value) {
    _parameters['address_city'] = value;
    return this;
  }

  PersonSearch byaddress_country(String value) {
    _parameters['address_country'] = value;
    return this;
  }

  PersonSearch byaddress_postalcode(String value) {
    _parameters['address_postalcode'] = value;
    return this;
  }

  PersonSearch byaddress_state(String value) {
    _parameters['address_state'] = value;
    return this;
  }

  PersonSearch byaddress_use(String value) {
    _parameters['address_use'] = value;
    return this;
  }

  PersonSearch bybirthdate(DateTime value) {
    _parameters['birthdate'] = value.toIso8601String();
    return this;
  }

  PersonSearch byemail(String value) {
    _parameters['email'] = value;
    return this;
  }

  PersonSearch bygender(String value) {
    _parameters['gender'] = value;
    return this;
  }

  PersonSearch byphone(String value) {
    _parameters['phone'] = value;
    return this;
  }

  PersonSearch byphonetic(String value) {
    _parameters['phonetic'] = value;
    return this;
  }

  PersonSearch bytelecom(String value) {
    _parameters['telecom'] = value;
    return this;
  }

  PersonSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  PersonSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class PractitionerSearch {
  final Map<String, String> _parameters = {};
  PractitionerSearch byaddress(String value) {
    _parameters['address'] = value;
    return this;
  }

  PractitionerSearch byaddress_city(String value) {
    _parameters['address_city'] = value;
    return this;
  }

  PractitionerSearch byaddress_country(String value) {
    _parameters['address_country'] = value;
    return this;
  }

  PractitionerSearch byaddress_postalcode(String value) {
    _parameters['address_postalcode'] = value;
    return this;
  }

  PractitionerSearch byaddress_state(String value) {
    _parameters['address_state'] = value;
    return this;
  }

  PractitionerSearch byaddress_use(String value) {
    _parameters['address_use'] = value;
    return this;
  }

  PractitionerSearch byemail(String value) {
    _parameters['email'] = value;
    return this;
  }

  PractitionerSearch byfamily(String value) {
    _parameters['family'] = value;
    return this;
  }

  PractitionerSearch bygender(String value) {
    _parameters['gender'] = value;
    return this;
  }

  PractitionerSearch bygiven(String value) {
    _parameters['given'] = value;
    return this;
  }

  PractitionerSearch byphone(String value) {
    _parameters['phone'] = value;
    return this;
  }

  PractitionerSearch byphonetic(String value) {
    _parameters['phonetic'] = value;
    return this;
  }

  PractitionerSearch bytelecom(String value) {
    _parameters['telecom'] = value;
    return this;
  }

  PractitionerSearch byactive(String value) {
    _parameters['active'] = value;
    return this;
  }

  PractitionerSearch bycommunication(String value) {
    _parameters['communication'] = value;
    return this;
  }

  PractitionerSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  PractitionerSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class RelatedPersonSearch {
  final Map<String, String> _parameters = {};
  RelatedPersonSearch byaddress(String value) {
    _parameters['address'] = value;
    return this;
  }

  RelatedPersonSearch byaddress_city(String value) {
    _parameters['address_city'] = value;
    return this;
  }

  RelatedPersonSearch byaddress_country(String value) {
    _parameters['address_country'] = value;
    return this;
  }

  RelatedPersonSearch byaddress_postalcode(String value) {
    _parameters['address_postalcode'] = value;
    return this;
  }

  RelatedPersonSearch byaddress_state(String value) {
    _parameters['address_state'] = value;
    return this;
  }

  RelatedPersonSearch byaddress_use(String value) {
    _parameters['address_use'] = value;
    return this;
  }

  RelatedPersonSearch bybirthdate(DateTime value) {
    _parameters['birthdate'] = value.toIso8601String();
    return this;
  }

  RelatedPersonSearch byemail(String value) {
    _parameters['email'] = value;
    return this;
  }

  RelatedPersonSearch bygender(String value) {
    _parameters['gender'] = value;
    return this;
  }

  RelatedPersonSearch byphone(String value) {
    _parameters['phone'] = value;
    return this;
  }

  RelatedPersonSearch byphonetic(String value) {
    _parameters['phonetic'] = value;
    return this;
  }

  RelatedPersonSearch bytelecom(String value) {
    _parameters['telecom'] = value;
    return this;
  }

  RelatedPersonSearch byactive(String value) {
    _parameters['active'] = value;
    return this;
  }

  RelatedPersonSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  RelatedPersonSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  RelatedPersonSearch byrelationship(String value) {
    _parameters['relationship'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class PractitionerRoleSearch {
  final Map<String, String> _parameters = {};
  PractitionerRoleSearch byemail(String value) {
    _parameters['email'] = value;
    return this;
  }

  PractitionerRoleSearch byphone(String value) {
    _parameters['phone'] = value;
    return this;
  }

  PractitionerRoleSearch bytelecom(String value) {
    _parameters['telecom'] = value;
    return this;
  }

  PractitionerRoleSearch byactive(String value) {
    _parameters['active'] = value;
    return this;
  }

  PractitionerRoleSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  PractitionerRoleSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  PractitionerRoleSearch byrole(String value) {
    _parameters['role'] = value;
    return this;
  }

  PractitionerRoleSearch byspecialty(String value) {
    _parameters['specialty'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class PaymentNoticeSearch {
  final Map<String, String> _parameters = {};
  PaymentNoticeSearch bycreated(DateTime value) {
    _parameters['created'] = value.toIso8601String();
    return this;
  }

  PaymentNoticeSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  PaymentNoticeSearch bypayment_status(String value) {
    _parameters['payment_status'] = value;
    return this;
  }

  PaymentNoticeSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class PaymentReconciliationSearch {
  final Map<String, String> _parameters = {};
  PaymentReconciliationSearch bycreated(DateTime value) {
    _parameters['created'] = value.toIso8601String();
    return this;
  }

  PaymentReconciliationSearch bydisposition(String value) {
    _parameters['disposition'] = value;
    return this;
  }

  PaymentReconciliationSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  PaymentReconciliationSearch byoutcome(String value) {
    _parameters['outcome'] = value;
    return this;
  }

  PaymentReconciliationSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class PlanDefinitionSearch {
  final Map<String, String> _parameters = {};
  PlanDefinitionSearch bycontext(String value) {
    _parameters['context'] = value;
    return this;
  }

  PlanDefinitionSearch bycontext_type(String value) {
    _parameters['context_type'] = value;
    return this;
  }

  PlanDefinitionSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  PlanDefinitionSearch bydescription(String value) {
    _parameters['description'] = value;
    return this;
  }

  PlanDefinitionSearch byeffective(DateTime value) {
    _parameters['effective'] = value.toIso8601String();
    return this;
  }

  PlanDefinitionSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  PlanDefinitionSearch byjurisdiction(String value) {
    _parameters['jurisdiction'] = value;
    return this;
  }

  PlanDefinitionSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  PlanDefinitionSearch bypublisher(String value) {
    _parameters['publisher'] = value;
    return this;
  }

  PlanDefinitionSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  PlanDefinitionSearch bytitle(String value) {
    _parameters['title'] = value;
    return this;
  }

  PlanDefinitionSearch bytopic(String value) {
    _parameters['topic'] = value;
    return this;
  }

  PlanDefinitionSearch bytype(String value) {
    _parameters['type'] = value;
    return this;
  }

  PlanDefinitionSearch byversion(String value) {
    _parameters['version'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class ProvenanceSearch {
  final Map<String, String> _parameters = {};
  ProvenanceSearch byagent_role(String value) {
    _parameters['agent_role'] = value;
    return this;
  }

  ProvenanceSearch byagent_type(String value) {
    _parameters['agent_type'] = value;
    return this;
  }

  ProvenanceSearch byrecorded(DateTime value) {
    _parameters['recorded'] = value.toIso8601String();
    return this;
  }

  ProvenanceSearch bysignature_type(String value) {
    _parameters['signature_type'] = value;
    return this;
  }

  ProvenanceSearch bywhen(DateTime value) {
    _parameters['when'] = value.toIso8601String();
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class QuestionnaireSearch {
  final Map<String, String> _parameters = {};
  QuestionnaireSearch bycode(String value) {
    _parameters['code'] = value;
    return this;
  }

  QuestionnaireSearch bycontext(String value) {
    _parameters['context'] = value;
    return this;
  }

  QuestionnaireSearch bycontext_type(String value) {
    _parameters['context_type'] = value;
    return this;
  }

  QuestionnaireSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  QuestionnaireSearch bydescription(String value) {
    _parameters['description'] = value;
    return this;
  }

  QuestionnaireSearch byeffective(DateTime value) {
    _parameters['effective'] = value.toIso8601String();
    return this;
  }

  QuestionnaireSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  QuestionnaireSearch byjurisdiction(String value) {
    _parameters['jurisdiction'] = value;
    return this;
  }

  QuestionnaireSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  QuestionnaireSearch bypublisher(String value) {
    _parameters['publisher'] = value;
    return this;
  }

  QuestionnaireSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  QuestionnaireSearch bysubject_type(String value) {
    _parameters['subject_type'] = value;
    return this;
  }

  QuestionnaireSearch bytitle(String value) {
    _parameters['title'] = value;
    return this;
  }

  QuestionnaireSearch byversion(String value) {
    _parameters['version'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class QuestionnaireResponseSearch {
  final Map<String, String> _parameters = {};
  QuestionnaireResponseSearch byauthored(DateTime value) {
    _parameters['authored'] = value.toIso8601String();
    return this;
  }

  QuestionnaireResponseSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  QuestionnaireResponseSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class RegulatedAuthorizationSearch {
  final Map<String, String> _parameters = {};
  RegulatedAuthorizationSearch bycase(String value) {
    _parameters['case'] = value;
    return this;
  }

  RegulatedAuthorizationSearch bycase_type(String value) {
    _parameters['case_type'] = value;
    return this;
  }

  RegulatedAuthorizationSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  RegulatedAuthorizationSearch byregion(String value) {
    _parameters['region'] = value;
    return this;
  }

  RegulatedAuthorizationSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class RequestGroupSearch {
  final Map<String, String> _parameters = {};
  RequestGroupSearch byauthored(DateTime value) {
    _parameters['authored'] = value.toIso8601String();
    return this;
  }

  RequestGroupSearch bycode(String value) {
    _parameters['code'] = value;
    return this;
  }

  RequestGroupSearch bygroup_identifier(String value) {
    _parameters['group_identifier'] = value;
    return this;
  }

  RequestGroupSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  RequestGroupSearch byintent(String value) {
    _parameters['intent'] = value;
    return this;
  }

  RequestGroupSearch bypriority(String value) {
    _parameters['priority'] = value;
    return this;
  }

  RequestGroupSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class ResearchDefinitionSearch {
  final Map<String, String> _parameters = {};
  ResearchDefinitionSearch bycontext(String value) {
    _parameters['context'] = value;
    return this;
  }

  ResearchDefinitionSearch bycontext_type(String value) {
    _parameters['context_type'] = value;
    return this;
  }

  ResearchDefinitionSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  ResearchDefinitionSearch bydescription(String value) {
    _parameters['description'] = value;
    return this;
  }

  ResearchDefinitionSearch byeffective(DateTime value) {
    _parameters['effective'] = value.toIso8601String();
    return this;
  }

  ResearchDefinitionSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  ResearchDefinitionSearch byjurisdiction(String value) {
    _parameters['jurisdiction'] = value;
    return this;
  }

  ResearchDefinitionSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  ResearchDefinitionSearch bypublisher(String value) {
    _parameters['publisher'] = value;
    return this;
  }

  ResearchDefinitionSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  ResearchDefinitionSearch bytitle(String value) {
    _parameters['title'] = value;
    return this;
  }

  ResearchDefinitionSearch bytopic(String value) {
    _parameters['topic'] = value;
    return this;
  }

  ResearchDefinitionSearch byversion(String value) {
    _parameters['version'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class ResearchElementDefinitionSearch {
  final Map<String, String> _parameters = {};
  ResearchElementDefinitionSearch bycontext(String value) {
    _parameters['context'] = value;
    return this;
  }

  ResearchElementDefinitionSearch bycontext_type(String value) {
    _parameters['context_type'] = value;
    return this;
  }

  ResearchElementDefinitionSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  ResearchElementDefinitionSearch bydescription(String value) {
    _parameters['description'] = value;
    return this;
  }

  ResearchElementDefinitionSearch byeffective(DateTime value) {
    _parameters['effective'] = value.toIso8601String();
    return this;
  }

  ResearchElementDefinitionSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  ResearchElementDefinitionSearch byjurisdiction(String value) {
    _parameters['jurisdiction'] = value;
    return this;
  }

  ResearchElementDefinitionSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  ResearchElementDefinitionSearch bypublisher(String value) {
    _parameters['publisher'] = value;
    return this;
  }

  ResearchElementDefinitionSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  ResearchElementDefinitionSearch bytitle(String value) {
    _parameters['title'] = value;
    return this;
  }

  ResearchElementDefinitionSearch bytopic(String value) {
    _parameters['topic'] = value;
    return this;
  }

  ResearchElementDefinitionSearch byversion(String value) {
    _parameters['version'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class ResearchStudySearch {
  final Map<String, String> _parameters = {};
  ResearchStudySearch bycategory(String value) {
    _parameters['category'] = value;
    return this;
  }

  ResearchStudySearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  ResearchStudySearch byfocus(String value) {
    _parameters['focus'] = value;
    return this;
  }

  ResearchStudySearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  ResearchStudySearch bykeyword(String value) {
    _parameters['keyword'] = value;
    return this;
  }

  ResearchStudySearch bylocation(String value) {
    _parameters['location'] = value;
    return this;
  }

  ResearchStudySearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  ResearchStudySearch bytitle(String value) {
    _parameters['title'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class ResearchSubjectSearch {
  final Map<String, String> _parameters = {};
  ResearchSubjectSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  ResearchSubjectSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  ResearchSubjectSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class ScheduleSearch {
  final Map<String, String> _parameters = {};
  ScheduleSearch byactive(String value) {
    _parameters['active'] = value;
    return this;
  }

  ScheduleSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  ScheduleSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  ScheduleSearch byservice_category(String value) {
    _parameters['service_category'] = value;
    return this;
  }

  ScheduleSearch byservice_type(String value) {
    _parameters['service_type'] = value;
    return this;
  }

  ScheduleSearch byspecialty(String value) {
    _parameters['specialty'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class SlotSearch {
  final Map<String, String> _parameters = {};
  SlotSearch byappointment_type(String value) {
    _parameters['appointment_type'] = value;
    return this;
  }

  SlotSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  SlotSearch byservice_category(String value) {
    _parameters['service_category'] = value;
    return this;
  }

  SlotSearch byservice_type(String value) {
    _parameters['service_type'] = value;
    return this;
  }

  SlotSearch byspecialty(String value) {
    _parameters['specialty'] = value;
    return this;
  }

  SlotSearch bystart(DateTime value) {
    _parameters['start'] = value.toIso8601String();
    return this;
  }

  SlotSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class SpecimenSearch {
  final Map<String, String> _parameters = {};
  SpecimenSearch byaccession(String value) {
    _parameters['accession'] = value;
    return this;
  }

  SpecimenSearch bybodysite(String value) {
    _parameters['bodysite'] = value;
    return this;
  }

  SpecimenSearch bycollected(DateTime value) {
    _parameters['collected'] = value.toIso8601String();
    return this;
  }

  SpecimenSearch bycontainer(String value) {
    _parameters['container'] = value;
    return this;
  }

  SpecimenSearch bycontainer_id(String value) {
    _parameters['container_id'] = value;
    return this;
  }

  SpecimenSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  SpecimenSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  SpecimenSearch bytype(String value) {
    _parameters['type'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class SpecimenDefinitionSearch {
  final Map<String, String> _parameters = {};
  SpecimenDefinitionSearch bycontainer(String value) {
    _parameters['container'] = value;
    return this;
  }

  SpecimenDefinitionSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  SpecimenDefinitionSearch bytype(String value) {
    _parameters['type'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class SubscriptionSearch {
  final Map<String, String> _parameters = {};
  SubscriptionSearch bycontact(String value) {
    _parameters['contact'] = value;
    return this;
  }

  SubscriptionSearch bycriteria(String value) {
    _parameters['criteria'] = value;
    return this;
  }

  SubscriptionSearch bypayload(String value) {
    _parameters['payload'] = value;
    return this;
  }

  SubscriptionSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  SubscriptionSearch bytype(String value) {
    _parameters['type'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class SubscriptionTopicSearch {
  final Map<String, String> _parameters = {};
  SubscriptionTopicSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  SubscriptionTopicSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  SubscriptionTopicSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  SubscriptionTopicSearch bytitle(String value) {
    _parameters['title'] = value;
    return this;
  }

  SubscriptionTopicSearch bytrigger_description(String value) {
    _parameters['trigger_description'] = value;
    return this;
  }

  SubscriptionTopicSearch byversion(String value) {
    _parameters['version'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class SubstanceSearch {
  final Map<String, String> _parameters = {};
  SubstanceSearch bycategory(String value) {
    _parameters['category'] = value;
    return this;
  }

  SubstanceSearch bycode(String value) {
    _parameters['code'] = value;
    return this;
  }

  SubstanceSearch bycontainer_identifier(String value) {
    _parameters['container_identifier'] = value;
    return this;
  }

  SubstanceSearch byexpiry(DateTime value) {
    _parameters['expiry'] = value.toIso8601String();
    return this;
  }

  SubstanceSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  SubstanceSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class SubstanceDefinitionSearch {
  final Map<String, String> _parameters = {};
  SubstanceDefinitionSearch byclassification(String value) {
    _parameters['classification'] = value;
    return this;
  }

  SubstanceDefinitionSearch bycode(String value) {
    _parameters['code'] = value;
    return this;
  }

  SubstanceDefinitionSearch bydomain(String value) {
    _parameters['domain'] = value;
    return this;
  }

  SubstanceDefinitionSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  SubstanceDefinitionSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class TaskSearch {
  final Map<String, String> _parameters = {};
  TaskSearch byauthored_on(DateTime value) {
    _parameters['authored_on'] = value.toIso8601String();
    return this;
  }

  TaskSearch bybusiness_status(String value) {
    _parameters['business_status'] = value;
    return this;
  }

  TaskSearch bycode(String value) {
    _parameters['code'] = value;
    return this;
  }

  TaskSearch bygroup_identifier(String value) {
    _parameters['group_identifier'] = value;
    return this;
  }

  TaskSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  TaskSearch byintent(String value) {
    _parameters['intent'] = value;
    return this;
  }

  TaskSearch bymodified(DateTime value) {
    _parameters['modified'] = value.toIso8601String();
    return this;
  }

  TaskSearch byperformer(String value) {
    _parameters['performer'] = value;
    return this;
  }

  TaskSearch byperiod(DateTime value) {
    _parameters['period'] = value.toIso8601String();
    return this;
  }

  TaskSearch bypriority(String value) {
    _parameters['priority'] = value;
    return this;
  }

  TaskSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class TestReportSearch {
  final Map<String, String> _parameters = {};
  TestReportSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  TestReportSearch byissued(DateTime value) {
    _parameters['issued'] = value.toIso8601String();
    return this;
  }

  TestReportSearch byresult(String value) {
    _parameters['result'] = value;
    return this;
  }

  TestReportSearch bytester(String value) {
    _parameters['tester'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class TestScriptSearch {
  final Map<String, String> _parameters = {};
  TestScriptSearch bycontext(String value) {
    _parameters['context'] = value;
    return this;
  }

  TestScriptSearch bycontext_type(String value) {
    _parameters['context_type'] = value;
    return this;
  }

  TestScriptSearch bydate(DateTime value) {
    _parameters['date'] = value.toIso8601String();
    return this;
  }

  TestScriptSearch bydescription(String value) {
    _parameters['description'] = value;
    return this;
  }

  TestScriptSearch byidentifier(String value) {
    _parameters['identifier'] = value;
    return this;
  }

  TestScriptSearch byjurisdiction(String value) {
    _parameters['jurisdiction'] = value;
    return this;
  }

  TestScriptSearch byname(String value) {
    _parameters['name'] = value;
    return this;
  }

  TestScriptSearch bypublisher(String value) {
    _parameters['publisher'] = value;
    return this;
  }

  TestScriptSearch bystatus(String value) {
    _parameters['status'] = value;
    return this;
  }

  TestScriptSearch bytestscript_capability(String value) {
    _parameters['testscript_capability'] = value;
    return this;
  }

  TestScriptSearch bytitle(String value) {
    _parameters['title'] = value;
    return this;
  }

  TestScriptSearch byversion(String value) {
    _parameters['version'] = value;
    return this;
  }

  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}

class VerificationResultSearch {
  final Map<String, String> _parameters = {};
  String buildQuery() {
    return _parameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}
