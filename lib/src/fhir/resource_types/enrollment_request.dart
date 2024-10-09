import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [EnrollmentRequest] /// This resource provides the insurance enrollment details to the insurer
/// regarding a specified coverage.
class EnrollmentRequest extends DomainResource {
  EnrollmentRequest({
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
    this.status,
    this.statusElement,
    this.created,
    this.createdElement,
    this.insurer,
    this.provider,
    this.candidate,
    this.coverage,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.EnrollmentRequest);

  @override
  String get fhirType => 'EnrollmentRequest';

  @Id()
  int dbId = 0;

  /// [identifier] /// The Response business identifier.
  final List<Identifier>? identifier;

  /// [status] /// The status of the resource instance.
  final FinancialResourceStatusCodes? status;
  final Element? statusElement;

  /// [created] /// The date when this resource was created.
  final FhirDateTime? created;
  final Element? createdElement;

  /// [insurer] /// The Insurer who is target of the request.
  final Reference? insurer;

  /// [provider] /// The practitioner who is responsible for the services rendered to the
  /// patient.
  final Reference? provider;

  /// [candidate] /// Patient Resource.
  final Reference? candidate;

  /// [coverage] /// Reference to the program or plan identification, underwriter or payor.
  final Reference? coverage;
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
    if (status != null) {
      json['status'] = status!.toJson();
    }
    if (created?.value != null) {
      json['created'] = created!.toJson();
    }
    if (createdElement != null) {
      json['_created'] = createdElement!.toJson();
    }
    if (insurer != null) {
      json['insurer'] = insurer!.toJson();
    }
    if (provider != null) {
      json['provider'] = provider!.toJson();
    }
    if (candidate != null) {
      json['candidate'] = candidate!.toJson();
    }
    if (coverage != null) {
      json['coverage'] = coverage!.toJson();
    }
    return json;
  }

  factory EnrollmentRequest.fromJson(Map<String, dynamic> json) {
    return EnrollmentRequest(
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
      status: json['status'] != null
          ? FinancialResourceStatusCodes.fromJson(json['status'])
          : null,
      statusElement: json['_status'] != null
          ? Element.fromJson(json['_status'] as Map<String, dynamic>)
          : null,
      created: json['created'] != null
          ? FhirDateTime.fromJson(json['created'])
          : null,
      createdElement: json['_created'] != null
          ? Element.fromJson(json['_created'] as Map<String, dynamic>)
          : null,
      insurer: json['insurer'] != null
          ? Reference.fromJson(json['insurer'] as Map<String, dynamic>)
          : null,
      provider: json['provider'] != null
          ? Reference.fromJson(json['provider'] as Map<String, dynamic>)
          : null,
      candidate: json['candidate'] != null
          ? Reference.fromJson(json['candidate'] as Map<String, dynamic>)
          : null,
      coverage: json['coverage'] != null
          ? Reference.fromJson(json['coverage'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  EnrollmentRequest clone() => throw UnimplementedError();
  @override
  EnrollmentRequest copyWith({
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
    FinancialResourceStatusCodes? status,
    Element? statusElement,
    FhirDateTime? created,
    Element? createdElement,
    Reference? insurer,
    Reference? provider,
    Reference? candidate,
    Reference? coverage,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EnrollmentRequest(
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
      created: created ?? this.created,
      createdElement: createdElement ?? this.createdElement,
      insurer: insurer ?? this.insurer,
      provider: provider ?? this.provider,
      candidate: candidate ?? this.candidate,
      coverage: coverage ?? this.coverage,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory EnrollmentRequest.fromYaml(dynamic yaml) => yaml is String
      ? EnrollmentRequest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? EnrollmentRequest.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'EnrollmentRequest cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory EnrollmentRequest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EnrollmentRequest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
