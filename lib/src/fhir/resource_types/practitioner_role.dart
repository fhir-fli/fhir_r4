import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'practitioner_role.g.dart';

/// [PractitionerRole] /// A specific set of Roles/Locations/specialties/services that a practitioner
/// may perform at an organization for a period of time.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.PractitionerRole);
  @override
  String get fhirType => 'PractitionerRole';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business Identifiers that are specific to a role/location.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [active] /// Whether this practitioner role record is in active use.
  @JsonKey(name: 'active')
  final FhirBoolean? active;
  @JsonKey(name: '_active')
  final Element? activeElement;

  /// [period] /// The period during which the person is authorized to act as a practitioner
  /// in these role(s) for the organization.
  @JsonKey(name: 'period')
  final Period? period;

  /// [practitioner] /// Practitioner that is able to provide the defined services for the
  /// organization.
  @JsonKey(name: 'practitioner')
  final Reference? practitioner;

  /// [organization] /// The organization where the Practitioner performs the roles associated.
  @JsonKey(name: 'organization')
  final Reference? organization;

  /// [code] /// Roles which this practitioner is authorized to perform for the
  /// organization.
  @JsonKey(name: 'code')
  final List<CodeableConcept>? code;

  /// [specialty] /// Specific specialty of the practitioner.
  @JsonKey(name: 'specialty')
  final List<PracticeSettingCodeValueSet>? specialty;

  /// [location] /// The location(s) at which this practitioner provides care.
  @JsonKey(name: 'location')
  final List<Reference>? location;

  /// [healthcareService] /// The list of healthcare services that this worker provides for this role's
  /// Organization/Location(s).
  @JsonKey(name: 'healthcareService')
  final List<Reference>? healthcareService;

  /// [telecom] /// Contact details that are specific to the role/location/service.
  @JsonKey(name: 'telecom')
  final List<ContactPoint>? telecom;

  /// [availableTime] /// A collection of times the practitioner is available or performing this role
  /// at the location and/or healthcareservice.
  @JsonKey(name: 'availableTime')
  final List<PractitionerRoleAvailableTime>? availableTime;

  /// [notAvailable] /// The practitioner is not available or performing this role during this
  /// period of time due to the provided reason.
  @JsonKey(name: 'notAvailable')
  final List<PractitionerRoleNotAvailable>? notAvailable;

  /// [availabilityExceptions] /// A description of site availability exceptions, e.g. public holiday
  /// availability. Succinctly describing all possible exceptions to normal site
  /// availability as details in the available Times and not available Times.
  @JsonKey(name: 'availabilityExceptions')
  final FhirString? availabilityExceptions;
  @JsonKey(name: '_availabilityExceptions')
  final Element? availabilityExceptionsElement;

  /// [endpoint] /// Technical endpoints providing access to services operated for the
  /// practitioner with this role.
  @JsonKey(name: 'endpoint')
  final List<Reference>? endpoint;
  factory PractitionerRole.fromJson(Map<String, dynamic> json) =>
      _$PractitionerRoleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PractitionerRoleToJson(this);

  @override
  PractitionerRole clone() => throw UnimplementedError();
  @override
  PractitionerRole copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
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
    List<PracticeSettingCodeValueSet>? specialty,
    List<Reference>? location,
    List<Reference>? healthcareService,
    List<ContactPoint>? telecom,
    List<PractitionerRoleAvailableTime>? availableTime,
    List<PractitionerRoleNotAvailable>? notAvailable,
    FhirString? availabilityExceptions,
    Element? availabilityExceptionsElement,
    List<Reference>? endpoint,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory PractitionerRole.fromYaml(dynamic yaml) => yaml is String
      ? PractitionerRole.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? PractitionerRole.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'PractitionerRole cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory PractitionerRole.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PractitionerRole.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [PractitionerRoleAvailableTime] /// A collection of times the practitioner is available or performing this role
/// at the location and/or healthcareservice.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'PractitionerRoleAvailableTime';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [daysOfWeek] /// Indicates which days of the week are available between the start and end
  /// Times.
  @JsonKey(name: 'daysOfWeek')
  final List<DaysOfWeek>? daysOfWeek;
  @JsonKey(name: '_daysOfWeek')
  final List<Element>? daysOfWeekElement;

  /// [allDay] /// Is this always available? (hence times are irrelevant) e.g. 24 hour
  /// service.
  @JsonKey(name: 'allDay')
  final FhirBoolean? allDay;
  @JsonKey(name: '_allDay')
  final Element? allDayElement;

  /// [availableStartTime] /// The opening time of day. Note: If the AllDay flag is set, then this time is
  /// ignored.
  @JsonKey(name: 'availableStartTime')
  final FhirTime? availableStartTime;
  @JsonKey(name: '_availableStartTime')
  final Element? availableStartTimeElement;

  /// [availableEndTime] /// The closing time of day. Note: If the AllDay flag is set, then this time is
  /// ignored.
  @JsonKey(name: 'availableEndTime')
  final FhirTime? availableEndTime;
  @JsonKey(name: '_availableEndTime')
  final Element? availableEndTimeElement;
  factory PractitionerRoleAvailableTime.fromJson(Map<String, dynamic> json) =>
      _$PractitionerRoleAvailableTimeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PractitionerRoleAvailableTimeToJson(this);

  @override
  PractitionerRoleAvailableTime clone() => throw UnimplementedError();
  @override
  PractitionerRoleAvailableTime copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<DaysOfWeek>? daysOfWeek,
    List<Element>? daysOfWeekElement,
    FhirBoolean? allDay,
    Element? allDayElement,
    FhirTime? availableStartTime,
    Element? availableStartTimeElement,
    FhirTime? availableEndTime,
    Element? availableEndTimeElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory PractitionerRoleAvailableTime.fromYaml(dynamic yaml) => yaml is String
      ? PractitionerRoleAvailableTime.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? PractitionerRoleAvailableTime.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'PractitionerRoleAvailableTime cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory PractitionerRoleAvailableTime.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PractitionerRoleAvailableTime.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [PractitionerRoleNotAvailable] /// The practitioner is not available or performing this role during this
/// period of time due to the provided reason.
@JsonSerializable()
class PractitionerRoleNotAvailable extends BackboneElement {
  PractitionerRoleNotAvailable({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.description,
    this.descriptionElement,
    this.during,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'PractitionerRoleNotAvailable';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// The reason that can be presented to the user as to why this time is not
  /// available.
  @JsonKey(name: 'description')
  final FhirString description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [during] /// Service is not available (seasonally or for a public holiday) from this
  /// date.
  @JsonKey(name: 'during')
  final Period? during;
  factory PractitionerRoleNotAvailable.fromJson(Map<String, dynamic> json) =>
      _$PractitionerRoleNotAvailableFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PractitionerRoleNotAvailableToJson(this);

  @override
  PractitionerRoleNotAvailable clone() => throw UnimplementedError();
  @override
  PractitionerRoleNotAvailable copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Element? descriptionElement,
    Period? during,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return PractitionerRoleNotAvailable(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      during: during ?? this.during,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory PractitionerRoleNotAvailable.fromYaml(dynamic yaml) => yaml is String
      ? PractitionerRoleNotAvailable.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? PractitionerRoleNotAvailable.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'PractitionerRoleNotAvailable cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory PractitionerRoleNotAvailable.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PractitionerRoleNotAvailable.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
