// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxPractitionerRole {
  ObjectBoxPractitionerRole({
    String? id,
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
    this.active,
    ObjectBoxElement? activeElement,
    ObjectBoxPeriod? period,
    ObjectBoxReference? practitioner,
    ObjectBoxReference? organization,
    List<ObjectBoxCodeableConcept>? code,
    List<ObjectBoxCodeableConcept>? specialty,
    List<ObjectBoxReference>? location,
    List<ObjectBoxReference>? healthcareService,
    List<ObjectBoxContactPoint>? telecom,
    List<ObjectBoxPractitionerRoleAvailableTime>? availableTime,
    List<ObjectBoxPractitionerRoleNotAvailable>? notAvailable,
    this.availabilityExceptions,
    ObjectBoxElement? availabilityExceptionsElement,
    List<ObjectBoxReference>? endpoint,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.activeElement.target = activeElement;
    this.period.target = period;
    this.practitioner.target = practitioner;
    this.organization.target = organization;
    this.code.addAll(code ?? []);
    this.specialty.addAll(specialty ?? []);
    this.location.addAll(location ?? []);
    this.healthcareService.addAll(healthcareService ?? []);
    this.telecom.addAll(telecom ?? []);
    this.availableTime.addAll(availableTime ?? []);
    this.notAvailable.addAll(notAvailable ?? []);
    this.availabilityExceptionsElement.target = availabilityExceptionsElement;
    this.endpoint.addAll(endpoint ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
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
  bool? active;
  ToOne<ObjectBoxElement> activeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxReference> practitioner = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> organization = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> code = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> specialty =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> location = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> healthcareService = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxContactPoint> telecom = ToMany<ObjectBoxContactPoint>();
  ToMany<ObjectBoxPractitionerRoleAvailableTime> availableTime =
      ToMany<ObjectBoxPractitionerRoleAvailableTime>();
  ToMany<ObjectBoxPractitionerRoleNotAvailable> notAvailable =
      ToMany<ObjectBoxPractitionerRoleNotAvailable>();
  String? availabilityExceptions;
  ToOne<ObjectBoxElement> availabilityExceptionsElement =
      ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> endpoint = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxPractitionerRoleAvailableTime {
  ObjectBoxPractitionerRoleAvailableTime({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.daysOfWeek,
    List<ObjectBoxElement>? daysOfWeekElement,
    this.allDay,
    ObjectBoxElement? allDayElement,
    this.availableStartTime,
    ObjectBoxElement? availableStartTimeElement,
    this.availableEndTime,
    ObjectBoxElement? availableEndTimeElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.daysOfWeekElement.addAll(daysOfWeekElement ?? []);
    this.allDayElement.target = allDayElement;
    this.availableStartTimeElement.target = availableStartTimeElement;
    this.availableEndTimeElement.target = availableEndTimeElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  List<String>? daysOfWeek;
  ToMany<ObjectBoxElement> daysOfWeekElement = ToMany<ObjectBoxElement>();
  bool? allDay;
  ToOne<ObjectBoxElement> allDayElement = ToOne<ObjectBoxElement>();
  String? availableStartTime;
  ToOne<ObjectBoxElement> availableStartTimeElement = ToOne<ObjectBoxElement>();
  String? availableEndTime;
  ToOne<ObjectBoxElement> availableEndTimeElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxPractitionerRoleNotAvailable {
  ObjectBoxPractitionerRoleNotAvailable({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.description,
    ObjectBoxElement? descriptionElement,
    ObjectBoxPeriod? during,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.descriptionElement.target = descriptionElement;
    this.during.target = during;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> during = ToOne<ObjectBoxPeriod>();
}
