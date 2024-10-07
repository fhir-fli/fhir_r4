import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'enrollment_response.g.dart';

/// [EnrollmentResponse] /// This resource provides enrollment and plan details from the processing of
/// an EnrollmentRequest resource.
@JsonSerializable()
class EnrollmentResponse extends DomainResource {
  EnrollmentResponse({
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
    this.request,
    this.outcome,
    this.outcomeElement,
    this.disposition,
    this.dispositionElement,
    this.created,
    this.createdElement,
    this.organization,
    this.requestProvider,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
            resourceType: R4ResourceType.EnrollmentResponse,
            fhirType: 'EnrollmentResponse');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// The Response business identifier.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// The status of the resource instance.
  @JsonKey(name: 'status')
  final FhirCode? status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [request] /// Original request resource reference.
  @JsonKey(name: 'request')
  final Reference? request;

  /// [outcome] /// Processing status: error, complete.
  @JsonKey(name: 'outcome')
  final FhirCode? outcome;
  @JsonKey(name: '_outcome')
  final Element? outcomeElement;

  /// [disposition] /// A description of the status of the adjudication.
  @JsonKey(name: 'disposition')
  final FhirString? disposition;
  @JsonKey(name: '_disposition')
  final Element? dispositionElement;

  /// [created] /// The date when the enclosed suite of services were performed or completed.
  @JsonKey(name: 'created')
  final FhirDateTime? created;
  @JsonKey(name: '_created')
  final Element? createdElement;

  /// [organization] /// The Insurer who produced this adjudicated response.
  @JsonKey(name: 'organization')
  final Reference? organization;

  /// [requestProvider] /// The practitioner who is responsible for the services rendered to the
  /// patient.
  @JsonKey(name: 'requestProvider')
  final Reference? requestProvider;
  factory EnrollmentResponse.fromJson(Map<String, dynamic> json) =>
      _$EnrollmentResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EnrollmentResponseToJson(this);

  @override
  EnrollmentResponse clone() => throw UnimplementedError();
  @override
  EnrollmentResponse copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirCode? status,
    Element? statusElement,
    Reference? request,
    FhirCode? outcome,
    Element? outcomeElement,
    FhirString? disposition,
    Element? dispositionElement,
    FhirDateTime? created,
    Element? createdElement,
    Reference? organization,
    Reference? requestProvider,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EnrollmentResponse(
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
      request: request ?? this.request,
      outcome: outcome ?? this.outcome,
      outcomeElement: outcomeElement ?? this.outcomeElement,
      disposition: disposition ?? this.disposition,
      dispositionElement: dispositionElement ?? this.dispositionElement,
      created: created ?? this.created,
      createdElement: createdElement ?? this.createdElement,
      organization: organization ?? this.organization,
      requestProvider: requestProvider ?? this.requestProvider,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory EnrollmentResponse.fromYaml(dynamic yaml) => yaml is String
      ? EnrollmentResponse.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? EnrollmentResponse.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'EnrollmentResponse cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory EnrollmentResponse.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EnrollmentResponse.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
