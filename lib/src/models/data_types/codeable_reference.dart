import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [CodeableReference]
/// A reference to a resource (by instance), or instead, a reference to a
/// concept defined in a terminology or ontology (by class).
class CodeableReference extends DataType
    implements
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Primary constructor for
  /// [CodeableReference]

  const CodeableReference({
    super.id,
    super.extension_,
    this.concept,
    this.reference,
    super.disallowExtensions,
    super.objectPath = 'CodeableReference',
  });

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CodeableReference.empty() => CodeableReference();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CodeableReference.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'CodeableReference';
    return CodeableReference(
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
      concept: JsonParser.parseObject<CodeableConcept>(
        json,
        'concept',
        CodeableConcept.fromJson,
        '$objectPath.concept',
      ),
      reference: JsonParser.parseObject<Reference>(
        json,
        'reference',
        Reference.fromJson,
        '$objectPath.reference',
      ),
    );
  }

  /// Deserialize [CodeableReference]
  /// from a [String] or [YamlMap] object
  factory CodeableReference.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CodeableReference.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CodeableReference.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CodeableReference '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CodeableReference]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CodeableReference.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CodeableReference.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CodeableReference';

  /// [concept]
  /// A reference to a concept - e.g. the information is identified by its
  /// general class to the degree of precision found in the terminology.
  final CodeableConcept? concept;

  /// [reference]
  /// A reference to a resource the provides exact details about the
  /// information being referenced.
  final Reference? reference;
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
    addField('concept', concept);
    addField('reference', reference);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'concept',
      'reference',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
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
      case 'concept':
        if (concept != null) {
          fields.add(concept!);
        }
      case 'reference':
        if (reference != null) {
          fields.add(reference!);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  CodeableReference clone() => throw UnimplementedError();
  @override
  CodeableReference copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    CodeableConcept? concept,
    Reference? reference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return CodeableReference(
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
      concept: concept?.copyWith(
            objectPath: '$newObjectPath.concept',
          ) ??
          this.concept,
      reference: reference?.copyWith(
            objectPath: '$newObjectPath.reference',
          ) ??
          this.reference,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CodeableReference) {
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
    if (!equalsDeepWithNull(concept, o.concept)) {
      return false;
    }
    if (!equalsDeepWithNull(reference, o.reference)) {
      return false;
    }
    return true;
  }
}
