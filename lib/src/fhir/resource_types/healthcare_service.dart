import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class HealthcareService extends DomainResource {
  HealthcareService({
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
  }) : super(resourceType: R4ResourceType.HealthcareService);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<Identifier>? identifier;
  final FhirBoolean? active;
  final Element? activeElement;
  final Reference? providedBy;
  final List<CodeableConcept>? category;
  final List<CodeableConcept>? type;
  final List<CodeableConcept>? specialty;
  final List<Reference>? location;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? comment;
  final Element? commentElement;
  final FhirMarkdown? extraDetails;
  final Element? extraDetailsElement;
  final Attachment? photo;
  final List<ContactPoint>? telecom;
  final List<Reference>? coverageArea;
  final List<CodeableConcept>? serviceProvisionCode;
  final List<HealthcareServiceEligibility>? eligibility;
  final List<CodeableConcept>? program;
  final List<CodeableConcept>? characteristic;
  final List<CodeableConcept>? communication;
  final List<CodeableConcept>? referralMethod;
  final FhirBoolean? appointmentRequired;
  final Element? appointmentRequiredElement;
  final List<HealthcareServiceAvailableTime>? availableTime;
  final List<HealthcareServiceNotAvailable>? notAvailable;
  final FhirString? availabilityExceptions;
  final Element? availabilityExceptionsElement;
  final List<Reference>? endpoint;
  @override
  HealthcareService clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class HealthcareServiceEligibility extends BackboneElement {
  HealthcareServiceEligibility({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.comment,
    this.commentElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept? code;
  final FhirMarkdown? comment;
  final Element? commentElement;
  @override
  HealthcareServiceEligibility clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class HealthcareServiceAvailableTime extends BackboneElement {
  HealthcareServiceAvailableTime({
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
  HealthcareServiceAvailableTime clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class HealthcareServiceNotAvailable extends BackboneElement {
  HealthcareServiceNotAvailable({
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
  HealthcareServiceNotAvailable clone() => throw UnimplementedError();
}
