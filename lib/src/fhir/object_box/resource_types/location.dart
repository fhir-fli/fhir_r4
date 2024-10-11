import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Location extends Resource {
  Location({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.operationalStatus,
    this.name,
    this.alias,
    this.description,
    this.mode,
    this.type,
    this.telecom,
    this.address,
    this.physicalType,
    this.position,
    this.managingOrganization,
    this.partOf,
    this.hoursOfOperation,
    this.availabilityExceptions,
    this.endpoint,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? status;
  ToOne<Coding>? operationalStatus = ToOne<Coding>();
  String? name;
  List<String>? alias;
  String? description;
  String? mode;
  ToMany<CodeableConcept>? type = ToMany<CodeableConcept>();
  ToMany<ContactPoint>? telecom = ToMany<ContactPoint>();
  ToOne<Address>? address = ToOne<Address>();
  ToOne<CodeableConcept>? physicalType = ToOne<CodeableConcept>();
  ToOne<LocationPosition>? position = ToOne<LocationPosition>();
  ToOne<Reference>? managingOrganization = ToOne<Reference>();
  ToOne<Reference>? partOf = ToOne<Reference>();
  ToMany<LocationHoursOfOperation>? hoursOfOperation =
      ToMany<LocationHoursOfOperation>();
  String? availabilityExceptions;
  ToMany<Reference>? endpoint = ToMany<Reference>();
}

@Entity()
class LocationPosition {
  LocationPosition({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.longitude,
    required this.latitude,
    this.altitude,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  double longitude;
  double latitude;
  double? altitude;
}

@Entity()
class LocationHoursOfOperation {
  LocationHoursOfOperation({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.daysOfWeek,
    this.allDay,
    this.openingTime,
    this.closingTime,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  List<String>? daysOfWeek;
  bool? allDay;
  String? openingTime;
  String? closingTime;
}
