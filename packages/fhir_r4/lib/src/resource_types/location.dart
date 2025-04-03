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

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Location.empty() => const Location();

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
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'status',
      status,
    );
    addField(
      'operationalStatus',
      operationalStatus,
    );
    addField(
      'name',
      name,
    );
    addField(
      'alias',
      alias,
    );
    addField(
      'description',
      description,
    );
    addField(
      'mode',
      mode,
    );
    addField(
      'type',
      type,
    );
    addField(
      'telecom',
      telecom,
    );
    addField(
      'address',
      address,
    );
    addField(
      'physicalType',
      physicalType,
    );
    addField(
      'position',
      position,
    );
    addField(
      'managingOrganization',
      managingOrganization,
    );
    addField(
      'partOf',
      partOf,
    );
    addField(
      'hoursOfOperation',
      hoursOfOperation,
    );
    addField(
      'availabilityExceptions',
      availabilityExceptions,
    );
    addField(
      'endpoint',
      endpoint,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
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
  List<FhirBase> getChildrenByName(
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            // Add all elements from passed list
            final newList = [...?contained, ...child];
            return copyWith(contained: newList);
          } else if (child is Resource) {
            // Add single element to existing list or create new list
            final newList = [
              ...?contained,
              child,
            ];
            return copyWith(contained: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            // Add all elements from passed list
            final newList = [...?identifier, ...child];
            return copyWith(identifier: newList);
          } else if (child is Identifier) {
            // Add single element to existing list or create new list
            final newList = [
              ...?identifier,
              child,
            ];
            return copyWith(identifier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is LocationStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'operationalStatus':
        {
          if (child is Coding) {
            return copyWith(operationalStatus: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'name':
        {
          if (child is FhirString) {
            return copyWith(name: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'alias':
        {
          if (child is List<FhirString>) {
            // Add all elements from passed list
            final newList = [...?alias, ...child];
            return copyWith(alias: newList);
          } else if (child is FhirString) {
            // Add single element to existing list or create new list
            final newList = [
              ...?alias,
              child,
            ];
            return copyWith(alias: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'mode':
        {
          if (child is LocationMode) {
            return copyWith(mode: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?type, ...child];
            return copyWith(type: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?type,
              child,
            ];
            return copyWith(type: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'telecom':
        {
          if (child is List<ContactPoint>) {
            // Add all elements from passed list
            final newList = [...?telecom, ...child];
            return copyWith(telecom: newList);
          } else if (child is ContactPoint) {
            // Add single element to existing list or create new list
            final newList = [
              ...?telecom,
              child,
            ];
            return copyWith(telecom: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'address':
        {
          if (child is Address) {
            return copyWith(address: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'physicalType':
        {
          if (child is CodeableConcept) {
            return copyWith(physicalType: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'position':
        {
          if (child is LocationPosition) {
            return copyWith(position: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'managingOrganization':
        {
          if (child is Reference) {
            return copyWith(managingOrganization: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'partOf':
        {
          if (child is Reference) {
            return copyWith(partOf: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'hoursOfOperation':
        {
          if (child is List<LocationHoursOfOperation>) {
            // Add all elements from passed list
            final newList = [...?hoursOfOperation, ...child];
            return copyWith(hoursOfOperation: newList);
          } else if (child is LocationHoursOfOperation) {
            // Add single element to existing list or create new list
            final newList = [
              ...?hoursOfOperation,
              child,
            ];
            return copyWith(hoursOfOperation: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'availabilityExceptions':
        {
          if (child is FhirString) {
            return copyWith(availabilityExceptions: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'endpoint':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?endpoint, ...child];
            return copyWith(endpoint: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?endpoint,
              child,
            ];
            return copyWith(endpoint: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'meta':
        return ['FhirMeta'];
      case 'implicitRules':
        return ['FhirUri'];
      case 'language':
        return ['FhirCode'];
      case 'text':
        return ['Narrative'];
      case 'contained':
        return ['Resource'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'identifier':
        return ['Identifier'];
      case 'status':
        return ['FhirCode'];
      case 'operationalStatus':
        return ['Coding'];
      case 'name':
        return ['FhirString'];
      case 'alias':
        return ['FhirString'];
      case 'description':
        return ['FhirString'];
      case 'mode':
        return ['FhirCode'];
      case 'type':
        return ['CodeableConcept'];
      case 'telecom':
        return ['ContactPoint'];
      case 'address':
        return ['Address'];
      case 'physicalType':
        return ['CodeableConcept'];
      case 'position':
        return ['LocationPosition'];
      case 'managingOrganization':
        return ['Reference'];
      case 'partOf':
        return ['Reference'];
      case 'hoursOfOperation':
        return ['LocationHoursOfOperation'];
      case 'availabilityExceptions':
        return ['FhirString'];
      case 'endpoint':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [Location]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  Location createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'meta':
        {
          return copyWith(
            meta: FhirMeta.empty(),
          );
        }
      case 'implicitRules':
        {
          return copyWith(
            implicitRules: FhirUri.empty(),
          );
        }
      case 'language':
        {
          return copyWith(
            language: CommonLanguages.empty(),
          );
        }
      case 'text':
        {
          return copyWith(
            text: Narrative.empty(),
          );
        }
      case 'contained':
        {
          return copyWith(
            contained: <Resource>[],
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'identifier':
        {
          return copyWith(
            identifier: <Identifier>[],
          );
        }
      case 'status':
        {
          return copyWith(
            status: LocationStatus.empty(),
          );
        }
      case 'operationalStatus':
        {
          return copyWith(
            operationalStatus: Coding.empty(),
          );
        }
      case 'name':
        {
          return copyWith(
            name: FhirString.empty(),
          );
        }
      case 'alias':
        {
          return copyWith(
            alias: <FhirString>[],
          );
        }
      case 'description':
        {
          return copyWith(
            description: FhirString.empty(),
          );
        }
      case 'mode':
        {
          return copyWith(
            mode: LocationMode.empty(),
          );
        }
      case 'type':
        {
          return copyWith(
            type: <CodeableConcept>[],
          );
        }
      case 'telecom':
        {
          return copyWith(
            telecom: <ContactPoint>[],
          );
        }
      case 'address':
        {
          return copyWith(
            address: Address.empty(),
          );
        }
      case 'physicalType':
        {
          return copyWith(
            physicalType: CodeableConcept.empty(),
          );
        }
      case 'position':
        {
          return copyWith(
            position: LocationPosition.empty(),
          );
        }
      case 'managingOrganization':
        {
          return copyWith(
            managingOrganization: Reference.empty(),
          );
        }
      case 'partOf':
        {
          return copyWith(
            partOf: Reference.empty(),
          );
        }
      case 'hoursOfOperation':
        {
          return copyWith(
            hoursOfOperation: <LocationHoursOfOperation>[],
          );
        }
      case 'availabilityExceptions':
        {
          return copyWith(
            availabilityExceptions: FhirString.empty(),
          );
        }
      case 'endpoint':
        {
          return copyWith(
            endpoint: <Reference>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  Location clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool status = false,
    bool operationalStatus = false,
    bool name = false,
    bool alias = false,
    bool description = false,
    bool mode = false,
    bool type = false,
    bool telecom = false,
    bool address = false,
    bool physicalType = false,
    bool position = false,
    bool managingOrganization = false,
    bool partOf = false,
    bool hoursOfOperation = false,
    bool availabilityExceptions = false,
    bool endpoint = false,
  }) {
    return Location(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier ? null : this.identifier,
      status: status ? null : this.status,
      operationalStatus: operationalStatus ? null : this.operationalStatus,
      name: name ? null : this.name,
      alias: alias ? null : this.alias,
      description: description ? null : this.description,
      mode: mode ? null : this.mode,
      type: type ? null : this.type,
      telecom: telecom ? null : this.telecom,
      address: address ? null : this.address,
      physicalType: physicalType ? null : this.physicalType,
      position: position ? null : this.position,
      managingOrganization:
          managingOrganization ? null : this.managingOrganization,
      partOf: partOf ? null : this.partOf,
      hoursOfOperation: hoursOfOperation ? null : this.hoursOfOperation,
      availabilityExceptions:
          availabilityExceptions ? null : this.availabilityExceptions,
      endpoint: endpoint ? null : this.endpoint,
    );
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

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Location) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      operationalStatus,
      o.operationalStatus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!listEquals<FhirString>(
      alias,
      o.alias,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      mode,
      o.mode,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<ContactPoint>(
      telecom,
      o.telecom,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      address,
      o.address,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      physicalType,
      o.physicalType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      position,
      o.position,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      managingOrganization,
      o.managingOrganization,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      partOf,
      o.partOf,
    )) {
      return false;
    }
    if (!listEquals<LocationHoursOfOperation>(
      hoursOfOperation,
      o.hoursOfOperation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      availabilityExceptions,
      o.availabilityExceptions,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      endpoint,
      o.endpoint,
    )) {
      return false;
    }
    return true;
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

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory LocationPosition.empty() => LocationPosition(
        longitude: FhirDecimal.empty(),
        latitude: FhirDecimal.empty(),
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'longitude',
      longitude,
    );
    addField(
      'latitude',
      latitude,
    );
    addField(
      'altitude',
      altitude,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
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
  List<FhirBase> getChildrenByName(
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'longitude':
        {
          if (child is FhirDecimal) {
            return copyWith(longitude: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'latitude':
        {
          if (child is FhirDecimal) {
            return copyWith(latitude: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'altitude':
        {
          if (child is FhirDecimal) {
            return copyWith(altitude: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'longitude':
        return ['FhirDecimal'];
      case 'latitude':
        return ['FhirDecimal'];
      case 'altitude':
        return ['FhirDecimal'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [LocationPosition]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  LocationPosition createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'longitude':
        {
          return copyWith(
            longitude: FhirDecimal.empty(),
          );
        }
      case 'latitude':
        {
          return copyWith(
            latitude: FhirDecimal.empty(),
          );
        }
      case 'altitude':
        {
          return copyWith(
            altitude: FhirDecimal.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  LocationPosition clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool altitude = false,
  }) {
    return LocationPosition(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      longitude: longitude,
      latitude: latitude,
      altitude: altitude ? null : this.altitude,
    );
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

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! LocationPosition) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      longitude,
      o.longitude,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      latitude,
      o.latitude,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      altitude,
      o.altitude,
    )) {
      return false;
    }
    return true;
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

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory LocationHoursOfOperation.empty() => const LocationHoursOfOperation();

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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'daysOfWeek',
      daysOfWeek,
    );
    addField(
      'allDay',
      allDay,
    );
    addField(
      'openingTime',
      openingTime,
    );
    addField(
      'closingTime',
      closingTime,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
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
  List<FhirBase> getChildrenByName(
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'daysOfWeek':
        {
          if (child is List<DaysOfWeek>) {
            // Add all elements from passed list
            final newList = [...?daysOfWeek, ...child];
            return copyWith(daysOfWeek: newList);
          } else if (child is DaysOfWeek) {
            // Add single element to existing list or create new list
            final newList = [
              ...?daysOfWeek,
              child,
            ];
            return copyWith(daysOfWeek: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'allDay':
        {
          if (child is FhirBoolean) {
            return copyWith(allDay: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'openingTime':
        {
          if (child is FhirTime) {
            return copyWith(openingTime: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'closingTime':
        {
          if (child is FhirTime) {
            return copyWith(closingTime: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'daysOfWeek':
        return ['FhirCode'];
      case 'allDay':
        return ['FhirBoolean'];
      case 'openingTime':
        return ['FhirTime'];
      case 'closingTime':
        return ['FhirTime'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [LocationHoursOfOperation]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  LocationHoursOfOperation createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'daysOfWeek':
        {
          return copyWith(
            daysOfWeek: <DaysOfWeek>[],
          );
        }
      case 'allDay':
        {
          return copyWith(
            allDay: FhirBoolean.empty(),
          );
        }
      case 'openingTime':
        {
          return copyWith(
            openingTime: FhirTime.empty(),
          );
        }
      case 'closingTime':
        {
          return copyWith(
            closingTime: FhirTime.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  LocationHoursOfOperation clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool daysOfWeek = false,
    bool allDay = false,
    bool openingTime = false,
    bool closingTime = false,
  }) {
    return LocationHoursOfOperation(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      daysOfWeek: daysOfWeek ? null : this.daysOfWeek,
      allDay: allDay ? null : this.allDay,
      openingTime: openingTime ? null : this.openingTime,
      closingTime: closingTime ? null : this.closingTime,
    );
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

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! LocationHoursOfOperation) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<DaysOfWeek>(
      daysOfWeek,
      o.daysOfWeek,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      allDay,
      o.allDay,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      openingTime,
      o.openingTime,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      closingTime,
      o.closingTime,
    )) {
      return false;
    }
    return true;
  }
}
