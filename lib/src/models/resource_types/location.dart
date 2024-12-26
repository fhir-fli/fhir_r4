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

  const Location({
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
  }) : super(
          objectPath: 'Location',
          resourceType: R4ResourceType.Location,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Location.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Location';
    return Location(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<LocationStatus>(
        json,
        'status',
        LocationStatus.fromJson,
        '$objectPath.status',
      ),
      operationalStatus: JsonParser.parseObject<Coding>(
        json,
        'operationalStatus',
        Coding.fromJson,
        '$objectPath.operationalStatus',
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      ),
      alias: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'alias',
        FhirString.fromJson,
        '$objectPath.alias',
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      mode: JsonParser.parsePrimitive<LocationMode>(
        json,
        'mode',
        LocationMode.fromJson,
        '$objectPath.mode',
      ),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
      telecom: (json['telecom'] as List<dynamic>?)
          ?.map<ContactPoint>(
            (v) => ContactPoint.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.telecom',
              },
            ),
          )
          .toList(),
      address: JsonParser.parseObject<Address>(
        json,
        'address',
        Address.fromJson,
        '$objectPath.address',
      ),
      physicalType: JsonParser.parseObject<CodeableConcept>(
        json,
        'physicalType',
        CodeableConcept.fromJson,
        '$objectPath.physicalType',
      ),
      position: JsonParser.parseObject<LocationPosition>(
        json,
        'position',
        LocationPosition.fromJson,
        '$objectPath.position',
      ),
      managingOrganization: JsonParser.parseObject<Reference>(
        json,
        'managingOrganization',
        Reference.fromJson,
        '$objectPath.managingOrganization',
      ),
      partOf: JsonParser.parseObject<Reference>(
        json,
        'partOf',
        Reference.fromJson,
        '$objectPath.partOf',
      ),
      hoursOfOperation: (json['hoursOfOperation'] as List<dynamic>?)
          ?.map<LocationHoursOfOperation>(
            (v) => LocationHoursOfOperation.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.hoursOfOperation',
              },
            ),
          )
          .toList(),
      availabilityExceptions: JsonParser.parsePrimitive<FhirString>(
        json,
        'availabilityExceptions',
        FhirString.fromJson,
        '$objectPath.availabilityExceptions',
      ),
      endpoint: (json['endpoint'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.endpoint',
              },
            ),
          )
          .toList(),
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
    if (json is Map<String, dynamic>) {
      return Location.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('status', status);
    addField('operationalStatus', operationalStatus);
    addField('name', name);
    addField('alias', alias);
    addField('description', description);
    addField('mode', mode);
    addField('type', type);
    addField('telecom', telecom);
    addField('address', address);
    addField('physicalType', physicalType);
    addField('position', position);
    addField('managingOrganization', managingOrganization);
    addField('partOf', partOf);
    addField('hoursOfOperation', hoursOfOperation);
    addField('availabilityExceptions', availabilityExceptions);
    addField('endpoint', endpoint);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'identifier',
      'status',
      'operationalStatus',
      'name',
      'alias',
      'description',
      'mode',
      'type',
      'telecom',
      'address',
      'physicalType',
      'position',
      'managingOrganization',
      'partOf',
      'hoursOfOperation',
      'availabilityExceptions',
      'endpoint',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'operationalStatus':
        if (operationalStatus != null) {
          fields.add(operationalStatus!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'alias':
        if (alias != null) {
          fields.addAll(alias!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'mode':
        if (mode != null) {
          fields.add(mode!);
        }
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'telecom':
        if (telecom != null) {
          fields.addAll(telecom!);
        }
      case 'address':
        if (address != null) {
          fields.add(address!);
        }
      case 'physicalType':
        if (physicalType != null) {
          fields.add(physicalType!);
        }
      case 'position':
        if (position != null) {
          fields.add(position!);
        }
      case 'managingOrganization':
        if (managingOrganization != null) {
          fields.add(managingOrganization!);
        }
      case 'partOf':
        if (partOf != null) {
          fields.add(partOf!);
        }
      case 'hoursOfOperation':
        if (hoursOfOperation != null) {
          fields.addAll(hoursOfOperation!);
        }
      case 'availabilityExceptions':
        if (availabilityExceptions != null) {
          fields.add(availabilityExceptions!);
        }
      case 'endpoint':
        if (endpoint != null) {
          fields.addAll(endpoint!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return Location(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      operationalStatus: operationalStatus?.copyWith(
            objectPath: '$newObjectPath.operationalStatus',
          ) ??
          this.operationalStatus,
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      alias: alias
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.alias',
                ),
              )
              .toList() ??
          this.alias,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      mode: mode?.copyWith(
            objectPath: '$newObjectPath.mode',
          ) ??
          this.mode,
      type: type
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.type',
                ),
              )
              .toList() ??
          this.type,
      telecom: telecom
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.telecom',
                ),
              )
              .toList() ??
          this.telecom,
      address: address?.copyWith(
            objectPath: '$newObjectPath.address',
          ) ??
          this.address,
      physicalType: physicalType?.copyWith(
            objectPath: '$newObjectPath.physicalType',
          ) ??
          this.physicalType,
      position: position?.copyWith(
            objectPath: '$newObjectPath.position',
          ) ??
          this.position,
      managingOrganization: managingOrganization?.copyWith(
            objectPath: '$newObjectPath.managingOrganization',
          ) ??
          this.managingOrganization,
      partOf: partOf?.copyWith(
            objectPath: '$newObjectPath.partOf',
          ) ??
          this.partOf,
      hoursOfOperation: hoursOfOperation
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.hoursOfOperation',
                ),
              )
              .toList() ??
          this.hoursOfOperation,
      availabilityExceptions: availabilityExceptions?.copyWith(
            objectPath: '$newObjectPath.availabilityExceptions',
          ) ??
          this.availabilityExceptions,
      endpoint: endpoint
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.endpoint',
                ),
              )
              .toList() ??
          this.endpoint,
    );
  }
}

/// [LocationPosition]
/// The absolute geographic location of the Location, expressed using the
/// WGS84 datum (This is the same co-ordinate system used in KML).
class LocationPosition extends BackboneElement {
  /// Primary constructor for
  /// [LocationPosition]

  const LocationPosition({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.longitude,
    required this.latitude,
    this.altitude,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Location.position',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory LocationPosition.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Location.position';
    return LocationPosition(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      longitude: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'longitude',
        FhirDecimal.fromJson,
        '$objectPath.longitude',
      )!,
      latitude: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'latitude',
        FhirDecimal.fromJson,
        '$objectPath.latitude',
      )!,
      altitude: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'altitude',
        FhirDecimal.fromJson,
        '$objectPath.altitude',
      ),
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
    if (json is Map<String, dynamic>) {
      return LocationPosition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('longitude', longitude);
    addField('latitude', latitude);
    addField('altitude', altitude);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'longitude',
      'latitude',
      'altitude',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'longitude':
        fields.add(longitude);
      case 'latitude':
        fields.add(latitude);
      case 'altitude':
        if (altitude != null) {
          fields.add(altitude!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return LocationPosition(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      longitude: longitude?.copyWith(
            objectPath: '$newObjectPath.longitude',
          ) ??
          this.longitude,
      latitude: latitude?.copyWith(
            objectPath: '$newObjectPath.latitude',
          ) ??
          this.latitude,
      altitude: altitude?.copyWith(
            objectPath: '$newObjectPath.altitude',
          ) ??
          this.altitude,
    );
  }
}

/// [LocationHoursOfOperation]
/// What days/times during a week is this location usually open.
class LocationHoursOfOperation extends BackboneElement {
  /// Primary constructor for
  /// [LocationHoursOfOperation]

  const LocationHoursOfOperation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.daysOfWeek,
    this.allDay,
    this.openingTime,
    this.closingTime,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Location.hoursOfOperation',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory LocationHoursOfOperation.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Location.hoursOfOperation';
    return LocationHoursOfOperation(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      daysOfWeek: JsonParser.parsePrimitiveList<DaysOfWeek>(
        json,
        'daysOfWeek',
        DaysOfWeek.fromJson,
        '$objectPath.daysOfWeek',
      ),
      allDay: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'allDay',
        FhirBoolean.fromJson,
        '$objectPath.allDay',
      ),
      openingTime: JsonParser.parsePrimitive<FhirTime>(
        json,
        'openingTime',
        FhirTime.fromJson,
        '$objectPath.openingTime',
      ),
      closingTime: JsonParser.parsePrimitive<FhirTime>(
        json,
        'closingTime',
        FhirTime.fromJson,
        '$objectPath.closingTime',
      ),
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
    if (json is Map<String, dynamic>) {
      return LocationHoursOfOperation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('daysOfWeek', daysOfWeek);
    addField('allDay', allDay);
    addField('openingTime', openingTime);
    addField('closingTime', closingTime);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'daysOfWeek',
      'allDay',
      'openingTime',
      'closingTime',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'daysOfWeek':
        if (daysOfWeek != null) {
          fields.addAll(daysOfWeek!);
        }
      case 'allDay':
        if (allDay != null) {
          fields.add(allDay!);
        }
      case 'openingTime':
        if (openingTime != null) {
          fields.add(openingTime!);
        }
      case 'closingTime':
        if (closingTime != null) {
          fields.add(closingTime!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return LocationHoursOfOperation(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      daysOfWeek: daysOfWeek
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.daysOfWeek',
                ),
              )
              .toList() ??
          this.daysOfWeek,
      allDay: allDay?.copyWith(
            objectPath: '$newObjectPath.allDay',
          ) ??
          this.allDay,
      openingTime: openingTime?.copyWith(
            objectPath: '$newObjectPath.openingTime',
          ) ??
          this.openingTime,
      closingTime: closingTime?.copyWith(
            objectPath: '$newObjectPath.closingTime',
          ) ??
          this.closingTime,
    );
  }
}
