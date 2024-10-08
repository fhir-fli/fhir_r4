import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'enrollment_request.g.dart';

/// [EnrollmentRequest] /// This resource provides the insurance enrollment details to the insurer
/// regarding a specified coverage.
@JsonSerializable()
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
    R4ResourceType? resourceType,
  }) : super(
            resourceType: R4ResourceType.EnrollmentRequest,
            fhirType: 'EnrollmentRequest');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// The Response business identifier.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// The status of the resource instance.
  @JsonKey(name: 'status')
  final FinancialResourceStatusCodes? status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [created] /// The date when this resource was created.
  @JsonKey(name: 'created')
  final FhirDateTime? created;
  @JsonKey(name: '_created')
  final Element? createdElement;

  /// [insurer] /// The Insurer who is target of the request.
  @JsonKey(name: 'insurer')
  final Reference? insurer;

  /// [provider] /// The practitioner who is responsible for the services rendered to the
  /// patient.
  @JsonKey(name: 'provider')
  final Reference? provider;

  /// [candidate] /// Patient Resource.
  @JsonKey(name: 'candidate')
  final Reference? candidate;

  /// [coverage] /// Reference to the program or plan identification, underwriter or payor.
  @JsonKey(name: 'coverage')
  final Reference? coverage;
  factory EnrollmentRequest.fromJson(Map<String, dynamic> json) =>
      _$EnrollmentRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EnrollmentRequestToJson(this);

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
