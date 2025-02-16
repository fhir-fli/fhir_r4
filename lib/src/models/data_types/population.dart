import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Population]
/// A populatioof people with some set of grouping criteria.
class Population extends BackboneType {
  /// Primary constructor for
  /// [Population]

  const Population({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.ageX,
    this.gender,
    this.race,
    this.physiologicalCondition,
    super.disallowExtensions,
    super.objectPath = 'Population',
  });

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Population.empty() => const Population();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Population.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'Population';
    return Population(
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
      ageX: JsonParser.parsePolymorphic<AgeXPopulation>(
        json,
        {
          'ageRange': Range.fromJson,
          'ageCodeableConcept': CodeableConcept.fromJson,
        },
        objectPath,
      ),
      gender: JsonParser.parseObject<CodeableConcept>(
        json,
        'gender',
        CodeableConcept.fromJson,
        '$objectPath.gender',
      ),
      race: JsonParser.parseObject<CodeableConcept>(
        json,
        'race',
        CodeableConcept.fromJson,
        '$objectPath.race',
      ),
      physiologicalCondition: JsonParser.parseObject<CodeableConcept>(
        json,
        'physiologicalCondition',
        CodeableConcept.fromJson,
        '$objectPath.physiologicalCondition',
      ),
    );
  }

  /// Deserialize [Population]
  /// from a [String] or [YamlMap] object
  factory Population.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Population.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Population.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Population '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Population]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Population.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Population.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Population';

  /// [ageX]
  /// The age of the specific population.
  final AgeXPopulation? ageX;

  /// Getter for [ageRange] as a Range
  Range? get ageRange => ageX?.isAs<Range>();

  /// Getter for [ageCodeableConcept] as a CodeableConcept
  CodeableConcept? get ageCodeableConcept => ageX?.isAs<CodeableConcept>();

  /// [gender]
  /// The gender of the specific population.
  final CodeableConcept? gender;

  /// [race]
  /// Race of the specific population.
  final CodeableConcept? race;

  /// [physiologicalCondition]
  /// The existing physiological conditions of the specific population to
  /// which this applies.
  final CodeableConcept? physiologicalCondition;
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
  List<String> children() {
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
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'age':
        fields.add(ageX!);
      case 'ageX':
        fields.add(ageX!);
      case 'ageRange':
        if (ageX is Range) {
          fields.add(ageX!);
        }
      case 'ageCodeableConcept':
        if (ageX is CodeableConcept) {
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  Population clone() => throw UnimplementedError();
  @override
  Population copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    AgeXPopulation? ageX,
    CodeableConcept? gender,
    CodeableConcept? race,
    CodeableConcept? physiologicalCondition,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return Population(
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
      ageX: ageX?.copyWith(
            objectPath: '$newObjectPath.ageX',
          ) as AgeXPopulation? ??
          this.ageX,
      gender: gender?.copyWith(
            objectPath: '$newObjectPath.gender',
          ) ??
          this.gender,
      race: race?.copyWith(
            objectPath: '$newObjectPath.race',
          ) ??
          this.race,
      physiologicalCondition: physiologicalCondition?.copyWith(
            objectPath: '$newObjectPath.physiologicalCondition',
          ) ??
          this.physiologicalCondition,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Population) {
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
    if (!equalsDeepWithNull(ageX, o.ageX)) {
      return false;
    }
    if (!equalsDeepWithNull(gender, o.gender)) {
      return false;
    }
    if (!equalsDeepWithNull(race, o.race)) {
      return false;
    }
    if (!equalsDeepWithNull(physiologicalCondition, o.physiologicalCondition)) {
      return false;
    }
    return true;
  }
}
