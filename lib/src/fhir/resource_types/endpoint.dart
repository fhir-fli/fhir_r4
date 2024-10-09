import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'endpoint.g.dart';

/// [FhirEndpoint] /// The technical details of an endpoint that can be used for electronic
/// services, such as for web services providing XDS.b or a REST endpoint for
/// another FHIR server. This may include any security context information.
@JsonSerializable()
class FhirEndpoint extends DomainResource {
  FhirEndpoint({
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
    required this.status,
    this.statusElement,
    required this.connectionType,
    this.name,
    this.nameElement,
    this.managingOrganization,
    this.contact,
    this.period,
    required this.payloadType,
    this.payloadMimeType,
    this.payloadMimeTypeElement,
    required this.address,
    this.addressElement,
    this.header,
    this.headerElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.FhirEndpoint);
  @override
  String get fhirType => 'FhirEndpoint';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifier for the organization that is used to identify the endpoint
  /// across multiple disparate systems.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// active | suspended | error | off | test.
  @JsonKey(name: 'status')
  final EndpointStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [connectionType] /// A coded value that represents the technical details of the usage of this
  /// endpoint, such as what WSDLs should be used in what way. (e.g.
  /// XDS.b/DICOM/cds-hook).
  @JsonKey(name: 'connectionType')
  final EndpointConnectionType connectionType;

  /// [name] /// A friendly name that this endpoint can be referred to with.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [managingOrganization] /// The organization that manages this endpoint (even if technically another
  /// organization is hosting this in the cloud, it is the organization
  /// associated with the data).
  @JsonKey(name: 'managingOrganization')
  final Reference? managingOrganization;

  /// [contact] /// Contact details for a human to contact about the subscription. The primary
  /// use of this for system administrator troubleshooting.
  @JsonKey(name: 'contact')
  final List<ContactPoint>? contact;

  /// [period] /// The interval during which the endpoint is expected to be operational.
  @JsonKey(name: 'period')
  final Period? period;

  /// [payloadType] /// The payload type describes the acceptable content that can be communicated
  /// on the endpoint.
  @JsonKey(name: 'payloadType')
  final List<EndpointPayloadType> payloadType;

  /// [payloadMimeType] /// The mime type to send the payload in - e.g. application/fhir+xml,
  /// application/fhir+json. If the mime type is not specified, then the sender
  /// could send any content (including no content depending on the
  /// connectionType).
  @JsonKey(name: 'payloadMimeType')
  final List<FhirCode>? payloadMimeType;
  @JsonKey(name: '_payloadMimeType')
  final List<Element>? payloadMimeTypeElement;

  /// [address] /// The uri that describes the actual end-point to connect to.
  @JsonKey(name: 'address')
  final FhirUrl address;
  @JsonKey(name: '_address')
  final Element? addressElement;

  /// [header] /// Additional headers / information to send as part of the notification.
  @JsonKey(name: 'header')
  final List<FhirString>? header;
  @JsonKey(name: '_header')
  final List<Element>? headerElement;
  factory FhirEndpoint.fromJson(Map<String, dynamic> json) =>
      _$FhirEndpointFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FhirEndpointToJson(this);

  @override
  FhirEndpoint clone() => throw UnimplementedError();
  @override
  FhirEndpoint copyWith({
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
    EndpointStatus? status,
    Element? statusElement,
    EndpointConnectionType? connectionType,
    FhirString? name,
    Element? nameElement,
    Reference? managingOrganization,
    List<ContactPoint>? contact,
    Period? period,
    List<EndpointPayloadType>? payloadType,
    List<FhirCode>? payloadMimeType,
    List<Element>? payloadMimeTypeElement,
    FhirUrl? address,
    Element? addressElement,
    List<FhirString>? header,
    List<Element>? headerElement,
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
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      connectionType: connectionType ?? this.connectionType,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      managingOrganization: managingOrganization ?? this.managingOrganization,
      contact: contact ?? this.contact,
      period: period ?? this.period,
      payloadType: payloadType ?? this.payloadType,
      payloadMimeType: payloadMimeType ?? this.payloadMimeType,
      payloadMimeTypeElement:
          payloadMimeTypeElement ?? this.payloadMimeTypeElement,
      address: address ?? this.address,
      addressElement: addressElement ?? this.addressElement,
      header: header ?? this.header,
      headerElement: headerElement ?? this.headerElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory FhirEndpoint.fromYaml(dynamic yaml) => yaml is String
      ? FhirEndpoint.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? FhirEndpoint.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'FhirEndpoint cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory FhirEndpoint.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return FhirEndpoint.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
