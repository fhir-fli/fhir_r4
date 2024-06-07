import 'package:realm/realm.dart';
@RealmModel()
class _DeviceUseStatementRealm {
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
  late _ReferenceRealm subject;
  late List<_ReferenceRealm> derivedFrom;
  late _TimingRealm timingTiming;
  late _PeriodRealm timingPeriod;
  late String timingDateTime;
  late _PrimitiveElementRealm timingDateTimeElement;
  late String recordedOn;
  late _PrimitiveElementRealm recordedOnElement;
  late _ReferenceRealm source;
  late _ReferenceRealm device;
  late List<_CodeableConceptRealm> reasonCode;
  late List<_ReferenceRealm> reasonReference;
  late _CodeableConceptRealm bodySite;
  late List<_AnnotationRealm> note;
}
