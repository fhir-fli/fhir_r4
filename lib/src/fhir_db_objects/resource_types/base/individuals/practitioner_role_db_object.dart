import 'package:objectbox/objectbox.dart';
@Entity()
class PractitionerRoleDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<R4ResourceTypeDbObject> resourceType = ToOne<R4ResourceTypeDbObject>();
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToOne<FhirMetaDbObject> meta = ToOne<FhirMetaDbObject>();
  final ToOne<FhirUriDbObject> implicitRules = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> implicitRulesElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<NarrativeDbObject> text = ToOne<NarrativeDbObject>();
  final ToMany<ResourceDbObject> contained = ToMany<ResourceDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<FhirBooleanDbObject> active = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> activeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  final ToOne<ReferenceDbObject> practitioner = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> organization = ToOne<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> code = ToMany<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> specialty = ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> location = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> healthcareService = ToMany<ReferenceDbObject>();
  final ToMany<ContactPointDbObject> telecom = ToMany<ContactPointDbObject>();
  final ToMany<PractitionerRoleAvailableTimeDbObject> availableTime = ToMany<PractitionerRoleAvailableTimeDbObject>();
  final ToMany<PractitionerRoleNotAvailableDbObject> notAvailable = ToMany<PractitionerRoleNotAvailableDbObject>();
  final ToOne<StringDbObject> availabilityExceptions = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> availabilityExceptionsElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> endpoint = ToMany<ReferenceDbObject>();
  PractitionerRoleDbObject({required this.id});
}
@Entity()
class PractitionerRoleAvailableTimeDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirCodeDbObject> daysOfWeek = ToMany<FhirCodeDbObject>();
  final ToMany<PrimitiveElementDbObject> daysOfWeekElement = ToMany<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> allDay = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> allDayElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirTimeDbObject> availableStartTime = ToOne<FhirTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> availableStartTimeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirTimeDbObject> availableEndTime = ToOne<FhirTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> availableEndTimeElement = ToOne<PrimitiveElementDbObject>();
  PractitionerRoleAvailableTimeDbObject({required this.id});
}
@Entity()
class PractitionerRoleNotAvailableDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> during = ToOne<PeriodDbObject>();
  PractitionerRoleNotAvailableDbObject({required this.id});
}
