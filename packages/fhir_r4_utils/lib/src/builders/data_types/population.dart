import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show Population, StringExtensionForFHIR, yamlMapToJson, yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [PopulationBuilder]
/// A populatioof people with some set of grouping criteria.
class PopulationBuilder extends BackboneTypeBuilder {
  /// Primary constructor for
  /// [PopulationBuilder]

  PopulationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.ageX,
    this.gender,
    this.race,
    this.physiologicalCondition,
    super.disallowExtensions,
    super.objectPath = 'PopulationBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory PopulationBuilder.empty() => PopulationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PopulationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'Population';
    return PopulationBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      ageX: JsonParser.parsePolymorphic<AgeXPopulationBuilder>(
        json,
        {
          'ageRange': RangeBuilder.fromJson,
          'ageCodeableConcept': CodeableConceptBuilder.fromJson,
        },
        objectPath,
      ),
      gender: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'gender',
        CodeableConceptBuilder.fromJson,
        '$objectPath.gender',
      ),
      race: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'race',
        CodeableConceptBuilder.fromJson,
        '$objectPath.race',
      ),
      physiologicalCondition: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'physiologicalCondition',
        CodeableConceptBuilder.fromJson,
        '$objectPath.physiologicalCondition',
      ),
    );
  }

  /// Deserialize [PopulationBuilder]
  /// from a [String] or [YamlMap] object
  factory PopulationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PopulationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PopulationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PopulationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PopulationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PopulationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PopulationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Population';

  /// [ageX]
  /// The age of the specific population.
  AgeXPopulationBuilder? ageX;

  /// Getter for [ageRange] as a RangeBuilder
  RangeBuilder? get ageRange => ageX?.isAs<RangeBuilder>();

  /// Getter for [ageCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get ageCodeableConcept =>
      ageX?.isAs<CodeableConceptBuilder>();

  /// [gender]
  /// The gender of the specific population.
  CodeableConceptBuilder? gender;

  /// [race]
  /// Race of the specific population.
  CodeableConceptBuilder? race;

  /// [physiologicalCondition]
  /// The existing physiological conditions of the specific population to
  /// which this applies.
  CodeableConceptBuilder? physiologicalCondition;

  /// Converts a [PopulationBuilder]
  /// to [Population]
  @override
  Population build() => Population.fromJson(toJson());

  /// Converts a [PopulationBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    if (ageX != null) {
      final fhirType = ageX!.fhirType;
      addField('age${fhirType.capitalize()}', ageX);
    }

    addField('gender', gender);
    addField('race', race);
    addField('physiologicalCondition', physiologicalCondition);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'ageX',
      'gender',
      'race',
      'physiologicalCondition',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
      case 'age':
        if (ageX != null) {
          fields.add(ageX!);
        }
      case 'ageX':
        if (ageX != null) {
          fields.add(ageX!);
        }
      case 'ageRange':
        if (ageX is RangeBuilder) {
          fields.add(ageX!);
        }
      case 'ageCodeableConcept':
        if (ageX is CodeableConceptBuilder) {
          fields.add(ageX!);
        }
      case 'gender':
        if (gender != null) {
          fields.add(gender!);
        }
      case 'race':
        if (race != null) {
          fields.add(race!);
        }
      case 'physiologicalCondition':
        if (physiologicalCondition != null) {
          fields.add(physiologicalCondition!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'age':
      case 'ageX':
        {
          if (child is AgeXPopulationBuilder) {
            ageX = child;
            return;
          } else {
            if (child is RangeBuilder) {
              ageX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              ageX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'ageRange':
        {
          if (child is RangeBuilder) {
            ageX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'ageCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            ageX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'gender':
        {
          if (child is CodeableConceptBuilder) {
            gender = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'race':
        {
          if (child is CodeableConceptBuilder) {
            race = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'physiologicalCondition':
        {
          if (child is CodeableConceptBuilder) {
            physiologicalCondition = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'age':
      case 'ageX':
        return [
          'RangeBuilder',
          'CodeableConceptBuilder',
        ];
      case 'ageRange':
        return ['RangeBuilder'];
      case 'ageCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'gender':
        return ['CodeableConceptBuilder'];
      case 'race':
        return ['CodeableConceptBuilder'];
      case 'physiologicalCondition':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PopulationBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'age':
      case 'ageX':
      case 'ageRange':
        {
          ageX = RangeBuilder.empty();
          return;
        }
      case 'ageCodeableConcept':
        {
          ageX = CodeableConceptBuilder.empty();
          return;
        }
      case 'gender':
        {
          gender = CodeableConceptBuilder.empty();
          return;
        }
      case 'race':
        {
          race = CodeableConceptBuilder.empty();
          return;
        }
      case 'physiologicalCondition':
        {
          physiologicalCondition = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  PopulationBuilder clone() => throw UnimplementedError();
  @override
  PopulationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    AgeXPopulationBuilder? ageX,
    CodeableConceptBuilder? gender,
    CodeableConceptBuilder? race,
    CodeableConceptBuilder? physiologicalCondition,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = PopulationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      ageX: ageX ?? this.ageX,
      gender: gender ?? this.gender,
      race: race ?? this.race,
      physiologicalCondition:
          physiologicalCondition ?? this.physiologicalCondition,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! PopulationBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      ageX,
      o.ageX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      gender,
      o.gender,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      race,
      o.race,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      physiologicalCondition,
      o.physiologicalCondition,
    )) {
      return false;
    }
    return true;
  }
}
