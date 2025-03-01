import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

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
          objectPath: 'OperationOutcome',
          resourceType: R4ResourceType.OperationOutcome,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory OperationOutcome.empty() => const OperationOutcome(
        issue: <OperationOutcomeIssue>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory OperationOutcome.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'OperationOutcome';
    return OperationOutcome(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      issue: (json['issue'] as List<dynamic>)
          .map<OperationOutcomeIssue>(
            (v) => OperationOutcomeIssue.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.issue',
              },
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('issue', issue);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'issue',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'issue':
        fields.addAll(issue);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            return copyWith(contained: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'issue':
        {
          if (child is List<OperationOutcomeIssue>) {
            return copyWith(issue: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'meta':
        return ['FhirMeta'];
      case 'implicitRules':
        return ['FhirUri'];
      case 'language':
        return ['FhirCode'];
      case 'text':
        return ['Narrative'];
      case 'contained':
        return ['Resource'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'issue':
        return ['OperationOutcomeIssue'];
      default:
        return <String>[];
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return OperationOutcome(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      issue: issue
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.issue',
                ),
              )
              .toList() ??
          this.issue,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! OperationOutcome) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!equalsDeepWithNull(meta, o.meta)) {
      return false;
    }
    if (!equalsDeepWithNull(implicitRules, o.implicitRules)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
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
  }) : super(
          objectPath: 'OperationOutcome.issue',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory OperationOutcomeIssue.empty() => OperationOutcomeIssue(
        severity: IssueSeverity.values.first,
        code: IssueType.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory OperationOutcomeIssue.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'OperationOutcome.issue';
    return OperationOutcomeIssue(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      severity: JsonParser.parsePrimitive<IssueSeverity>(
        json,
        'severity',
        IssueSeverity.fromJson,
        '$objectPath.severity',
      )!,
      code: JsonParser.parsePrimitive<IssueType>(
        json,
        'code',
        IssueType.fromJson,
        '$objectPath.code',
      )!,
      details: JsonParser.parseObject<CodeableConcept>(
        json,
        'details',
        CodeableConcept.fromJson,
        '$objectPath.details',
      ),
      diagnostics: JsonParser.parsePrimitive<FhirString>(
        json,
        'diagnostics',
        FhirString.fromJson,
        '$objectPath.diagnostics',
      ),
      location: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'location',
        FhirString.fromJson,
        '$objectPath.location',
      ),
      expression: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'expression',
        FhirString.fromJson,
        '$objectPath.expression',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('severity', severity);
    addField('code', code);
    addField('details', details);
    addField('diagnostics', diagnostics);
    addField('location', location);
    addField('expression', expression);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'severity',
      'code',
      'details',
      'diagnostics',
      'location',
      'expression',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'severity':
        fields.add(severity);
      case 'code':
        fields.add(code);
      case 'details':
        if (details != null) {
          fields.add(details!);
        }
      case 'diagnostics':
        if (diagnostics != null) {
          fields.add(diagnostics!);
        }
      case 'location':
        if (location != null) {
          fields.addAll(location!);
        }
      case 'expression':
        if (expression != null) {
          fields.addAll(expression!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'severity':
        {
          if (child is IssueSeverity) {
            return copyWith(severity: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'code':
        {
          if (child is IssueType) {
            return copyWith(code: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'details':
        {
          if (child is CodeableConcept) {
            return copyWith(details: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'diagnostics':
        {
          if (child is FhirString) {
            return copyWith(diagnostics: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'location':
        {
          if (child is List<FhirString>) {
            return copyWith(location: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'expression':
        {
          if (child is List<FhirString>) {
            return copyWith(expression: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'severity':
        return ['FhirCode'];
      case 'code':
        return ['FhirCode'];
      case 'details':
        return ['CodeableConcept'];
      case 'diagnostics':
        return ['FhirString'];
      case 'location':
        return ['FhirString'];
      case 'expression':
        return ['FhirString'];
      default:
        return <String>[];
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return OperationOutcomeIssue(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      severity: severity?.copyWith(
            objectPath: '$newObjectPath.severity',
          ) ??
          this.severity,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      details: details?.copyWith(
            objectPath: '$newObjectPath.details',
          ) ??
          this.details,
      diagnostics: diagnostics?.copyWith(
            objectPath: '$newObjectPath.diagnostics',
          ) ??
          this.diagnostics,
      location: location
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.location',
                ),
              )
              .toList() ??
          this.location,
      expression: expression
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.expression',
                ),
              )
              .toList() ??
          this.expression,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! OperationOutcomeIssue) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(severity, o.severity)) {
      return false;
    }
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    if (!equalsDeepWithNull(details, o.details)) {
      return false;
    }
    if (!equalsDeepWithNull(diagnostics, o.diagnostics)) {
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
