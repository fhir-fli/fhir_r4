// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxHealthcareService {
  ObjectBoxHealthcareService({
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
    ObjectBoxReference? providedBy,
    List<ObjectBoxCodeableConcept>? category,
    List<ObjectBoxCodeableConcept>? type,
    List<ObjectBoxCodeableConcept>? specialty,
    List<ObjectBoxReference>? location,
    this.name,
    ObjectBoxElement? nameElement,
    this.comment,
    ObjectBoxElement? commentElement,
    this.extraDetails,
    ObjectBoxElement? extraDetailsElement,
    ObjectBoxAttachment? photo,
    List<ObjectBoxContactPoint>? telecom,
    List<ObjectBoxReference>? coverageArea,
    List<ObjectBoxCodeableConcept>? serviceProvisionCode,
    List<ObjectBoxHealthcareServiceEligibility>? eligibility,
    List<ObjectBoxCodeableConcept>? program,
    List<ObjectBoxCodeableConcept>? characteristic,
    List<ObjectBoxCodeableConcept>? communication,
    List<ObjectBoxCodeableConcept>? referralMethod,
    this.appointmentRequired,
    ObjectBoxElement? appointmentRequiredElement,
    List<ObjectBoxHealthcareServiceAvailableTime>? availableTime,
    List<ObjectBoxHealthcareServiceNotAvailable>? notAvailable,
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
    this.providedBy.target = providedBy;
    this.category.addAll(category ?? []);
    this.type.addAll(type ?? []);
    this.specialty.addAll(specialty ?? []);
    this.location.addAll(location ?? []);
    this.nameElement.target = nameElement;
    this.commentElement.target = commentElement;
    this.extraDetailsElement.target = extraDetailsElement;
    this.photo.target = photo;
    this.telecom.addAll(telecom ?? []);
    this.coverageArea.addAll(coverageArea ?? []);
    this.serviceProvisionCode.addAll(serviceProvisionCode ?? []);
    this.eligibility.addAll(eligibility ?? []);
    this.program.addAll(program ?? []);
    this.characteristic.addAll(characteristic ?? []);
    this.communication.addAll(communication ?? []);
    this.referralMethod.addAll(referralMethod ?? []);
    this.appointmentRequiredElement.target = appointmentRequiredElement;
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
  ToOne<ObjectBoxReference> providedBy = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> category =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> type = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> specialty =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> location = ToMany<ObjectBoxReference>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? comment;
  ToOne<ObjectBoxElement> commentElement = ToOne<ObjectBoxElement>();
  String? extraDetails;
  ToOne<ObjectBoxElement> extraDetailsElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAttachment> photo = ToOne<ObjectBoxAttachment>();
  ToMany<ObjectBoxContactPoint> telecom = ToMany<ObjectBoxContactPoint>();
  ToMany<ObjectBoxReference> coverageArea = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> serviceProvisionCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxHealthcareServiceEligibility> eligibility =
      ToMany<ObjectBoxHealthcareServiceEligibility>();
  ToMany<ObjectBoxCodeableConcept> program = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> characteristic =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> communication =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> referralMethod =
      ToMany<ObjectBoxCodeableConcept>();
  bool? appointmentRequired;
  ToOne<ObjectBoxElement> appointmentRequiredElement =
      ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxHealthcareServiceAvailableTime> availableTime =
      ToMany<ObjectBoxHealthcareServiceAvailableTime>();
  ToMany<ObjectBoxHealthcareServiceNotAvailable> notAvailable =
      ToMany<ObjectBoxHealthcareServiceNotAvailable>();
  String? availabilityExceptions;
  ToOne<ObjectBoxElement> availabilityExceptionsElement =
      ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> endpoint = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxHealthcareServiceEligibility {
  ObjectBoxHealthcareServiceEligibility({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? code,
    this.comment,
    ObjectBoxElement? commentElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.code.target = code;
    this.commentElement.target = commentElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  String? comment;
  ToOne<ObjectBoxElement> commentElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxHealthcareServiceAvailableTime {
  ObjectBoxHealthcareServiceAvailableTime({
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
class ObjectBoxHealthcareServiceNotAvailable {
  ObjectBoxHealthcareServiceNotAvailable({
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
