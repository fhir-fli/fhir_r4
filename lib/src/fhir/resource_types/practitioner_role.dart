import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [PractitionerRole]
/// A specific set of Roles/Locations/specialties/services that a
/// practitioner may perform at an organization for a period of time.
class PractitionerRole extends DomainResource {
  /// Primary constructor for
  /// [PractitionerRole]

  PractitionerRole({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.active,
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
    this.endpoint,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.PractitionerRole,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PractitionerRole.fromJson(
    Map<String, dynamic> json,
  ) {
    return PractitionerRole(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      active: json['active'] != null
          ? FhirBoolean.fromJson({
              'value': json['active'],
              '_value': json['_active'],
            })
          : null,
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
      practitioner: json['practitioner'] != null
          ? Reference.fromJson(
              json['practitioner'] as Map<String, dynamic>,
            )
          : null,
      organization: json['organization'] != null
          ? Reference.fromJson(
              json['organization'] as Map<String, dynamic>,
            )
          : null,
      code: json['code'] != null
          ? (json['code'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      specialty: json['specialty'] != null
          ? (json['specialty'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      location: json['location'] != null
          ? (json['location'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      healthcareService: json['healthcareService'] != null
          ? (json['healthcareService'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      telecom: json['telecom'] != null
          ? (json['telecom'] as List<dynamic>)
              .map<ContactPoint>(
                (v) => ContactPoint.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      availableTime: json['availableTime'] != null
          ? (json['availableTime'] as List<dynamic>)
              .map<PractitionerRoleAvailableTime>(
                (v) => PractitionerRoleAvailableTime.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      notAvailable: json['notAvailable'] != null
          ? (json['notAvailable'] as List<dynamic>)
              .map<PractitionerRoleNotAvailable>(
                (v) => PractitionerRoleNotAvailable.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      availabilityExceptions: json['availabilityExceptions'] != null
          ? FhirString.fromJson({
              'value': json['availabilityExceptions'],
              '_value': json['_availabilityExceptions'],
            })
          : null,
      endpoint: json['endpoint'] != null
          ? (json['endpoint'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [PractitionerRole]
  /// from a [String] or [YamlMap] object
  factory PractitionerRole.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? PractitionerRole.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? PractitionerRole.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'PractitionerRole '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [PractitionerRole]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PractitionerRole.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PractitionerRole.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'PractitionerRole';

  /// [identifier]
  /// Business Identifiers that are specific to a role/location.
  final List<Identifier>? identifier;

  /// [active]
  /// Whether this practitioner role record is in active use.
  final FhirBoolean? active;

  /// [period]
  /// The period during which the person is authorized to act as a
  /// practitioner in these role(s) for the organization.
  final Period? period;

  /// [practitioner]
  /// Practitioner that is able to provide the defined services for the
  /// organization.
  final Reference? practitioner;

  /// [organization]
  /// The organization where the Practitioner performs the roles associated.
  final Reference? organization;

  /// [code]
  /// Roles which this practitioner is authorized to perform for the
  /// organization.
  final List<CodeableConcept>? code;

  /// [specialty]
  /// Specific specialty of the practitioner.
  final List<CodeableConcept>? specialty;

  /// [location]
  /// The location(s) at which this practitioner provides care.
  final List<Reference>? location;

  /// [healthcareService]
  /// The list of healthcare services that this worker provides for this
  /// role's Organization/Location(s).
  final List<Reference>? healthcareService;

  /// [telecom]
  /// Contact details that are specific to the role/location/service.
  final List<ContactPoint>? telecom;

  /// [availableTime]
  /// A collection of times the practitioner is available or performing this
  /// role at the location and/or healthcareservice.
  final List<PractitionerRoleAvailableTime>? availableTime;

  /// [notAvailable]
  /// The practitioner is not available or performing this role during this
  /// period of time due to the provided reason.
  final List<PractitionerRoleNotAvailable>? notAvailable;

  /// [availabilityExceptions]
  /// A description of site availability exceptions, e.g. public holiday
  /// availability. Succinctly describing all possible exceptions to normal
  /// site availability as details in the available Times and not available
  /// Times.
  final FhirString? availabilityExceptions;

  /// [endpoint]
  /// Technical endpoints providing access to services operated for the
  /// practitioner with this role.
  final List<Reference>? endpoint;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      final fieldJson1 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_implicitRules'] = fieldJson1['_value'];
      }
    }

    if (language != null) {
      json['language'] = language!.toJson();
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    if (active != null) {
      final fieldJson8 = active!.toJson();
      json['active'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_active'] = fieldJson8['_value'];
      }
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
      json['code'] = code!.map((e) => e.toJson()).toList();
    }

    if (specialty != null && specialty!.isNotEmpty) {
      json['specialty'] = specialty!.map((e) => e.toJson()).toList();
    }

    if (location != null && location!.isNotEmpty) {
      json['location'] = location!.map((e) => e.toJson()).toList();
    }

    if (healthcareService != null && healthcareService!.isNotEmpty) {
      json['healthcareService'] =
          healthcareService!.map((e) => e.toJson()).toList();
    }

    if (telecom != null && telecom!.isNotEmpty) {
      json['telecom'] = telecom!.map((e) => e.toJson()).toList();
    }

    if (availableTime != null && availableTime!.isNotEmpty) {
      json['availableTime'] = availableTime!.map((e) => e.toJson()).toList();
    }

    if (notAvailable != null && notAvailable!.isNotEmpty) {
      json['notAvailable'] = notAvailable!.map((e) => e.toJson()).toList();
    }

    if (availabilityExceptions != null) {
      final fieldJson19 = availabilityExceptions!.toJson();
      json['availabilityExceptions'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_availabilityExceptions'] = fieldJson19['_value'];
      }
    }

    if (endpoint != null && endpoint!.isNotEmpty) {
      json['endpoint'] = endpoint!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  PractitionerRole clone() => throw UnimplementedError();
  @override
  PractitionerRole copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirBoolean? active,
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
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      active: active ?? this.active,
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
      endpoint: endpoint ?? this.endpoint,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [PractitionerRoleAvailableTime]
/// A collection of times the practitioner is available or performing this
/// role at the location and/or healthcareservice.
class PractitionerRoleAvailableTime extends BackboneElement {
  /// Primary constructor for
  /// [PractitionerRoleAvailableTime]

  PractitionerRoleAvailableTime({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.daysOfWeek,
    this.allDay,
    this.availableStartTime,
    this.availableEndTime,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PractitionerRoleAvailableTime.fromJson(
    Map<String, dynamic> json,
  ) {
    return PractitionerRoleAvailableTime(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      daysOfWeek: parsePrimitiveList<DaysOfWeek>(
        json['daysOfWeek'] as List<dynamic>?,
        json['_daysOfWeek'] as List<dynamic>?,
        fromJson: DaysOfWeek.fromJson,
      ),
      allDay: json['allDay'] != null
          ? FhirBoolean.fromJson({
              'value': json['allDay'],
              '_value': json['_allDay'],
            })
          : null,
      availableStartTime: json['availableStartTime'] != null
          ? FhirTime.fromJson({
              'value': json['availableStartTime'],
              '_value': json['_availableStartTime'],
            })
          : null,
      availableEndTime: json['availableEndTime'] != null
          ? FhirTime.fromJson({
              'value': json['availableEndTime'],
              '_value': json['_availableEndTime'],
            })
          : null,
    );
  }

  /// Deserialize [PractitionerRoleAvailableTime]
  /// from a [String] or [YamlMap] object
  factory PractitionerRoleAvailableTime.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? PractitionerRoleAvailableTime.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? PractitionerRoleAvailableTime.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'PractitionerRoleAvailableTime '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [PractitionerRoleAvailableTime]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PractitionerRoleAvailableTime.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PractitionerRoleAvailableTime.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'PractitionerRoleAvailableTime';

  /// [daysOfWeek]
  /// Indicates which days of the week are available between the start and
  /// end Times.
  final List<DaysOfWeek>? daysOfWeek;

  /// [allDay]
  /// Is this always available? (hence times are irrelevant) e.g. 24 hour
  /// service.
  final FhirBoolean? allDay;

  /// [availableStartTime]
  /// The opening time of day. Note: If the AllDay flag is set, then this
  /// time is ignored.
  final FhirTime? availableStartTime;

  /// [availableEndTime]
  /// The closing time of day. Note: If the AllDay flag is set, then this
  /// time is ignored.
  final FhirTime? availableEndTime;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (daysOfWeek != null && daysOfWeek!.isNotEmpty) {
      json['daysOfWeek'] = daysOfWeek!.map((e) => e.toJson()).toList();
    }

    if (allDay != null) {
      final fieldJson3 = allDay!.toJson();
      json['allDay'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_allDay'] = fieldJson3['_value'];
      }
    }

    if (availableStartTime != null) {
      final fieldJson4 = availableStartTime!.toJson();
      json['availableStartTime'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_availableStartTime'] = fieldJson4['_value'];
      }
    }

    if (availableEndTime != null) {
      final fieldJson5 = availableEndTime!.toJson();
      json['availableEndTime'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_availableEndTime'] = fieldJson5['_value'];
      }
    }

    return json;
  }

  @override
  PractitionerRoleAvailableTime clone() => throw UnimplementedError();
  @override
  PractitionerRoleAvailableTime copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<DaysOfWeek>? daysOfWeek,
    FhirBoolean? allDay,
    FhirTime? availableStartTime,
    FhirTime? availableEndTime,
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
      allDay: allDay ?? this.allDay,
      availableStartTime: availableStartTime ?? this.availableStartTime,
      availableEndTime: availableEndTime ?? this.availableEndTime,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [PractitionerRoleNotAvailable]
/// The practitioner is not available or performing this role during this
/// period of time due to the provided reason.
class PractitionerRoleNotAvailable extends BackboneElement {
  /// Primary constructor for
  /// [PractitionerRoleNotAvailable]

  PractitionerRoleNotAvailable({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.description,
    this.during,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PractitionerRoleNotAvailable.fromJson(
    Map<String, dynamic> json,
  ) {
    return PractitionerRoleNotAvailable(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: FhirString.fromJson({
        'value': json['description'],
        '_value': json['_description'],
      }),
      during: json['during'] != null
          ? Period.fromJson(
              json['during'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [PractitionerRoleNotAvailable]
  /// from a [String] or [YamlMap] object
  factory PractitionerRoleNotAvailable.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? PractitionerRoleNotAvailable.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? PractitionerRoleNotAvailable.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'PractitionerRoleNotAvailable '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [PractitionerRoleNotAvailable]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PractitionerRoleNotAvailable.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PractitionerRoleNotAvailable.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'PractitionerRoleNotAvailable';

  /// [description]
  /// The reason that can be presented to the user as to why this time is not
  /// available.
  final FhirString description;

  /// [during]
  /// Service is not available (seasonally or for a public holiday) from this
  /// date.
  final Period? during;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    final fieldJson2 = description.toJson();
    json['description'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_description'] = fieldJson2['_value'];
    }

    if (during != null) {
      json['during'] = during!.toJson();
    }

    return json;
  }

  @override
  PractitionerRoleNotAvailable clone() => throw UnimplementedError();
  @override
  PractitionerRoleNotAvailable copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
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
      during: during ?? this.during,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
