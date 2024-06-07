import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class AppointmentDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> resourceType = ToOne<StringDbObject>();
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToOne<FhirMetaDbObject> meta = ToOne<FhirMetaDbObject>();
  final ToOne<FhirUriDbObject> implicitRules = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> implicitRulesElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<NarrativeDbObject> text = ToOne<NarrativeDbObject>();
  final ToMany<ResourceDbObject> contained = ToMany<ResourceDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> cancelationReason =
      ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> serviceCategory =
      ToMany<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> serviceType =
      ToMany<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> specialty =
      ToMany<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> appointmentType =
      ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> reasonCode =
      ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> reasonReference = ToMany<ReferenceDbObject>();
  final ToOne<FhirUnsignedIntDbObject> priority =
      ToOne<FhirUnsignedIntDbObject>();
  final ToOne<PrimitiveElementDbObject> priorityElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> supportingInformation =
      ToMany<ReferenceDbObject>();
  final ToOne<FhirInstantDbObject> start = ToOne<FhirInstantDbObject>();
  final ToOne<PrimitiveElementDbObject> startElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirInstantDbObject> end = ToOne<FhirInstantDbObject>();
  final ToOne<PrimitiveElementDbObject> endElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirPositiveIntDbObject> minutesDuration =
      ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> minutesDurationElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> slot = ToMany<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> created = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> createdElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> comment = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> commentElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> patientInstruction = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> patientInstructionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> basedOn = ToMany<ReferenceDbObject>();
  final ToMany<AppointmentParticipantDbObject> participant =
      ToMany<AppointmentParticipantDbObject>();
  final ToMany<PeriodDbObject> requestedPeriod = ToMany<PeriodDbObject>();
  AppointmentDbObject({required this.id});
}

@Entity()
class AppointmentParticipantDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToMany<CodeableConceptDbObject> type =
      ToMany<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> actor = ToOne<ReferenceDbObject>();
  final ToOne<FhirCodeDbObject> required_ = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> requiredElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  AppointmentParticipantDbObject({required this.id});
}
