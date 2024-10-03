import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class LocationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Location';

  String? id;

  @ToOne()
  FhirMetaEntity? meta;

  String? implicitRules;

  @ToOne()
  PrimitiveElementEntity? implicitRulesElement;

  String? language;

  @ToOne()
  PrimitiveElementEntity? languageElement;

  @ToOne()
  NarrativeEntity? text;

  @ToMany()
  List<ResourceEntity>? contained;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<IdentifierEntity>? identifier;

  @ToOne()
  LocationStatusEntity? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToOne()
  CodingEntity? operationalStatus;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  List<String>? alias;

  @ToMany()
  List<PrimitiveElementEntity>? aliasElement;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToOne()
  LocationModeEntity? mode;

  @ToOne()
  PrimitiveElementEntity? modeElement;

  @ToMany()
  List<CodeableConceptEntity>? type;

  @ToMany()
  List<ContactPointEntity>? telecom;

  @ToOne()
  AddressEntity? address;

  @ToOne()
  CodeableConceptEntity? physicalType;

  @ToOne()
  LocationPositionEntity? position;

  @ToOne()
  ReferenceEntity? managingOrganization;

  @ToOne()
  ReferenceEntity? partOf;

  @ToMany()
  List<LocationHoursOfOperationEntity>? hoursOfOperation;

  String? availabilityExceptions;

  @ToOne()
  PrimitiveElementEntity? availabilityExceptionsElement;

  @ToMany()
  List<ReferenceEntity>? endpoint;
}

class LocationPositionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  double? longitude;

  @ToOne()
  PrimitiveElementEntity? longitudeElement;

  double? latitude;

  @ToOne()
  PrimitiveElementEntity? latitudeElement;

  double? altitude;

  @ToOne()
  PrimitiveElementEntity? altitudeElement;
}

class LocationHoursOfOperationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  List<String>? daysOfWeek;

  @ToMany()
  List<PrimitiveElementEntity>? daysOfWeekElement;

  bool? allDay;

  @ToOne()
  PrimitiveElementEntity? allDayElement;

  String? openingTime;

  @ToOne()
  PrimitiveElementEntity? openingTimeElement;

  String? closingTime;

  @ToOne()
  PrimitiveElementEntity? closingTimeElement;
}
