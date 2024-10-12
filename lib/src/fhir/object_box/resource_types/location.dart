// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxLocation {
  ObjectBoxLocation({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.statusElement,
    this.operationalStatus,
    this.name,
    this.nameElement,
    this.alias,
    this.aliasElement,
    this.description,
    this.descriptionElement,
    this.mode,
    this.modeElement,
    this.type,
    this.telecom,
    this.address,
    this.physicalType,
    this.position,
    this.managingOrganization,
    this.partOf,
    this.hoursOfOperation,
    this.availabilityExceptions,
    this.availabilityExceptionsElement,
    this.endpoint,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  String? status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCoding>? operationalStatus = ToOne<ObjectBoxCoding>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  List<String>? alias;
  ToMany<ObjectBoxElement>? aliasElement = ToMany<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  String? mode;
  ToOne<ObjectBoxElement>? modeElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? type = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxContactPoint>? telecom = ToMany<ObjectBoxContactPoint>();
  ToOne<ObjectBoxAddress>? address = ToOne<ObjectBoxAddress>();
  ToOne<ObjectBoxCodeableConcept>? physicalType =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxLocationPosition>? position =
      ToOne<ObjectBoxLocationPosition>();
  ToOne<ObjectBoxReference>? managingOrganization = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? partOf = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxLocationHoursOfOperation>? hoursOfOperation =
      ToMany<ObjectBoxLocationHoursOfOperation>();
  String? availabilityExceptions;
  ToOne<ObjectBoxElement>? availabilityExceptionsElement =
      ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference>? endpoint = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxLocationPosition {
  ObjectBoxLocationPosition({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.longitude,
    this.longitudeElement,
    required this.latitude,
    this.latitudeElement,
    this.altitude,
    this.altitudeElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  double longitude;
  ToOne<ObjectBoxElement>? longitudeElement = ToOne<ObjectBoxElement>();
  double latitude;
  ToOne<ObjectBoxElement>? latitudeElement = ToOne<ObjectBoxElement>();
  double? altitude;
  ToOne<ObjectBoxElement>? altitudeElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxLocationHoursOfOperation {
  ObjectBoxLocationHoursOfOperation({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.daysOfWeek,
    this.daysOfWeekElement,
    this.allDay,
    this.allDayElement,
    this.openingTime,
    this.openingTimeElement,
    this.closingTime,
    this.closingTimeElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  List<String>? daysOfWeek;
  ToMany<ObjectBoxElement>? daysOfWeekElement = ToMany<ObjectBoxElement>();
  bool? allDay;
  ToOne<ObjectBoxElement>? allDayElement = ToOne<ObjectBoxElement>();
  String? openingTime;
  ToOne<ObjectBoxElement>? openingTimeElement = ToOne<ObjectBoxElement>();
  String? closingTime;
  ToOne<ObjectBoxElement>? closingTimeElement = ToOne<ObjectBoxElement>();
}
