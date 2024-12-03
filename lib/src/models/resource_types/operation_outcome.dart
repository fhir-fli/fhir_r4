import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [OperationOutcome]
/// A collection of error, warning, or information messages that result
/// from a system action.
class OperationOutcome extends DomainResource {
  /// Primary constructor for
  /// [OperationOutcome]

  OperationOutcome({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    required this.issue,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  }) : super(
          resourceType: R4ResourceType.OperationOutcome,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory OperationOutcome.fromJson(
    Map<String, dynamic> json,
  ) {
    return OperationOutcome(
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
      issue: ensureNonNullList(
        (json['issue'] as List<dynamic>)
            .map<OperationOutcomeIssue>(
              (v) => OperationOutcomeIssue.fromJson(
                v as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
    );
  }

  /// Deserialize [OperationOutcome]
  /// from a [String] or [YamlMap] object
  factory OperationOutcome.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return OperationOutcome.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return OperationOutcome.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'OperationOutcome '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [OperationOutcome]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory OperationOutcome.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return OperationOutcome.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'OperationOutcome';

  /// [issue]
  /// An error, warning, or information message that results from a system
  /// action.
  final List<OperationOutcomeIssue> issue;
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

    if (issue.isNotEmpty) {
      json['issue'] = issue.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  OperationOutcome clone() => throw UnimplementedError();
  @override
  OperationOutcome copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<OperationOutcomeIssue>? issue,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return OperationOutcome(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      issue: issue ?? this.issue,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [OperationOutcomeIssue]
/// An error, warning, or information message that results from a system
/// action.
class OperationOutcomeIssue extends BackboneElement {
  /// Primary constructor for
  /// [OperationOutcomeIssue]

  OperationOutcomeIssue({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.severity,
    required this.code,
    this.details,
    this.diagnostics,
    this.location,
    this.expression,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory OperationOutcomeIssue.fromJson(
    Map<String, dynamic> json,
  ) {
    return OperationOutcomeIssue(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      severity: IssueSeverity.fromJson({
        'value': json['severity'],
        '_value': json['_severity'],
      }),
      code: IssueType.fromJson({
        'value': json['code'],
        '_value': json['_code'],
      }),
      details: json['details'] != null
          ? CodeableConcept.fromJson(
              json['details'] as Map<String, dynamic>,
            )
          : null,
      diagnostics: (json['diagnostics'] != null || json['_diagnostics'] != null)
          ? FhirString.fromJson({
              'value': json['diagnostics'],
              '_value': json['_diagnostics'],
            })
          : null,
      location: parsePrimitiveList<FhirString>(
        json['location'] as List<dynamic>?,
        json['_location'] as List<dynamic>?,
        fromJson: FhirString.fromJson,
      ),
      expression: parsePrimitiveList<FhirString>(
        json['expression'] as List<dynamic>?,
        json['_expression'] as List<dynamic>?,
        fromJson: FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [OperationOutcomeIssue]
  /// from a [String] or [YamlMap] object
  factory OperationOutcomeIssue.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return OperationOutcomeIssue.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return OperationOutcomeIssue.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'OperationOutcomeIssue '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [OperationOutcomeIssue]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory OperationOutcomeIssue.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return OperationOutcomeIssue.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'OperationOutcomeIssue';

  /// [severity]
  /// Indicates whether the issue indicates a variation from successful
  /// processing.
  final IssueSeverity severity;

  /// [code]
  /// Describes the type of the issue. The system that creates an
  /// OperationOutcome SHALL choose the most applicable code from the
  /// IssueType value set, and may additional provide its own code for the
  /// error in the details element.
  final IssueType code;

  /// [details]
  /// Additional details about the error. This may be a text description of
  /// the error or a system code that identifies the error.
  final CodeableConcept? details;

  /// [diagnostics]
  /// Additional diagnostic information about the issue.
  final FhirString? diagnostics;

  /// [location]
  /// This element is deprecated because it is XML specific. It is replaced
  /// by issue.expression, which is format independent, and simpler to parse.
  ///
  ///
  /// For resource issues, this will be a simple XPath limited to element
  /// names, repetition indicators and the default child accessor that
  /// identifies one of the elements in the resource that caused this issue
  /// to be raised. For HTTP errors, will be "http." + the parameter name.
  final List<FhirString>? location;

  /// [expression]
  /// A [simple subset of FHIRPath](fhirpath.html#simple) limited to element
  /// names, repetition indicators and the default child accessor that
  /// identifies one of the elements in the resource that caused this issue
  /// to be raised.
  final List<FhirString>? expression;
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

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('severity', severity);
    addField('code', code);
    if (details != null) {
      json['details'] = details!.toJson();
    }

    addField('diagnostics', diagnostics);
    if (location != null && location!.isNotEmpty) {
      final fieldJson0 = location!.map((e) => e.toJson()).toList();
      json['location'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_location'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (expression != null && expression!.isNotEmpty) {
      final fieldJson1 = expression!.map((e) => e.toJson()).toList();
      json['expression'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_expression'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  OperationOutcomeIssue clone() => throw UnimplementedError();
  @override
  OperationOutcomeIssue copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    IssueSeverity? severity,
    IssueType? code,
    CodeableConcept? details,
    FhirString? diagnostics,
    List<FhirString>? location,
    List<FhirString>? expression,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return OperationOutcomeIssue(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      severity: severity ?? this.severity,
      code: code ?? this.code,
      details: details ?? this.details,
      diagnostics: diagnostics ?? this.diagnostics,
      location: location ?? this.location,
      expression: expression ?? this.expression,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}
