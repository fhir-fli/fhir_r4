import 'package:realm/realm.dart';
@RealmModel()
class _AppointmentResponseRealm {
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
  late _ReferenceRealm appointment;
  late _FhirInstantRealm start;
  late _PrimitiveElementRealm startElement;
  late _FhirInstantRealm end;
  late _PrimitiveElementRealm endElement;
  late List<_CodeableConceptRealm> participantType;
  late _ReferenceRealm actor;
  late _FhirCodeRealm participantStatus;
  late _PrimitiveElementRealm participantStatusElement;
  late String comment;
  late _PrimitiveElementRealm commentElement;
}
