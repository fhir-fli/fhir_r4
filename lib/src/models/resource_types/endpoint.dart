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

  FhirEndpoint({
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.FhirEndpoint,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory FhirEndpoint.fromJson(
    Map<String, dynamic> json,
  ) {
    return FhirEndpoint(
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
      status: EndpointStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      connectionType: Coding.fromJson(
        json['connectionType'] as Map<String, dynamic>,
      ),
      name: (json['name'] != null || json['_name'] != null)
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      managingOrganization: json['managingOrganization'] != null
          ? Reference.fromJson(
              json['managingOrganization'] as Map<String, dynamic>,
            )
          : null,
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<ContactPoint>(
                (v) => ContactPoint.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
      payloadType: ensureNonNullList(
        (json['payloadType'] as List<dynamic>)
            .map<CodeableConcept>(
              (v) => CodeableConcept.fromJson(
                v as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
      payloadMimeType: parsePrimitiveList<FhirCode>(
        json['payloadMimeType'] as List<dynamic>?,
        json['_payloadMimeType'] as List<dynamic>?,
        fromJson: FhirCode.fromJson,
      ),
      address: FhirUrl.fromJson({
        'value': json['address'],
        '_value': json['_address'],
      }),
      header: parsePrimitiveList<FhirString>(
        json['header'] as List<dynamic>?,
        json['_header'] as List<dynamic>?,
        fromJson: FhirString.fromJson,
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
    if (json is Map<String, Object?>) {
      return FhirEndpoint.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'FhirEndpoint';

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
    json['connectionType'] = connectionType.toJson();

    addField('name', name);
    if (managingOrganization != null) {
      json['managingOrganization'] = managingOrganization!.toJson();
    }

    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((e) => e.toJson()).toList();
    }

    if (period != null) {
      json['period'] = period!.toJson();
    }

    if (payloadType.isNotEmpty) {
      json['payloadType'] = payloadType.map((e) => e.toJson()).toList();
    }

    if (payloadMimeType != null && payloadMimeType!.isNotEmpty) {
      final fieldJson0 = payloadMimeType!.map((e) => e.toJson()).toList();
      json['payloadMimeType'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_payloadMimeType'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    addField('address', address);
    if (header != null && header!.isNotEmpty) {
      final fieldJson1 = header!.map((e) => e.toJson()).toList();
      json['header'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_header'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return FhirEndpoint(
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
      connectionType: connectionType ?? this.connectionType,
      name: name ?? this.name,
      managingOrganization: managingOrganization ?? this.managingOrganization,
      contact: contact ?? this.contact,
      period: period ?? this.period,
      payloadType: payloadType ?? this.payloadType,
      payloadMimeType: payloadMimeType ?? this.payloadMimeType,
      address: address ?? this.address,
      header: header ?? this.header,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
