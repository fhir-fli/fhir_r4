import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class HealthcareServiceDbObject {
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
  final ToOne<FhirBooleanDbObject> active = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> activeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> providedBy = ToOne<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> category =
      ToMany<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> type =
      ToMany<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> specialty =
      ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> location = ToMany<ReferenceDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> comment = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> commentElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> extraDetails =
      ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> extraDetailsElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<AttachmentDbObject> photo = ToOne<AttachmentDbObject>();
  final ToMany<ContactPointDbObject> telecom = ToMany<ContactPointDbObject>();
  final ToMany<ReferenceDbObject> coverageArea = ToMany<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> serviceProvisionCode =
      ToMany<CodeableConceptDbObject>();
  final ToMany<HealthcareServiceEligibilityDbObject> eligibility =
      ToMany<HealthcareServiceEligibilityDbObject>();
  final ToMany<CodeableConceptDbObject> program =
      ToMany<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> characteristic =
      ToMany<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> communication =
      ToMany<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> referralMethod =
      ToMany<CodeableConceptDbObject>();
  final ToOne<FhirBooleanDbObject> appointmentRequired =
      ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> appointmentRequiredElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<HealthcareServiceAvailableTimeDbObject> availableTime =
      ToMany<HealthcareServiceAvailableTimeDbObject>();
  final ToMany<HealthcareServiceNotAvailableDbObject> notAvailable =
      ToMany<HealthcareServiceNotAvailableDbObject>();
  final ToOne<StringDbObject> availabilityExceptions = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> availabilityExceptionsElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> endpoint = ToMany<ReferenceDbObject>();
  HealthcareServiceDbObject({required this.id});
}

@Entity()
class HealthcareServiceEligibilityDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirMarkdownDbObject> comment = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> commentElement =
      ToOne<PrimitiveElementDbObject>();
  HealthcareServiceEligibilityDbObject({required this.id});
}

@Entity()
class HealthcareServiceAvailableTimeDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirCodeDbObject> daysOfWeek = ToMany<FhirCodeDbObject>();
  final ToMany<PrimitiveElementDbObject> daysOfWeekElement =
      ToMany<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> allDay = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> allDayElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirTimeDbObject> availableStartTime = ToOne<FhirTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> availableStartTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirTimeDbObject> availableEndTime = ToOne<FhirTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> availableEndTimeElement =
      ToOne<PrimitiveElementDbObject>();
  HealthcareServiceAvailableTimeDbObject({required this.id});
}

@Entity()
class HealthcareServiceNotAvailableDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> during = ToOne<PeriodDbObject>();
  HealthcareServiceNotAvailableDbObject({required this.id});
}
