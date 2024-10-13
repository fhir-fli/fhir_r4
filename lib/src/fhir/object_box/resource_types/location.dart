// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxLocation {
  ObjectBoxLocation({
    this.id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxIdentifier>? identifier,
    this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxCoding? operationalStatus,
    this.name,
    ObjectBoxElement? nameElement,
    this.alias,
    List<ObjectBoxElement>? aliasElement,
    this.description,
    ObjectBoxElement? descriptionElement,
    this.mode,
    ObjectBoxElement? modeElement,
    List<ObjectBoxCodeableConcept>? type,
    List<ObjectBoxContactPoint>? telecom,
    ObjectBoxAddress? address,
    ObjectBoxCodeableConcept? physicalType,
    ObjectBoxLocationPosition? position,
    ObjectBoxReference? managingOrganization,
    ObjectBoxReference? partOf,
    List<ObjectBoxLocationHoursOfOperation>? hoursOfOperation,
    this.availabilityExceptions,
    ObjectBoxElement? availabilityExceptionsElement,
    List<ObjectBoxReference>? endpoint,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.statusElement.target = statusElement;
    this.operationalStatus.target = operationalStatus;
    this.nameElement.target = nameElement;
    this.aliasElement.addAll(aliasElement ?? []);
    this.descriptionElement.target = descriptionElement;
    this.modeElement.target = modeElement;
    this.type.addAll(type ?? []);
    this.telecom.addAll(telecom ?? []);
    this.address.target = address;
    this.physicalType.target = physicalType;
    this.position.target = position;
    this.managingOrganization.target = managingOrganization;
    this.partOf.target = partOf;
    this.hoursOfOperation.addAll(hoursOfOperation ?? []);
    this.availabilityExceptionsElement.target = availabilityExceptionsElement;
    this.endpoint.addAll(endpoint ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String? status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCoding> operationalStatus = ToOne<ObjectBoxCoding>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  List<String>? alias;
  ToMany<ObjectBoxElement> aliasElement = ToMany<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  String? mode;
  ToOne<ObjectBoxElement> modeElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> type = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxContactPoint> telecom = ToMany<ObjectBoxContactPoint>();
  ToOne<ObjectBoxAddress> address = ToOne<ObjectBoxAddress>();
  ToOne<ObjectBoxCodeableConcept> physicalType =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxLocationPosition> position =
      ToOne<ObjectBoxLocationPosition>();
  ToOne<ObjectBoxReference> managingOrganization = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> partOf = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxLocationHoursOfOperation> hoursOfOperation =
      ToMany<ObjectBoxLocationHoursOfOperation>();
  String? availabilityExceptions;
  ToOne<ObjectBoxElement> availabilityExceptionsElement =
      ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> endpoint = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxLocationPosition {
  ObjectBoxLocationPosition({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.longitude,
    ObjectBoxElement? longitudeElement,
    required this.latitude,
    ObjectBoxElement? latitudeElement,
    this.altitude,
    ObjectBoxElement? altitudeElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.longitudeElement.target = longitudeElement;
    this.latitudeElement.target = latitudeElement;
    this.altitudeElement.target = altitudeElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  double longitude;
  ToOne<ObjectBoxElement> longitudeElement = ToOne<ObjectBoxElement>();
  double latitude;
  ToOne<ObjectBoxElement> latitudeElement = ToOne<ObjectBoxElement>();
  double? altitude;
  ToOne<ObjectBoxElement> altitudeElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxLocationHoursOfOperation {
  ObjectBoxLocationHoursOfOperation({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.daysOfWeek,
    List<ObjectBoxElement>? daysOfWeekElement,
    this.allDay,
    ObjectBoxElement? allDayElement,
    this.openingTime,
    ObjectBoxElement? openingTimeElement,
    this.closingTime,
    ObjectBoxElement? closingTimeElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.daysOfWeekElement.addAll(daysOfWeekElement ?? []);
    this.allDayElement.target = allDayElement;
    this.openingTimeElement.target = openingTimeElement;
    this.closingTimeElement.target = closingTimeElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  List<String>? daysOfWeek;
  ToMany<ObjectBoxElement> daysOfWeekElement = ToMany<ObjectBoxElement>();
  bool? allDay;
  ToOne<ObjectBoxElement> allDayElement = ToOne<ObjectBoxElement>();
  String? openingTime;
  ToOne<ObjectBoxElement> openingTimeElement = ToOne<ObjectBoxElement>();
  String? closingTime;
  ToOne<ObjectBoxElement> closingTimeElement = ToOne<ObjectBoxElement>();
}
