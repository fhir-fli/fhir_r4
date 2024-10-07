import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [PractitionerRole] /// A specific set of Roles/Locations/specialties/services that a practitioner
/// may perform at an organization for a period of time.
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

  /// [identifier] /// Business Identifiers that are specific to a role/location.
  final List<Identifier>? identifier;

  /// [active] /// Whether this practitioner role record is in active use.
  final FhirBoolean? active;
  final Element? activeElement;

  /// [period] /// The period during which the person is authorized to act as a practitioner
  /// in these role(s) for the organization.
  final Period? period;

  /// [practitioner] /// Practitioner that is able to provide the defined services for the
  /// organization.
  final Reference? practitioner;

  /// [organization] /// The organization where the Practitioner performs the roles associated.
  final Reference? organization;

  /// [code] /// Roles which this practitioner is authorized to perform for the
  /// organization.
  final List<CodeableConcept>? code;

  /// [specialty] /// Specific specialty of the practitioner.
  final List<CodeableConcept>? specialty;

  /// [location] /// The location(s) at which this practitioner provides care.
  final List<Reference>? location;

  /// [healthcareService] /// The list of healthcare services that this worker provides for this role's
  /// Organization/Location(s).
  final List<Reference>? healthcareService;

  /// [telecom] /// Contact details that are specific to the role/location/service.
  final List<ContactPoint>? telecom;

  /// [availableTime] /// A collection of times the practitioner is available or performing this role
  /// at the location and/or healthcareservice.
  final List<PractitionerRoleAvailableTime>? availableTime;

  /// [notAvailable] /// The practitioner is not available or performing this role during this
  /// period of time due to the provided reason.
  final List<PractitionerRoleNotAvailable>? notAvailable;

  /// [availabilityExceptions] /// A description of site availability exceptions, e.g. public holiday
  /// availability. Succinctly describing all possible exceptions to normal site
  /// availability as details in the available Times and not available Times.
  final FhirString? availabilityExceptions;
  final Element? availabilityExceptionsElement;

  /// [endpoint] /// Technical endpoints providing access to services operated for the
  /// practitioner with this role.
  final List<Reference>? endpoint;
  @override
  PractitionerRole clone() => throw UnimplementedError();
  PractitionerRole copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirBoolean? active,
    Element? activeElement,
    Period? period,
    Reference? practitioner,
    Reference? organization,
    List<CodeableConcept>? code,
    List<CodeableConcept>? specialty,
    List<Reference>? location,
    List<Reference>? healthcareService,
    List<ContactPoint>? telecom,
    List<PractitionerRoleAvailableTime>? availableTime,
    List<PractitionerRoleNotAvailable>? notAvailable,
    FhirString? availabilityExceptions,
    Element? availabilityExceptionsElement,
    List<Reference>? endpoint,
  }) {
    return PractitionerRole(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      active: active ?? this.active,
      activeElement: activeElement ?? this.activeElement,
      period: period ?? this.period,
      practitioner: practitioner ?? this.practitioner,
      organization: organization ?? this.organization,
      code: code ?? this.code,
      specialty: specialty ?? this.specialty,
      location: location ?? this.location,
      healthcareService: healthcareService ?? this.healthcareService,
      telecom: telecom ?? this.telecom,
      availableTime: availableTime ?? this.availableTime,
      notAvailable: notAvailable ?? this.notAvailable,
      availabilityExceptions:
          availabilityExceptions ?? this.availabilityExceptions,
      availabilityExceptionsElement:
          availabilityExceptionsElement ?? this.availabilityExceptionsElement,
      endpoint: endpoint ?? this.endpoint,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [PractitionerRoleAvailableTime] /// A collection of times the practitioner is available or performing this role
/// at the location and/or healthcareservice.
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

  /// [daysOfWeek] /// Indicates which days of the week are available between the start and end
  /// Times.
  final List<FhirCode>? daysOfWeek;
  final List<Element>? daysOfWeekElement;

  /// [allDay] /// Is this always available? (hence times are irrelevant) e.g. 24 hour
  /// service.
  final FhirBoolean? allDay;
  final Element? allDayElement;

  /// [availableStartTime] /// The opening time of day. Note: If the AllDay flag is set, then this time is
  /// ignored.
  final FhirTime? availableStartTime;
  final Element? availableStartTimeElement;

  /// [availableEndTime] /// The closing time of day. Note: If the AllDay flag is set, then this time is
  /// ignored.
  final FhirTime? availableEndTime;
  final Element? availableEndTimeElement;
  @override
  PractitionerRoleAvailableTime clone() => throw UnimplementedError();
  PractitionerRoleAvailableTime copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<FhirCode>? daysOfWeek,
    List<Element>? daysOfWeekElement,
    FhirBoolean? allDay,
    Element? allDayElement,
    FhirTime? availableStartTime,
    Element? availableStartTimeElement,
    FhirTime? availableEndTime,
    Element? availableEndTimeElement,
  }) {
    return PractitionerRoleAvailableTime(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      daysOfWeek: daysOfWeek ?? this.daysOfWeek,
      daysOfWeekElement: daysOfWeekElement ?? this.daysOfWeekElement,
      allDay: allDay ?? this.allDay,
      allDayElement: allDayElement ?? this.allDayElement,
      availableStartTime: availableStartTime ?? this.availableStartTime,
      availableStartTimeElement:
          availableStartTimeElement ?? this.availableStartTimeElement,
      availableEndTime: availableEndTime ?? this.availableEndTime,
      availableEndTimeElement:
          availableEndTimeElement ?? this.availableEndTimeElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [PractitionerRoleNotAvailable] /// The practitioner is not available or performing this role during this
/// period of time due to the provided reason.
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

  /// [description] /// The reason that can be presented to the user as to why this time is not
  /// available.
  final FhirString description;
  final Element? descriptionElement;

  /// [during] /// Service is not available (seasonally or for a public holiday) from this
  /// date.
  final Period? during;
  @override
  PractitionerRoleNotAvailable clone() => throw UnimplementedError();
  PractitionerRoleNotAvailable copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Element? descriptionElement,
    Period? during,
  }) {
    return PractitionerRoleNotAvailable(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      during: during ?? this.during,
    );
  }
}
