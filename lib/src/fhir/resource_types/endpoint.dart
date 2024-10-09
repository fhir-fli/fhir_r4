import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

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
  final Coding connectionType;

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
  final List<CodeableConcept> payloadType;

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
      json['implicitRules'] = implicitRules!.value;
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
    json['status'] = status.toJson();
    json['connectionType'] = connectionType.toJson();
    if (name?.value != null) {
      json['name'] = name!.value;
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (managingOrganization != null) {
      json['managingOrganization'] = managingOrganization!.toJson();
    }
    if (contact != null && contact!.isNotEmpty) {
      json['contact'] =
          contact!.map<dynamic>((ContactPoint v) => v.toJson()).toList();
    }
    if (period != null) {
      json['period'] = period!.toJson();
    }
    json['payloadType'] =
        payloadType.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    if (payloadMimeType != null && payloadMimeType!.isNotEmpty) {
      json['payloadMimeType'] =
          payloadMimeType!.map((FhirCode v) => v.value).toList();
    }
    if (payloadMimeTypeElement != null && payloadMimeTypeElement!.isNotEmpty) {
      json['_payloadMimeType'] =
          payloadMimeTypeElement!.map((Element v) => v.toJson()).toList();
    }
    json['address'] = address.value;
    if (addressElement != null) {
      json['_address'] = addressElement!.toJson();
    }
    if (header != null && header!.isNotEmpty) {
      json['header'] = header!.map((FhirString v) => v.value).toList();
    }
    if (headerElement != null && headerElement!.isNotEmpty) {
      json['_header'] = headerElement!.map((Element v) => v.toJson()).toList();
    }
    return json;
  }

  factory FhirEndpoint.fromJson(Map<String, dynamic> json) {
    return FhirEndpoint(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
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
      status: EndpointStatus.fromJson(json['status'] as Map<String, dynamic>),
      connectionType:
          Coding.fromJson(json['connectionType'] as Map<String, dynamic>),
      name: json['name'] != null ? FhirString(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      managingOrganization: json['managingOrganization'] != null
          ? Reference.fromJson(
              json['managingOrganization'] as Map<String, dynamic>)
          : null,
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<ContactPoint>((dynamic v) =>
                  ContactPoint.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      period: json['period'] != null
          ? Period.fromJson(json['period'] as Map<String, dynamic>)
          : null,
      payloadType: (json['payloadType'] as List<dynamic>)
          .map<CodeableConcept>((dynamic v) =>
              CodeableConcept.fromJson(v as Map<String, dynamic>))
          .toList(),
      payloadMimeType: json['payloadMimeType'] != null
          ? (json['payloadMimeType'] as List<dynamic>)
              .map<FhirCode>((dynamic v) => FhirCode(v))
              .toList()
          : null,
      payloadMimeTypeElement: json['_payloadMimeType'] != null
          ? (json['_payloadMimeType'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      address: FhirUrl(json['address']),
      addressElement:
          Element.fromJson(json['_address'] as Map<String, dynamic>),
      header: json['header'] != null
          ? (json['header'] as List<dynamic>)
              .map<FhirString>((dynamic v) => FhirString(v))
              .toList()
          : null,
      headerElement: json['_header'] != null
          ? (json['_header'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
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
    Coding? connectionType,
    FhirString? name,
    Element? nameElement,
    Reference? managingOrganization,
    List<ContactPoint>? contact,
    Period? period,
    List<CodeableConcept>? payloadType,
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
