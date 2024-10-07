import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'operation_outcome.g.dart';

/// [OperationOutcome] /// A collection of error, warning, or information messages that result from a
/// system action.
@JsonSerializable()
class OperationOutcome extends DomainResource {
  OperationOutcome({
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
    required this.issue,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
            resourceType: R4ResourceType.OperationOutcome,
            fhirType: 'OperationOutcome');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [issue] /// An error, warning, or information message that results from a system
  /// action.
  @JsonKey(name: 'issue')
  final List<OperationOutcomeIssue> issue;
  factory OperationOutcome.fromJson(Map<String, dynamic> json) =>
      _$OperationOutcomeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$OperationOutcomeToJson(this);

  @override
  OperationOutcome clone() => throw UnimplementedError();
  @override
  OperationOutcome copyWith({
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
    List<OperationOutcomeIssue>? issue,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return OperationOutcome(
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
      issue: issue ?? this.issue,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory OperationOutcome.fromYaml(dynamic yaml) => yaml is String
      ? OperationOutcome.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? OperationOutcome.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'OperationOutcome cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory OperationOutcome.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return OperationOutcome.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [OperationOutcomeIssue] /// An error, warning, or information message that results from a system
/// action.
@JsonSerializable()
class OperationOutcomeIssue extends BackboneElement {
  OperationOutcomeIssue({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.severity,
    this.severityElement,
    required this.code,
    this.codeElement,
    this.details,
    this.diagnostics,
    this.diagnosticsElement,
    this.location,
    this.locationElement,
    this.expression,
    this.expressionElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'OperationOutcomeIssue');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [severity] /// Indicates whether the issue indicates a variation from successful
  /// processing.
  @JsonKey(name: 'severity')
  final FhirCode severity;
  @JsonKey(name: '_severity')
  final Element? severityElement;

  /// [code] /// Describes the type of the issue. The system that creates an
  /// OperationOutcome SHALL choose the most applicable code from the IssueType
  /// value set, and may additional provide its own code for the error in the
  /// details element.
  @JsonKey(name: 'code')
  final FhirCode code;
  @JsonKey(name: '_code')
  final Element? codeElement;

  /// [details] /// Additional details about the error. This may be a text description of the
  /// error or a system code that identifies the error.
  @JsonKey(name: 'details')
  final CodeableConcept? details;

  /// [diagnostics] /// Additional diagnostic information about the issue.
  @JsonKey(name: 'diagnostics')
  final FhirString? diagnostics;
  @JsonKey(name: '_diagnostics')
  final Element? diagnosticsElement;

  /// [location] /// This element is deprecated because it is XML specific. It is replaced by
  /// issue.expression, which is format independent, and simpler to parse.
  ///
  /// For resource issues, this will be a simple XPath limited to element names,
  /// repetition indicators and the default child accessor that identifies one of
  /// the elements in the resource that caused this issue to be raised. For HTTP
  /// errors, will be "http." + the parameter name.
  @JsonKey(name: 'location')
  final List<FhirString>? location;
  @JsonKey(name: '_location')
  final List<Element>? locationElement;

  /// [expression] /// A [simple subset of FHIRPath](fhirpath.html#simple) limited to element
  /// names, repetition indicators and the default child accessor that identifies
  /// one of the elements in the resource that caused this issue to be raised.
  @JsonKey(name: 'expression')
  final List<FhirString>? expression;
  @JsonKey(name: '_expression')
  final List<Element>? expressionElement;
  factory OperationOutcomeIssue.fromJson(Map<String, dynamic> json) =>
      _$OperationOutcomeIssueFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$OperationOutcomeIssueToJson(this);

  @override
  OperationOutcomeIssue clone() => throw UnimplementedError();
  @override
  OperationOutcomeIssue copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? severity,
    Element? severityElement,
    FhirCode? code,
    Element? codeElement,
    CodeableConcept? details,
    FhirString? diagnostics,
    Element? diagnosticsElement,
    List<FhirString>? location,
    List<Element>? locationElement,
    List<FhirString>? expression,
    List<Element>? expressionElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return OperationOutcomeIssue(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      severity: severity ?? this.severity,
      severityElement: severityElement ?? this.severityElement,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      details: details ?? this.details,
      diagnostics: diagnostics ?? this.diagnostics,
      diagnosticsElement: diagnosticsElement ?? this.diagnosticsElement,
      location: location ?? this.location,
      locationElement: locationElement ?? this.locationElement,
      expression: expression ?? this.expression,
      expressionElement: expressionElement ?? this.expressionElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory OperationOutcomeIssue.fromYaml(dynamic yaml) => yaml is String
      ? OperationOutcomeIssue.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? OperationOutcomeIssue.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'OperationOutcomeIssue cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory OperationOutcomeIssue.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return OperationOutcomeIssue.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
