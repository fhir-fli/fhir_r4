import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class LocationDbObject {
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
  final ToOne<CodingDbObject> operationalStatus = ToOne<CodingDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> alias = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> aliasElement =
      ToMany<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> mode = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> modeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> type =
      ToMany<CodeableConceptDbObject>();
  final ToMany<ContactPointDbObject> telecom = ToMany<ContactPointDbObject>();
  final ToOne<AddressDbObject> address = ToOne<AddressDbObject>();
  final ToOne<CodeableConceptDbObject> physicalType =
      ToOne<CodeableConceptDbObject>();
  final ToOne<LocationPositionDbObject> position =
      ToOne<LocationPositionDbObject>();
  final ToOne<ReferenceDbObject> managingOrganization =
      ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> partOf = ToOne<ReferenceDbObject>();
  final ToMany<LocationHoursOfOperationDbObject> hoursOfOperation =
      ToMany<LocationHoursOfOperationDbObject>();
  final ToOne<StringDbObject> availabilityExceptions = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> availabilityExceptionsElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> endpoint = ToMany<ReferenceDbObject>();
  LocationDbObject({required this.id});
}

@Entity()
class LocationPositionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirDecimalDbObject> longitude = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> longitudeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> latitude = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> latitudeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> altitude = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> altitudeElement =
      ToOne<PrimitiveElementDbObject>();
  LocationPositionDbObject({required this.id});
}

@Entity()
class LocationHoursOfOperationDbObject {
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
  final ToOne<FhirTimeDbObject> openingTime = ToOne<FhirTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> openingTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirTimeDbObject> closingTime = ToOne<FhirTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> closingTimeElement =
      ToOne<PrimitiveElementDbObject>();
  LocationHoursOfOperationDbObject({required this.id});
}
