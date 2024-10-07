import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class PractitionerRole extends DomainResource {
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
  }) : super(resourceType: R4ResourceType.PractitionerRole);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  PractitionerRole clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class PractitionerRoleAvailableTime extends BackboneElement {
  PractitionerRoleAvailableTime({
    super.id,
    super.extension_,
    super.modifierExtension,
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
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<FhirCode>? daysOfWeek;
  final List<Element>? daysOfWeekElement;
  final FhirBoolean? allDay;
  final Element? allDayElement;
  final FhirTime? availableStartTime;
  final Element? availableStartTimeElement;
  final FhirTime? availableEndTime;
  final Element? availableEndTimeElement;
  @override
  PractitionerRoleAvailableTime clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class PractitionerRoleNotAvailable extends BackboneElement {
  PractitionerRoleNotAvailable({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.description,
    this.descriptionElement,
    this.during,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString description;
  final Element? descriptionElement;
  final Period? during;
  @override
  PractitionerRoleNotAvailable clone() => throw UnimplementedError();
}
