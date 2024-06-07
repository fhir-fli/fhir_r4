import 'package:realm/realm.dart';
@RealmModel()
class _DiagnosticReportRealm {
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
  late List<_IdentifierRealm> identifier;
  late List<_ReferenceRealm> basedOn;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late List<_CodeableConceptRealm> category;
  late _CodeableConceptRealm code;
  late _ReferenceRealm subject;
  late _ReferenceRealm encounter;
  late String effectiveDateTime;
  late _PrimitiveElementRealm effectiveDateTimeElement;
  late _PeriodRealm effectivePeriod;
  late _FhirInstantRealm issued;
  late _PrimitiveElementRealm issuedElement;
  late List<_ReferenceRealm> performer;
  late List<_ReferenceRealm> resultsInterpreter;
  late List<_ReferenceRealm> specimen;
  late List<_ReferenceRealm> result;
  late List<_ReferenceRealm> imagingStudy;
  late List<_DiagnosticReportMediaRealm> media;
  late String conclusion;
  late _PrimitiveElementRealm conclusionElement;
  late List<_CodeableConceptRealm> conclusionCode;
  late List<_AttachmentRealm> presentedForm;
}
@RealmModel()
class _DiagnosticReportMediaRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String comment;
  late _PrimitiveElementRealm commentElement;
  late _ReferenceRealm link;
}
