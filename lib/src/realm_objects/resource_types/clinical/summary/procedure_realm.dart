import 'package:realm/realm.dart';
@RealmModel()
class _ProcedureRealm {
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
  late List<_FhirCanonicalRealm> instantiatesCanonical;
  late List<_FhirUriRealm> instantiatesUri;
  late List<_PrimitiveElementRealm> instantiatesUriElement;
  late List<_ReferenceRealm> basedOn;
  late List<_ReferenceRealm> partOf;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _CodeableConceptRealm statusReason;
  late _CodeableConceptRealm category;
  late _CodeableConceptRealm code;
  late _ReferenceRealm subject;
  late _ReferenceRealm encounter;
  late String performedDateTime;
  late _PrimitiveElementRealm performedDateTimeElement;
  late _PeriodRealm performedPeriod;
  late String performedString;
  late _PrimitiveElementRealm performedStringElement;
  late _AgeRealm performedAge;
  late _RangeRealm performedRange;
  late _ReferenceRealm recorder;
  late _ReferenceRealm asserter;
  late List<_ProcedurePerformerRealm> performer;
  late _ReferenceRealm location;
  late List<_CodeableConceptRealm> reasonCode;
  late List<_ReferenceRealm> reasonReference;
  late List<_CodeableConceptRealm> bodySite;
  late _CodeableConceptRealm outcome;
  late List<_ReferenceRealm> report;
  late List<_CodeableConceptRealm> complication;
  late List<_ReferenceRealm> complicationDetail;
  late List<_CodeableConceptRealm> followUp;
  late List<_AnnotationRealm> note;
  late List<_ProcedureFocalDeviceRealm> focalDevice;
  late List<_ReferenceRealm> usedReference;
  late List<_CodeableConceptRealm> usedCode;
}
@RealmModel()
class _ProcedurePerformerRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm function;
  late _ReferenceRealm actor;
  late _ReferenceRealm onBehalfOf;
}
@RealmModel()
class _ProcedureFocalDeviceRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm action;
  late _ReferenceRealm manipulated;
}
