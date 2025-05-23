import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'population.g.dart';

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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Population.fromJson(
    Map<String, dynamic> json,
  ) {
    return Population(
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
      ageX: JsonParser.parsePolymorphic<AgeXPopulation>(
        json,
        {
          'ageRange': Range.fromJson,
          'ageCodeableConcept': CodeableConcept.fromJson,
        },
      ),
      gender: JsonParser.parseObject<CodeableConcept>(
        json,
        'gender',
        CodeableConcept.fromJson,
      ),
      race: JsonParser.parseObject<CodeableConcept>(
        json,
        'race',
        CodeableConcept.fromJson,
      ),
      physiologicalCondition: JsonParser.parseObject<CodeableConcept>(
        json,
        'physiologicalCondition',
        CodeableConcept.fromJson,
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
    if (ageX != null) {
      final fhirType = ageX!.fhirType;
      addField(
        'age${fhirType.capitalize()}',
        ageX,
      );
    }

    addField(
      'gender',
      gender,
    );
    addField(
      'race',
      race,
    );
    addField(
      'physiologicalCondition',
      physiologicalCondition,
    );
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  Population clone() => copyWith();

  /// Copy function for [Population]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $PopulationCopyWith<Population> get copyWith =>
      _$PopulationCopyWithImpl<Population>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Population) {
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
