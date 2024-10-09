import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [OperationOutcome] /// A collection of error, warning, or information messages that result from a
/// system action.
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
  }) : super(resourceType: R4ResourceType.OperationOutcome);

  @override
  String get fhirType => 'OperationOutcome';

  @Id()
  int dbId = 0;

  /// [issue] /// An error, warning, or information message that results from a system
  /// action.
  final List<OperationOutcomeIssue> issue;
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
    json['issue'] =
        issue.map<dynamic>((OperationOutcomeIssue v) => v.toJson()).toList();
    return json;
  }

  factory OperationOutcome.fromJson(Map<String, dynamic> json) {
    return OperationOutcome(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      issue: (json['issue'] as List<dynamic>)
          .map<OperationOutcomeIssue>((dynamic v) =>
              OperationOutcomeIssue.fromJson(v as Map<String, dynamic>))
          .toList(),
    );
  }
  @override
  OperationOutcome clone() => throw UnimplementedError();
  @override
  OperationOutcome copyWith({
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
  });

  @override
  String get fhirType => 'OperationOutcomeIssue';

  @Id()
  int dbId = 0;

  /// [severity] /// Indicates whether the issue indicates a variation from successful
  /// processing.
  final IssueSeverity severity;
  final Element? severityElement;

  /// [code] /// Describes the type of the issue. The system that creates an
  /// OperationOutcome SHALL choose the most applicable code from the IssueType
  /// value set, and may additional provide its own code for the error in the
  /// details element.
  final IssueType code;
  final Element? codeElement;

  /// [details] /// Additional details about the error. This may be a text description of the
  /// error or a system code that identifies the error.
  final CodeableConcept? details;

  /// [diagnostics] /// Additional diagnostic information about the issue.
  final FhirString? diagnostics;
  final Element? diagnosticsElement;

  /// [location] /// This element is deprecated because it is XML specific. It is replaced by
  /// issue.expression, which is format independent, and simpler to parse.
  ///
  /// For resource issues, this will be a simple XPath limited to element names,
  /// repetition indicators and the default child accessor that identifies one of
  /// the elements in the resource that caused this issue to be raised. For HTTP
  /// errors, will be "http." + the parameter name.
  final List<FhirString>? location;
  final List<Element>? locationElement;

  /// [expression] /// A [simple subset of FHIRPath](fhirpath.html#simple) limited to element
  /// names, repetition indicators and the default child accessor that identifies
  /// one of the elements in the resource that caused this issue to be raised.
  final List<FhirString>? expression;
  final List<Element>? expressionElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
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
    json['severity'] = severity.toJson();
    json['code'] = code.toJson();
    if (details != null) {
      json['details'] = details!.toJson();
    }
    if (diagnostics?.value != null) {
      json['diagnostics'] = diagnostics!.value;
    }
    if (diagnosticsElement != null) {
      json['_diagnostics'] = diagnosticsElement!.toJson();
    }
    if (location != null && location!.isNotEmpty) {
      json['location'] = location!.map((FhirString v) => v.value).toList();
    }
    if (locationElement != null && locationElement!.isNotEmpty) {
      json['_location'] =
          locationElement!.map((Element v) => v.toJson()).toList();
    }
    if (expression != null && expression!.isNotEmpty) {
      json['expression'] = expression!.map((FhirString v) => v.value).toList();
    }
    if (expressionElement != null && expressionElement!.isNotEmpty) {
      json['_expression'] =
          expressionElement!.map((Element v) => v.toJson()).toList();
    }
    return json;
  }

  factory OperationOutcomeIssue.fromJson(Map<String, dynamic> json) {
    return OperationOutcomeIssue(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      severity:
          IssueSeverity.fromJson(json['severity'] as Map<String, dynamic>),
      code: IssueType.fromJson(json['code'] as Map<String, dynamic>),
      details: json['details'] != null
          ? CodeableConcept.fromJson(json['details'] as Map<String, dynamic>)
          : null,
      diagnostics:
          json['diagnostics'] != null ? FhirString(json['diagnostics']) : null,
      diagnosticsElement: json['_diagnostics'] != null
          ? Element.fromJson(json['_diagnostics'] as Map<String, dynamic>)
          : null,
      location: json['location'] != null
          ? (json['location'] as List<dynamic>)
              .map<FhirString>((dynamic v) => FhirString.fromJson(v as dynamic))
              .toList()
          : null,
      locationElement: json['_location'] != null
          ? (json['_location'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      expression: json['expression'] != null
          ? (json['expression'] as List<dynamic>)
              .map<FhirString>((dynamic v) => FhirString.fromJson(v as dynamic))
              .toList()
          : null,
      expressionElement: json['_expression'] != null
          ? (json['_expression'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  OperationOutcomeIssue clone() => throw UnimplementedError();
  @override
  OperationOutcomeIssue copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    IssueSeverity? severity,
    Element? severityElement,
    IssueType? code,
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
