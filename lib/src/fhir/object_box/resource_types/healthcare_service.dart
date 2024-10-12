// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxHealthcareService {
  ObjectBoxHealthcareService({
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
    this.active,
    this.activeElement,
    this.providedBy,
    this.category,
    this.type,
    this.specialty,
    this.location,
    this.name,
    this.nameElement,
    this.comment,
    this.commentElement,
    this.extraDetails,
    this.extraDetailsElement,
    this.photo,
    this.telecom,
    this.coverageArea,
    this.serviceProvisionCode,
    this.eligibility,
    this.program,
    this.characteristic,
    this.communication,
    this.referralMethod,
    this.appointmentRequired,
    this.appointmentRequiredElement,
    this.availableTime,
    this.notAvailable,
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
  bool? active;
  ToOne<ObjectBoxElement>? activeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? providedBy = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept>? category =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? type = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? specialty =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? location = ToMany<ObjectBoxReference>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? comment;
  ToOne<ObjectBoxElement>? commentElement = ToOne<ObjectBoxElement>();
  String? extraDetails;
  ToOne<ObjectBoxElement>? extraDetailsElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAttachment>? photo = ToOne<ObjectBoxAttachment>();
  ToMany<ObjectBoxContactPoint>? telecom = ToMany<ObjectBoxContactPoint>();
  ToMany<ObjectBoxReference>? coverageArea = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept>? serviceProvisionCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxHealthcareServiceEligibility>? eligibility =
      ToMany<ObjectBoxHealthcareServiceEligibility>();
  ToMany<ObjectBoxCodeableConcept>? program =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? characteristic =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? communication =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? referralMethod =
      ToMany<ObjectBoxCodeableConcept>();
  bool? appointmentRequired;
  ToOne<ObjectBoxElement>? appointmentRequiredElement =
      ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxHealthcareServiceAvailableTime>? availableTime =
      ToMany<ObjectBoxHealthcareServiceAvailableTime>();
  ToMany<ObjectBoxHealthcareServiceNotAvailable>? notAvailable =
      ToMany<ObjectBoxHealthcareServiceNotAvailable>();
  String? availabilityExceptions;
  ToOne<ObjectBoxElement>? availabilityExceptionsElement =
      ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference>? endpoint = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxHealthcareServiceEligibility {
  ObjectBoxHealthcareServiceEligibility({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.comment,
    this.commentElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? code = ToOne<ObjectBoxCodeableConcept>();
  String? comment;
  ToOne<ObjectBoxElement>? commentElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxHealthcareServiceAvailableTime {
  ObjectBoxHealthcareServiceAvailableTime({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.daysOfWeek,
    this.daysOfWeekElement,
    this.allDay,
    this.allDayElement,
    this.availableStartTime,
    this.availableStartTimeElement,
    this.availableEndTime,
    this.availableEndTimeElement,
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
  String? availableStartTime;
  ToOne<ObjectBoxElement>? availableStartTimeElement =
      ToOne<ObjectBoxElement>();
  String? availableEndTime;
  ToOne<ObjectBoxElement>? availableEndTimeElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxHealthcareServiceNotAvailable {
  ObjectBoxHealthcareServiceNotAvailable({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.description,
    this.descriptionElement,
    this.during,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? during = ToOne<ObjectBoxPeriod>();
}
