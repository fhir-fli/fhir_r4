import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Coding]
/// A reference to a code defined by a terminology system.
class Coding extends DataType
    implements
        ValueXCodeSystemProperty,
        ValueXContractAnswer,
        EventXMessageDefinition,
        EventXMessageHeader,
        ValueXParametersParameter,
        AnswerXQuestionnaireEnableWhen,
        ValueXQuestionnaireAnswerOption,
        ValueXQuestionnaireInitial,
        ValueXQuestionnaireResponseAnswer,
        DefaultValueXStructureMapSource,
        ValueXTaskInput,
        ValueXTaskOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Primary constructor for
  /// [Coding]

  const Coding({
    super.id,
    super.extension_,
    this.system,
    this.version,
    this.code,
    this.display,
    this.userSelected,
    super.disallowExtensions,
    super.objectPath = 'Coding',
  });

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Coding.empty() => const Coding();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Coding.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'Coding';
    return Coding(
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
      system: JsonParser.parsePrimitive<FhirUri>(
        json,
        'system',
        FhirUri.fromJson,
        '$objectPath.system',
      ),
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
        '$objectPath.version',
      ),
      code: JsonParser.parsePrimitive<FhirCode>(
        json,
        'code',
        FhirCode.fromJson,
        '$objectPath.code',
      ),
      display: JsonParser.parsePrimitive<FhirString>(
        json,
        'display',
        FhirString.fromJson,
        '$objectPath.display',
      ),
      userSelected: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'userSelected',
        FhirBoolean.fromJson,
        '$objectPath.userSelected',
      ),
    );
  }

  /// Deserialize [Coding]
  /// from a [String] or [YamlMap] object
  factory Coding.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Coding.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Coding.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Coding '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Coding]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Coding.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Coding.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Coding';

  /// [system]
  /// The identification of the code system that defines the meaning of the
  /// symbol in the code.
  final FhirUri? system;

  /// [version]
  /// The version of the code system which was used when choosing this code.
  /// Note that a well-maintained code system does not need the version
  /// reported, because the meaning of codes is consistent across versions.
  /// However this cannot consistently be assured, and when the meaning is
  /// not guaranteed to be consistent, the version SHOULD be exchanged.
  final FhirString? version;

  /// [code]
  /// A symbol in syntax defined by the system. The symbol may be a
  /// predefined code or an expression in a syntax defined by the coding
  /// system (e.g. post-coordination).
  final FhirCode? code;

  /// [display]
  /// A representation of the meaning of the code in the system, following
  /// the rules of the system.
  final FhirString? display;

  /// [userSelected]
  /// Indicates that this coding was chosen by a user directly - e.g. off a
  /// pick list of available items (codes or displays).
  final FhirBoolean? userSelected;
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'system',
      system,
    );
    addField(
      'version',
      version,
    );
    addField(
      'code',
      code,
    );
    addField(
      'display',
      display,
    );
    addField(
      'userSelected',
      userSelected,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'system',
      'version',
      'code',
      'display',
      'userSelected',
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
      case 'system':
        if (system != null) {
          fields.add(system!);
        }
      case 'version':
        if (version != null) {
          fields.add(version!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'display':
        if (display != null) {
          fields.add(display!);
        }
      case 'userSelected':
        if (userSelected != null) {
          fields.add(userSelected!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'system':
        {
          if (child is FhirUri) {
            return copyWith(system: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'version':
        {
          if (child is FhirString) {
            return copyWith(version: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is FhirCode) {
            return copyWith(code: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'display':
        {
          if (child is FhirString) {
            return copyWith(display: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'userSelected':
        {
          if (child is FhirBoolean) {
            return copyWith(userSelected: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
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
      case 'system':
        return ['FhirUri'];
      case 'version':
        return ['FhirString'];
      case 'code':
        return ['FhirCode'];
      case 'display':
        return ['FhirString'];
      case 'userSelected':
        return ['FhirBoolean'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [Coding]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  Coding createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'system':
        {
          return copyWith(
            system: FhirUri.empty(),
          );
        }
      case 'version':
        {
          return copyWith(
            version: FhirString.empty(),
          );
        }
      case 'code':
        {
          return copyWith(
            code: FhirCode.empty(),
          );
        }
      case 'display':
        {
          return copyWith(
            display: FhirString.empty(),
          );
        }
      case 'userSelected':
        {
          return copyWith(
            userSelected: FhirBoolean.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  Coding clear({
    bool id = false,
    bool extension_ = false,
    bool system = false,
    bool version = false,
    bool code = false,
    bool display = false,
    bool userSelected = false,
  }) {
    return Coding(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      system: system ? null : this.system,
      version: version ? null : this.version,
      code: code ? null : this.code,
      display: display ? null : this.display,
      userSelected: userSelected ? null : this.userSelected,
    );
  }

  @override
  Coding clone() => throw UnimplementedError();
  @override
  Coding copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirUri? system,
    FhirString? version,
    FhirCode? code,
    FhirString? display,
    FhirBoolean? userSelected,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return Coding(
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
      system: system?.copyWith(
            objectPath: '$newObjectPath.system',
          ) ??
          this.system,
      version: version?.copyWith(
            objectPath: '$newObjectPath.version',
          ) ??
          this.version,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      display: display?.copyWith(
            objectPath: '$newObjectPath.display',
          ) ??
          this.display,
      userSelected: userSelected?.copyWith(
            objectPath: '$newObjectPath.userSelected',
          ) ??
          this.userSelected,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Coding) {
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
    if (!equalsDeepWithNull(
      system,
      o.system,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      version,
      o.version,
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
      display,
      o.display,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      userSelected,
      o.userSelected,
    )) {
      return false;
    }
    return true;
  }
}
