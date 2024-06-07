import 'package:realm/realm.dart';
@RealmModel()
class _AdverseEventRealm {
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
  late _IdentifierRealm identifier;
  late _FhirCodeRealm actuality;
  late _PrimitiveElementRealm actualityElement;
  late List<_CodeableConceptRealm> category;
  late _CodeableConceptRealm event;
  late _ReferenceRealm subject;
  late _ReferenceRealm encounter;
  late String date;
  late _PrimitiveElementRealm dateElement;
  late String detected;
  late _PrimitiveElementRealm detectedElement;
  late String recordedDate;
  late _PrimitiveElementRealm recordedDateElement;
  late List<_ReferenceRealm> resultingCondition;
  late _ReferenceRealm location;
  late _CodeableConceptRealm seriousness;
  late _CodeableConceptRealm severity;
  late _CodeableConceptRealm outcome;
  late _ReferenceRealm recorder;
  late List<_ReferenceRealm> contributor;
  late List<_AdverseEventSuspectEntityRealm> suspectEntity;
  late List<_ReferenceRealm> subjectMedicalHistory;
  late List<_ReferenceRealm> referenceDocument;
  late List<_ReferenceRealm> study;
}
@RealmModel()
class _AdverseEventSuspectEntityRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _ReferenceRealm instance;
  late List<_AdverseEventCausalityRealm> causality;
}
@RealmModel()
class _AdverseEventCausalityRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm assessment;
  late String productRelatedness;
  late _PrimitiveElementRealm productRelatednessElement;
  late _ReferenceRealm author;
  late _CodeableConceptRealm method;
}
