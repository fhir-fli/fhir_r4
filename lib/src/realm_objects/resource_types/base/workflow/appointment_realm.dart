import 'package:realm/realm.dart';
@RealmModel()
class _AppointmentRealm {
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
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _CodeableConceptRealm cancelationReason;
  late List<_CodeableConceptRealm> serviceCategory;
  late List<_CodeableConceptRealm> serviceType;
  late List<_CodeableConceptRealm> specialty;
  late _CodeableConceptRealm appointmentType;
  late List<_CodeableConceptRealm> reasonCode;
  late List<_ReferenceRealm> reasonReference;
  late _FhirUnsignedIntRealm priority;
  late _PrimitiveElementRealm priorityElement;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late List<_ReferenceRealm> supportingInformation;
  late _FhirInstantRealm start;
  late _PrimitiveElementRealm startElement;
  late _FhirInstantRealm end;
  late _PrimitiveElementRealm endElement;
  late _FhirPositiveIntRealm minutesDuration;
  late _PrimitiveElementRealm minutesDurationElement;
  late List<_ReferenceRealm> slot;
  late String created;
  late _PrimitiveElementRealm createdElement;
  late String comment;
  late _PrimitiveElementRealm commentElement;
  late String patientInstruction;
  late _PrimitiveElementRealm patientInstructionElement;
  late List<_ReferenceRealm> basedOn;
  late List<_AppointmentParticipantRealm> participant;
  late List<_PeriodRealm> requestedPeriod;
}
@RealmModel()
class _AppointmentParticipantRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_CodeableConceptRealm> type;
  late _ReferenceRealm actor;
  late _FhirCodeRealm required_;
  late _PrimitiveElementRealm requiredElement;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _PeriodRealm period;
}
