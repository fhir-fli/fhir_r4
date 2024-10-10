import 'dart:convert';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.PractitionerRole);

  @override
  String get fhirType => 'PractitionerRole';

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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.toJson();
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    if (active?.value != null) {
      json['active'] = active!.toJson();
    }
    if (activeElement != null) {
      json['_active'] = activeElement!.toJson();
    }
    if (period != null) {
      json['period'] = period!.toJson();
    }
    if (practitioner != null) {
      json['practitioner'] = practitioner!.toJson();
    }
    if (organization != null) {
      json['organization'] = organization!.toJson();
    }
    if (code != null && code!.isNotEmpty) {
      json['code'] =
          code!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (specialty != null && specialty!.isNotEmpty) {
      json['specialty'] =
          specialty!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (location != null && location!.isNotEmpty) {
      json['location'] =
          location!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (healthcareService != null && healthcareService!.isNotEmpty) {
      json['healthcareService'] =
          healthcareService!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (telecom != null && telecom!.isNotEmpty) {
      json['telecom'] =
          telecom!.map<dynamic>((ContactPoint v) => v.toJson()).toList();
    }
    if (availableTime != null && availableTime!.isNotEmpty) {
      json['availableTime'] = availableTime!
          .map<dynamic>((PractitionerRoleAvailableTime v) => v.toJson())
          .toList();
    }
    if (notAvailable != null && notAvailable!.isNotEmpty) {
      json['notAvailable'] = notAvailable!
          .map<dynamic>((PractitionerRoleNotAvailable v) => v.toJson())
          .toList();
    }
    if (availabilityExceptions?.value != null) {
      json['availabilityExceptions'] = availabilityExceptions!.toJson();
    }
    if (availabilityExceptionsElement != null) {
      json['_availabilityExceptions'] = availabilityExceptionsElement!.toJson();
    }
    if (endpoint != null && endpoint!.isNotEmpty) {
      json['endpoint'] =
          endpoint!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    return json;
  }

  factory PractitionerRole.fromJson(Map<String, dynamic> json) {
    return PractitionerRole(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(json['_language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      active:
          json['active'] != null ? FhirBoolean.fromJson(json['active']) : null,
      activeElement: json['_active'] != null
          ? Element.fromJson(json['_active'] as Map<String, dynamic>)
          : null,
      period: json['period'] != null
          ? Period.fromJson(json['period'] as Map<String, dynamic>)
          : null,
      practitioner: json['practitioner'] != null
          ? Reference.fromJson(json['practitioner'] as Map<String, dynamic>)
          : null,
      organization: json['organization'] != null
          ? Reference.fromJson(json['organization'] as Map<String, dynamic>)
          : null,
      code: json['code'] != null
          ? (json['code'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      specialty: json['specialty'] != null
          ? (json['specialty'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      location: json['location'] != null
          ? (json['location'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      healthcareService: json['healthcareService'] != null
          ? (json['healthcareService'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      telecom: json['telecom'] != null
          ? (json['telecom'] as List<dynamic>)
              .map<ContactPoint>((dynamic v) =>
                  ContactPoint.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      availableTime: json['availableTime'] != null
          ? (json['availableTime'] as List<dynamic>)
              .map<PractitionerRoleAvailableTime>((dynamic v) =>
                  PractitionerRoleAvailableTime.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      notAvailable: json['notAvailable'] != null
          ? (json['notAvailable'] as List<dynamic>)
              .map<PractitionerRoleNotAvailable>((dynamic v) =>
                  PractitionerRoleNotAvailable.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      availabilityExceptions: json['availabilityExceptions'] != null
          ? FhirString.fromJson(json['availabilityExceptions'])
          : null,
      availabilityExceptionsElement: json['_availabilityExceptions'] != null
          ? Element.fromJson(
              json['_availabilityExceptions'] as Map<String, dynamic>)
          : null,
      endpoint: json['endpoint'] != null
          ? (json['endpoint'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
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
    List<CodeableConcept>? specialty,
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

  /// [daysOfWeek] /// Indicates which days of the week are available between the start and end
  /// Times.
  final List<DaysOfWeek>? daysOfWeek;
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (daysOfWeek != null && daysOfWeek!.isNotEmpty) {
      json['daysOfWeek'] =
          daysOfWeek!.map<dynamic>((DaysOfWeek v) => v.toJson()).toList();
    }
    if (allDay?.value != null) {
      json['allDay'] = allDay!.toJson();
    }
    if (allDayElement != null) {
      json['_allDay'] = allDayElement!.toJson();
    }
    if (availableStartTime?.value != null) {
      json['availableStartTime'] = availableStartTime!.toJson();
    }
    if (availableStartTimeElement != null) {
      json['_availableStartTime'] = availableStartTimeElement!.toJson();
    }
    if (availableEndTime?.value != null) {
      json['availableEndTime'] = availableEndTime!.toJson();
    }
    if (availableEndTimeElement != null) {
      json['_availableEndTime'] = availableEndTimeElement!.toJson();
    }
    return json;
  }

  factory PractitionerRoleAvailableTime.fromJson(Map<String, dynamic> json) {
    return PractitionerRoleAvailableTime(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      daysOfWeek: json['daysOfWeek'] != null
          ? (json['daysOfWeek'] as List<dynamic>)
              .map<DaysOfWeek>((dynamic v) => DaysOfWeek.fromJson(v as dynamic))
              .toList()
          : null,
      daysOfWeekElement: json['_daysOfWeek'] != null
          ? (json['_daysOfWeek'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      allDay:
          json['allDay'] != null ? FhirBoolean.fromJson(json['allDay']) : null,
      allDayElement: json['_allDay'] != null
          ? Element.fromJson(json['_allDay'] as Map<String, dynamic>)
          : null,
      availableStartTime: json['availableStartTime'] != null
          ? FhirTime.fromJson(json['availableStartTime'])
          : null,
      availableStartTimeElement: json['_availableStartTime'] != null
          ? Element.fromJson(
              json['_availableStartTime'] as Map<String, dynamic>)
          : null,
      availableEndTime: json['availableEndTime'] != null
          ? FhirTime.fromJson(json['availableEndTime'])
          : null,
      availableEndTimeElement: json['_availableEndTime'] != null
          ? Element.fromJson(json['_availableEndTime'] as Map<String, dynamic>)
          : null,
    );
  }
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

  /// [description] /// The reason that can be presented to the user as to why this time is not
  /// available.
  final FhirString description;
  final Element? descriptionElement;

  /// [during] /// Service is not available (seasonally or for a public holiday) from this
  /// date.
  final Period? during;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['description'] = description.toJson();
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (during != null) {
      json['during'] = during!.toJson();
    }
    return json;
  }

  factory PractitionerRoleNotAvailable.fromJson(Map<String, dynamic> json) {
    return PractitionerRoleNotAvailable(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      description: FhirString.fromJson(json['description']),
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      during: json['during'] != null
          ? Period.fromJson(json['during'] as Map<String, dynamic>)
          : null,
    );
  }
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
