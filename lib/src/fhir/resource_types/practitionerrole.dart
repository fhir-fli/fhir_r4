import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class PractitionerRole extends DomainResource {
  final List<Identifier>? identifier;
  final FhirBoolean? active;
  final Element? activeElement;
  final Period? period;
  final Reference? practitioner;
  final Reference? organization;
  final List<CodeableConcept>? code;
  final List<CodeableConcept>? specialty;
  final List<Reference>? location;
  final List<Reference>? healthcareService;
  final List<ContactPoint>? telecom;
  final List<PractitionerRoleAvailableTime>? availableTime;
  final List<PractitionerRoleNotAvailable>? notAvailable;
  final FhirString? availabilityExceptions;
  final Element? availabilityExceptionsElement;
  final List<Reference>? endpoint;

  PractitionerRole({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.active,
    this.activeElement,
    this.period,
    this.practitioner,
    this.organization,
    this.code,
    this.specialty,
    this.location,
    this.healthcareService,
    this.telecom,
    this.availableTime,
    this.notAvailable,
    this.availabilityExceptions,
    this.availabilityExceptionsElement,
    this.endpoint,
  }): super(resourceType: R4ResourceType.PractitionerRole);

@override
PractitionerRole clone() => this;

}


@Data()
@JsonCodable()
class PractitionerRoleAvailableTime {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<FhirCode>? daysOfWeek;
  final List<Element>? daysOfWeekElement;
  final FhirBoolean? allDay;
  final Element? allDayElement;
  final FhirTime? availableStartTime;
  final Element? availableStartTimeElement;
  final FhirTime? availableEndTime;
  final Element? availableEndTimeElement;

  PractitionerRoleAvailableTime({
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

}


@Data()
@JsonCodable()
class PractitionerRoleNotAvailable {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? description;
  final Element? descriptionElement;
  final Period? during;

  PractitionerRoleNotAvailable({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    this.descriptionElement,
    this.during,
  });

}


