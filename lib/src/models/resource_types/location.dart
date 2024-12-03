import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Location]
/// Details and position information for a physical place where services
/// are provided and resources and participants may be stored, found,
/// contained, or accommodated.
class Location extends DomainResource {
  /// Primary constructor for
  /// [Location]

  Location({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.status,
    this.operationalStatus,
    this.name,
    this.alias,
    this.description,
    this.mode,
    this.type,
    this.telecom,
    this.address,
    this.physicalType,
    this.position,
    this.managingOrganization,
    this.partOf,
    this.hoursOfOperation,
    this.availabilityExceptions,
    this.endpoint,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  }) : super(
          resourceType: R4ResourceType.Location,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Location.fromJson(
    Map<String, dynamic> json,
  ) {
    return Location(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules:
          (json['implicitRules'] != null || json['_implicitRules'] != null)
              ? FhirUri.fromJson({
                  'value': json['implicitRules'],
                  '_value': json['_implicitRules'],
                })
              : null,
      language: (json['language'] != null || json['_language'] != null)
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
      status: (json['status'] != null || json['_status'] != null)
          ? LocationStatus.fromJson({
              'value': json['status'],
              '_value': json['_status'],
            })
          : null,
      operationalStatus: json['operationalStatus'] != null
          ? Coding.fromJson(
              json['operationalStatus'] as Map<String, dynamic>,
            )
          : null,
      name: (json['name'] != null || json['_name'] != null)
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      alias: parsePrimitiveList<FhirString>(
        json['alias'] as List<dynamic>?,
        json['_alias'] as List<dynamic>?,
        fromJson: FhirString.fromJson,
      ),
      description: (json['description'] != null || json['_description'] != null)
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      mode: (json['mode'] != null || json['_mode'] != null)
          ? LocationMode.fromJson({
              'value': json['mode'],
              '_value': json['_mode'],
            })
          : null,
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
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
      address: json['address'] != null
          ? Address.fromJson(
              json['address'] as Map<String, dynamic>,
            )
          : null,
      physicalType: json['physicalType'] != null
          ? CodeableConcept.fromJson(
              json['physicalType'] as Map<String, dynamic>,
            )
          : null,
      position: json['position'] != null
          ? LocationPosition.fromJson(
              json['position'] as Map<String, dynamic>,
            )
          : null,
      managingOrganization: json['managingOrganization'] != null
          ? Reference.fromJson(
              json['managingOrganization'] as Map<String, dynamic>,
            )
          : null,
      partOf: json['partOf'] != null
          ? Reference.fromJson(
              json['partOf'] as Map<String, dynamic>,
            )
          : null,
      hoursOfOperation: json['hoursOfOperation'] != null
          ? (json['hoursOfOperation'] as List<dynamic>)
              .map<LocationHoursOfOperation>(
                (v) => LocationHoursOfOperation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      availabilityExceptions: (json['availabilityExceptions'] != null ||
              json['_availabilityExceptions'] != null)
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

  /// Deserialize [Location]
  /// from a [String] or [YamlMap] object
  factory Location.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Location.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Location.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Location '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Location]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Location.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Location.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Location';

  /// [identifier]
  /// Unique code or number identifying the location to its users.
  final List<Identifier>? identifier;

  /// [status]
  /// The status property covers the general availability of the resource,
  /// not the current value which may be covered by the operationStatus, or
  /// by a schedule/slots if they are configured for the location.
  final LocationStatus? status;

  /// [operationalStatus]
  /// The operational status covers operation values most relevant to beds
  /// (but can also apply to rooms/units/chairs/etc. such as an isolation
  /// unit/dialysis chair). This typically covers concepts such as
  /// contamination, housekeeping, and other activities like maintenance.
  final Coding? operationalStatus;

  /// [name]
  /// Name of the location as used by humans. Does not need to be unique.
  final FhirString? name;

  /// [alias]
  /// A list of alternate names that the location is known as, or was known
  /// as, in the past.
  final List<FhirString>? alias;

  /// [description]
  /// Description of the Location, which helps in finding or referencing the
  /// place.
  final FhirString? description;

  /// [mode]
  /// Indicates whether a resource instance represents a specific location or
  /// a class of locations.
  final LocationMode? mode;

  /// [type]
  /// Indicates the type of function performed at the location.
  final List<CodeableConcept>? type;

  /// [telecom]
  /// The contact details of communication devices available at the location.
  /// This can include phone numbers, fax numbers, mobile numbers, email
  /// addresses and web sites.
  final List<ContactPoint>? telecom;

  /// [address]
  /// Physical location.
  final Address? address;

  /// [physicalType]
  /// Physical form of the location, e.g. building, room, vehicle, road.
  final CodeableConcept? physicalType;

  /// [position]
  /// The absolute geographic location of the Location, expressed using the
  /// WGS84 datum (This is the same co-ordinate system used in KML).
  final LocationPosition? position;

  /// [managingOrganization]
  /// The organization responsible for the provisioning and upkeep of the
  /// location.
  final Reference? managingOrganization;

  /// [partOf]
  /// Another Location of which this Location is physically a part of.
  final Reference? partOf;

  /// [hoursOfOperation]
  /// What days/times during a week is this location usually open.
  final List<LocationHoursOfOperation>? hoursOfOperation;

  /// [availabilityExceptions]
  /// A description of when the locations opening ours are different to
  /// normal, e.g. public holiday availability. Succinctly describing all
  /// possible exceptions to normal site availability as detailed in the
  /// opening hours Times.
  final FhirString? availabilityExceptions;

  /// [endpoint]
  /// Technical endpoints providing access to services operated for the
  /// location.
  final List<Reference>? endpoint;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    addField('implicitRules', implicitRules);
    addField('language', language);
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

    addField('status', status);
    if (operationalStatus != null) {
      json['operationalStatus'] = operationalStatus!.toJson();
    }

    addField('name', name);
    if (alias != null && alias!.isNotEmpty) {
      final fieldJson0 = alias!.map((e) => e.toJson()).toList();
      json['alias'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_alias'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    addField('description', description);
    addField('mode', mode);
    if (type != null && type!.isNotEmpty) {
      json['type'] = type!.map((e) => e.toJson()).toList();
    }

    if (telecom != null && telecom!.isNotEmpty) {
      json['telecom'] = telecom!.map((e) => e.toJson()).toList();
    }

    if (address != null) {
      json['address'] = address!.toJson();
    }

    if (physicalType != null) {
      json['physicalType'] = physicalType!.toJson();
    }

    if (position != null) {
      json['position'] = position!.toJson();
    }

    if (managingOrganization != null) {
      json['managingOrganization'] = managingOrganization!.toJson();
    }

    if (partOf != null) {
      json['partOf'] = partOf!.toJson();
    }

    if (hoursOfOperation != null && hoursOfOperation!.isNotEmpty) {
      json['hoursOfOperation'] =
          hoursOfOperation!.map((e) => e.toJson()).toList();
    }

    addField('availabilityExceptions', availabilityExceptions);
    if (endpoint != null && endpoint!.isNotEmpty) {
      json['endpoint'] = endpoint!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  Location clone() => throw UnimplementedError();
  @override
  Location copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    LocationStatus? status,
    Coding? operationalStatus,
    FhirString? name,
    List<FhirString>? alias,
    FhirString? description,
    LocationMode? mode,
    List<CodeableConcept>? type,
    List<ContactPoint>? telecom,
    Address? address,
    CodeableConcept? physicalType,
    LocationPosition? position,
    Reference? managingOrganization,
    Reference? partOf,
    List<LocationHoursOfOperation>? hoursOfOperation,
    FhirString? availabilityExceptions,
    List<Reference>? endpoint,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return Location(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      operationalStatus: operationalStatus ?? this.operationalStatus,
      name: name ?? this.name,
      alias: alias ?? this.alias,
      description: description ?? this.description,
      mode: mode ?? this.mode,
      type: type ?? this.type,
      telecom: telecom ?? this.telecom,
      address: address ?? this.address,
      physicalType: physicalType ?? this.physicalType,
      position: position ?? this.position,
      managingOrganization: managingOrganization ?? this.managingOrganization,
      partOf: partOf ?? this.partOf,
      hoursOfOperation: hoursOfOperation ?? this.hoursOfOperation,
      availabilityExceptions:
          availabilityExceptions ?? this.availabilityExceptions,
      endpoint: endpoint ?? this.endpoint,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [LocationPosition]
/// The absolute geographic location of the Location, expressed using the
/// WGS84 datum (This is the same co-ordinate system used in KML).
class LocationPosition extends BackboneElement {
  /// Primary constructor for
  /// [LocationPosition]

  LocationPosition({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.longitude,
    required this.latitude,
    this.altitude,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory LocationPosition.fromJson(
    Map<String, dynamic> json,
  ) {
    return LocationPosition(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      longitude: FhirDecimal.fromJson({
        'value': json['longitude'],
        '_value': json['_longitude'],
      }),
      latitude: FhirDecimal.fromJson({
        'value': json['latitude'],
        '_value': json['_latitude'],
      }),
      altitude: (json['altitude'] != null || json['_altitude'] != null)
          ? FhirDecimal.fromJson({
              'value': json['altitude'],
              '_value': json['_altitude'],
            })
          : null,
    );
  }

  /// Deserialize [LocationPosition]
  /// from a [String] or [YamlMap] object
  factory LocationPosition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return LocationPosition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return LocationPosition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'LocationPosition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [LocationPosition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory LocationPosition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return LocationPosition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'LocationPosition';

  /// [longitude]
  /// Longitude. The value domain and the interpretation are the same as for
  /// the text of the longitude element in KML (see notes below).
  final FhirDecimal longitude;

  /// [latitude]
  /// Latitude. The value domain and the interpretation are the same as for
  /// the text of the latitude element in KML (see notes below).
  final FhirDecimal latitude;

  /// [altitude]
  /// Altitude. The value domain and the interpretation are the same as for
  /// the text of the altitude element in KML (see notes below).
  final FhirDecimal? altitude;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('longitude', longitude);
    addField('latitude', latitude);
    addField('altitude', altitude);
    return json;
  }

  @override
  LocationPosition clone() => throw UnimplementedError();
  @override
  LocationPosition copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirDecimal? longitude,
    FhirDecimal? latitude,
    FhirDecimal? altitude,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return LocationPosition(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      longitude: longitude ?? this.longitude,
      latitude: latitude ?? this.latitude,
      altitude: altitude ?? this.altitude,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [LocationHoursOfOperation]
/// What days/times during a week is this location usually open.
class LocationHoursOfOperation extends BackboneElement {
  /// Primary constructor for
  /// [LocationHoursOfOperation]

  LocationHoursOfOperation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.daysOfWeek,
    this.allDay,
    this.openingTime,
    this.closingTime,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory LocationHoursOfOperation.fromJson(
    Map<String, dynamic> json,
  ) {
    return LocationHoursOfOperation(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      allDay: (json['allDay'] != null || json['_allDay'] != null)
          ? FhirBoolean.fromJson({
              'value': json['allDay'],
              '_value': json['_allDay'],
            })
          : null,
      openingTime: (json['openingTime'] != null || json['_openingTime'] != null)
          ? FhirTime.fromJson({
              'value': json['openingTime'],
              '_value': json['_openingTime'],
            })
          : null,
      closingTime: (json['closingTime'] != null || json['_closingTime'] != null)
          ? FhirTime.fromJson({
              'value': json['closingTime'],
              '_value': json['_closingTime'],
            })
          : null,
    );
  }

  /// Deserialize [LocationHoursOfOperation]
  /// from a [String] or [YamlMap] object
  factory LocationHoursOfOperation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return LocationHoursOfOperation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return LocationHoursOfOperation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'LocationHoursOfOperation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [LocationHoursOfOperation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory LocationHoursOfOperation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return LocationHoursOfOperation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'LocationHoursOfOperation';

  /// [daysOfWeek]
  /// Indicates which days of the week are available between the start and
  /// end Times.
  final List<DaysOfWeek>? daysOfWeek;

  /// [allDay]
  /// The Location is open all day.
  final FhirBoolean? allDay;

  /// [openingTime]
  /// Time that the Location opens.
  final FhirTime? openingTime;

  /// [closingTime]
  /// Time that the Location closes.
  final FhirTime? closingTime;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (daysOfWeek != null && daysOfWeek!.isNotEmpty) {
      final fieldJson0 = daysOfWeek!.map((e) => e.toJson()).toList();
      json['daysOfWeek'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_daysOfWeek'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    addField('allDay', allDay);
    addField('openingTime', openingTime);
    addField('closingTime', closingTime);
    return json;
  }

  @override
  LocationHoursOfOperation clone() => throw UnimplementedError();
  @override
  LocationHoursOfOperation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<DaysOfWeek>? daysOfWeek,
    FhirBoolean? allDay,
    FhirTime? openingTime,
    FhirTime? closingTime,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return LocationHoursOfOperation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      daysOfWeek: daysOfWeek ?? this.daysOfWeek,
      allDay: allDay ?? this.allDay,
      openingTime: openingTime ?? this.openingTime,
      closingTime: closingTime ?? this.closingTime,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}
