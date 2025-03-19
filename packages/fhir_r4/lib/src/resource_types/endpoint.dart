import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [FhirEndpoint]
/// The technical details of an endpoint that can be used for electronic
/// services, such as for web services providing XDS.b or a REST endpoint
/// for another FHIR server. This may include any security context
/// information.
class FhirEndpoint extends DomainResource {
  /// Primary constructor for
  /// [FhirEndpoint]

  const FhirEndpoint({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    required this.connectionType,
    this.name,
    this.managingOrganization,
    this.contact,
    this.period,
    required this.payloadType,
    this.payloadMimeType,
    required this.address,
    this.header,
  }) : super(
          objectPath: 'Endpoint',
          resourceType: R4ResourceType.FhirEndpoint,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory FhirEndpoint.empty() => FhirEndpoint(
        status: EndpointStatus.values.first,
        connectionType: Coding.empty(),
        payloadType: <CodeableConcept>[],
        address: FhirUrl.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory FhirEndpoint.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Endpoint';
    return FhirEndpoint(
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
      status: JsonParser.parsePrimitive<EndpointStatus>(
        json,
        'status',
        EndpointStatus.fromJson,
        '$objectPath.status',
      )!,
      connectionType: JsonParser.parseObject<Coding>(
        json,
        'connectionType',
        Coding.fromJson,
        '$objectPath.connectionType',
      )!,
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      ),
      managingOrganization: JsonParser.parseObject<Reference>(
        json,
        'managingOrganization',
        Reference.fromJson,
        '$objectPath.managingOrganization',
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactPoint>(
            (v) => ContactPoint.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contact',
              },
            ),
          )
          .toList(),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
        '$objectPath.period',
      ),
      payloadType: (json['payloadType'] as List<dynamic>)
          .map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.payloadType',
              },
            ),
          )
          .toList(),
      payloadMimeType: JsonParser.parsePrimitiveList<FhirCode>(
        json,
        'payloadMimeType',
        FhirCode.fromJson,
        '$objectPath.payloadMimeType',
      ),
      address: JsonParser.parsePrimitive<FhirUrl>(
        json,
        'address',
        FhirUrl.fromJson,
        '$objectPath.address',
      )!,
      header: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'header',
        FhirString.fromJson,
        '$objectPath.header',
      ),
    );
  }

  /// Deserialize [FhirEndpoint]
  /// from a [String] or [YamlMap] object
  factory FhirEndpoint.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return FhirEndpoint.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return FhirEndpoint.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'FhirEndpoint '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [FhirEndpoint]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory FhirEndpoint.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return FhirEndpoint.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Endpoint';

  /// [identifier]
  /// Identifier for the organization that is used to identify the endpoint
  /// across multiple disparate systems.
  final List<Identifier>? identifier;

  /// [status]
  /// active | suspended | error | off | test.
  final EndpointStatus status;

  /// [connectionType]
  /// A coded value that represents the technical details of the usage of
  /// this endpoint, such as what WSDLs should be used in what way. (e.g.
  /// XDS.b/DICOM/cds-hook).
  final Coding connectionType;

  /// [name]
  /// A friendly name that this endpoint can be referred to with.
  final FhirString? name;

  /// [managingOrganization]
  /// The organization that manages this endpoint (even if technically
  /// another organization is hosting this in the cloud, it is the
  /// organization associated with the data).
  final Reference? managingOrganization;

  /// [contact]
  /// Contact details for a human to contact about the subscription. The
  /// primary use of this for system administrator troubleshooting.
  final List<ContactPoint>? contact;

  /// [period]
  /// The interval during which the endpoint is expected to be operational.
  final Period? period;

  /// [payloadType]
  /// The payload type describes the acceptable content that can be
  /// communicated on the endpoint.
  final List<CodeableConcept> payloadType;

  /// [payloadMimeType]
  /// The mime type to send the payload in - e.g. application/fhir+xml,
  /// application/fhir+json. If the mime type is not specified, then the
  /// sender could send any content (including no content depending on the
  /// connectionType).
  final List<FhirCode>? payloadMimeType;

  /// [address]
  /// The uri that describes the actual end-point to connect to.
  final FhirUrl address;

  /// [header]
  /// Additional headers / information to send as part of the notification.
  final List<FhirString>? header;
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
    addField('connectionType', connectionType);
    addField('name', name);
    addField('managingOrganization', managingOrganization);
    addField('contact', contact);
    addField('period', period);
    addField('payloadType', payloadType);
    addField('payloadMimeType', payloadMimeType);
    addField('address', address);
    addField('header', header);
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
      'connectionType',
      'name',
      'managingOrganization',
      'contact',
      'period',
      'payloadType',
      'payloadMimeType',
      'address',
      'header',
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
        fields.add(status);
      case 'connectionType':
        fields.add(connectionType);
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'managingOrganization':
        if (managingOrganization != null) {
          fields.add(managingOrganization!);
        }
      case 'contact':
        if (contact != null) {
          fields.addAll(contact!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'payloadType':
        fields.addAll(payloadType);
      case 'payloadMimeType':
        if (payloadMimeType != null) {
          fields.addAll(payloadMimeType!);
        }
      case 'address':
        fields.add(address);
      case 'header':
        if (header != null) {
          fields.addAll(header!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            return copyWith(contained: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'status':
        {
          if (child is EndpointStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'connectionType':
        {
          if (child is Coding) {
            return copyWith(connectionType: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'name':
        {
          if (child is FhirString) {
            return copyWith(name: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'managingOrganization':
        {
          if (child is Reference) {
            return copyWith(managingOrganization: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contact':
        {
          if (child is List<ContactPoint>) {
            return copyWith(contact: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'period':
        {
          if (child is Period) {
            return copyWith(period: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'payloadType':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(payloadType: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'payloadMimeType':
        {
          if (child is List<FhirCode>) {
            return copyWith(payloadMimeType: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'address':
        {
          if (child is FhirUrl) {
            return copyWith(address: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'header':
        {
          if (child is List<FhirString>) {
            return copyWith(header: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
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
      case 'connectionType':
        return ['Coding'];
      case 'name':
        return ['FhirString'];
      case 'managingOrganization':
        return ['Reference'];
      case 'contact':
        return ['ContactPoint'];
      case 'period':
        return ['Period'];
      case 'payloadType':
        return ['CodeableConcept'];
      case 'payloadMimeType':
        return ['FhirCode'];
      case 'address':
        return ['FhirUrl'];
      case 'header':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [FhirEndpoint]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  FhirEndpoint createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'meta':
        {
          return copyWith(meta: FhirMeta.empty());
        }
      case 'implicitRules':
        {
          return copyWith(implicitRules: FhirUri.empty());
        }
      case 'language':
        {
          return copyWith(language: CommonLanguages.empty());
        }
      case 'text':
        {
          return copyWith(text: Narrative.empty());
        }
      case 'contained':
        {
          return copyWith(contained: <Resource>[]);
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'identifier':
        {
          return copyWith(identifier: <Identifier>[]);
        }
      case 'status':
        {
          return copyWith(status: EndpointStatus.empty());
        }
      case 'connectionType':
        {
          return copyWith(connectionType: Coding.empty());
        }
      case 'name':
        {
          return copyWith(name: FhirString.empty());
        }
      case 'managingOrganization':
        {
          return copyWith(managingOrganization: Reference.empty());
        }
      case 'contact':
        {
          return copyWith(contact: <ContactPoint>[]);
        }
      case 'period':
        {
          return copyWith(period: Period.empty());
        }
      case 'payloadType':
        {
          return copyWith(payloadType: <CodeableConcept>[]);
        }
      case 'payloadMimeType':
        {
          return copyWith(payloadMimeType: <FhirCode>[]);
        }
      case 'address':
        {
          return copyWith(address: FhirUrl.empty());
        }
      case 'header':
        {
          return copyWith(header: <FhirString>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  FhirEndpoint clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool name = false,
    bool managingOrganization = false,
    bool contact = false,
    bool period = false,
    bool payloadMimeType = false,
    bool header = false,
  }) {
    return FhirEndpoint(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier ? null : this.identifier,
      status: status,
      connectionType: connectionType,
      name: name ? null : this.name,
      managingOrganization:
          managingOrganization ? null : this.managingOrganization,
      contact: contact ? null : this.contact,
      period: period ? null : this.period,
      payloadType: payloadType,
      payloadMimeType: payloadMimeType ? null : this.payloadMimeType,
      address: address,
      header: header ? null : this.header,
    );
  }

  @override
  FhirEndpoint clone() => throw UnimplementedError();
  @override
  FhirEndpoint copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    EndpointStatus? status,
    Coding? connectionType,
    FhirString? name,
    Reference? managingOrganization,
    List<ContactPoint>? contact,
    Period? period,
    List<CodeableConcept>? payloadType,
    List<FhirCode>? payloadMimeType,
    FhirUrl? address,
    List<FhirString>? header,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return FhirEndpoint(
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
      connectionType: connectionType?.copyWith(
            objectPath: '$newObjectPath.connectionType',
          ) ??
          this.connectionType,
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      managingOrganization: managingOrganization?.copyWith(
            objectPath: '$newObjectPath.managingOrganization',
          ) ??
          this.managingOrganization,
      contact: contact
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.contact',
                ),
              )
              .toList() ??
          this.contact,
      period: period?.copyWith(
            objectPath: '$newObjectPath.period',
          ) ??
          this.period,
      payloadType: payloadType
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.payloadType',
                ),
              )
              .toList() ??
          this.payloadType,
      payloadMimeType: payloadMimeType
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.payloadMimeType',
                ),
              )
              .toList() ??
          this.payloadMimeType,
      address: address?.copyWith(
            objectPath: '$newObjectPath.address',
          ) ??
          this.address,
      header: header
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.header',
                ),
              )
              .toList() ??
          this.header,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! FhirEndpoint) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!equalsDeepWithNull(meta, o.meta)) {
      return false;
    }
    if (!equalsDeepWithNull(implicitRules, o.implicitRules)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
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
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(connectionType, o.connectionType)) {
      return false;
    }
    if (!equalsDeepWithNull(name, o.name)) {
      return false;
    }
    if (!equalsDeepWithNull(managingOrganization, o.managingOrganization)) {
      return false;
    }
    if (!listEquals<ContactPoint>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(period, o.period)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      payloadType,
      o.payloadType,
    )) {
      return false;
    }
    if (!listEquals<FhirCode>(
      payloadMimeType,
      o.payloadMimeType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(address, o.address)) {
      return false;
    }
    if (!listEquals<FhirString>(
      header,
      o.header,
    )) {
      return false;
    }
    return true;
  }
}
