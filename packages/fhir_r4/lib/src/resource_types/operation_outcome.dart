import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'operation_outcome.g.dart';

/// [OperationOutcome]
/// A collection of error, warning, or information messages that result
/// from a system action.
class OperationOutcome extends DomainResource {
  /// Primary constructor for
  /// [OperationOutcome]

  const OperationOutcome({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    required this.issue,
  }) : super(
          resourceType: R4ResourceType.OperationOutcome,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory OperationOutcome.fromJson(
    Map<String, dynamic> json,
  ) {
    return OperationOutcome(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      issue: (json['issue'] as List<dynamic>)
          .map<OperationOutcomeIssue>(
            (v) => OperationOutcomeIssue.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
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
    if (json is Map<String, dynamic>) {
      return OperationOutcome.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'issue',
      issue,
    );
    return json;
  }

  @override
  OperationOutcome clone() => copyWith();

  /// Copy function for [OperationOutcome]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $OperationOutcomeCopyWith<OperationOutcome> get copyWith =>
      _$OperationOutcomeCopyWithImpl<OperationOutcome>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! OperationOutcome) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
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
    if (!listEquals<OperationOutcomeIssue>(
      issue,
      o.issue,
    )) {
      return false;
    }
    return true;
  }
}

/// [OperationOutcomeIssue]
/// An error, warning, or information message that results from a system
/// action.
class OperationOutcomeIssue extends BackboneElement {
  /// Primary constructor for
  /// [OperationOutcomeIssue]

  const OperationOutcomeIssue({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.severity,
    required this.code,
    this.details,
    this.diagnostics,
    this.location,
    this.expression,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory OperationOutcomeIssue.fromJson(
    Map<String, dynamic> json,
  ) {
    return OperationOutcomeIssue(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      severity: JsonParser.parsePrimitive<IssueSeverity>(
        json,
        'severity',
        IssueSeverity.fromJson,
      )!,
      code: JsonParser.parsePrimitive<IssueType>(
        json,
        'code',
        IssueType.fromJson,
      )!,
      details: JsonParser.parseObject<CodeableConcept>(
        json,
        'details',
        CodeableConcept.fromJson,
      ),
      diagnostics: JsonParser.parsePrimitive<FhirString>(
        json,
        'diagnostics',
        FhirString.fromJson,
      ),
      location: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'location',
        FhirString.fromJson,
      ),
      expression: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'expression',
        FhirString.fromJson,
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
    if (json is Map<String, dynamic>) {
      return OperationOutcomeIssue.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'severity',
      severity,
    );
    addField(
      'code',
      code,
    );
    addField(
      'details',
      details,
    );
    addField(
      'diagnostics',
      diagnostics,
    );
    addField(
      'location',
      location,
    );
    addField(
      'expression',
      expression,
    );
    return json;
  }

  @override
  OperationOutcomeIssue clone() => copyWith();

  /// Copy function for [OperationOutcomeIssue]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $OperationOutcomeIssueCopyWith<OperationOutcomeIssue> get copyWith =>
      _$OperationOutcomeIssueCopyWithImpl<OperationOutcomeIssue>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! OperationOutcomeIssue) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
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
    if (!equalsDeepWithNull(
      severity,
      o.severity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      details,
      o.details,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      diagnostics,
      o.diagnostics,
    )) {
      return false;
    }
    if (!listEquals<FhirString>(
      location,
      o.location,
    )) {
      return false;
    }
    if (!listEquals<FhirString>(
      expression,
      o.expression,
    )) {
      return false;
    }
    return true;
  }
}
