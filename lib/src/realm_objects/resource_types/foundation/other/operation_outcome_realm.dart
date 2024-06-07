import 'package:realm/realm.dart';
@RealmModel()
class _OperationOutcomeRealm {
  late _R4ResourceTypeRealm resourceType;
  @PrimaryKey() late String id;
  late _FhirMetaRealm meta;
  late _FhirUriRealm implicitRules;
  late _PrimitiveElementRealm implicitRulesElement;
  late _FhirCodeRealm language;
  late _PrimitiveElementRealm languageElement;
  late _NarrativeRealm text;
  late List<_ResourceRealm> contained;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_OperationOutcomeIssueRealm> issue;
}
@RealmModel()
class _OperationOutcomeIssueRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm severity;
  late _PrimitiveElementRealm severityElement;
  late _FhirCodeRealm code;
  late _PrimitiveElementRealm codeElement;
  late _CodeableConceptRealm details;
  late String diagnostics;
  late _PrimitiveElementRealm diagnosticsElement;
  late String location;
  late List<_PrimitiveElementRealm> locationElement;
  late String expression;
  late List<_PrimitiveElementRealm> expressionElement;
}
