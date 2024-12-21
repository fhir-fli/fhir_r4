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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Population.fromJson(
    Map<String, dynamic> json,
  ) {
    return Population(
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
      ageX: json['ageRange'] != null
          ? Range.fromJson(
              json['ageRange'] as Map<String, dynamic>,
            )
          : json['ageCodeableConcept'] != null
              ? CodeableConcept.fromJson(
                  json['ageCodeableConcept'] as Map<String, dynamic>,
                )
              : null,
      gender: json['gender'] != null
          ? CodeableConcept.fromJson(
              json['gender'] as Map<String, dynamic>,
            )
          : null,
      race: json['race'] != null
          ? CodeableConcept.fromJson(
              json['race'] as Map<String, dynamic>,
            )
          : null,
      physiologicalCondition: json['physiologicalCondition'] != null
          ? CodeableConcept.fromJson(
              json['physiologicalCondition'] as Map<String, dynamic>,
            )
          : null,
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
    if (json is Map<String, Object?>) {
      return Population.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Population';

  /// [ageX]
  /// The age of the specific population.
  final AgeXPopulation? ageX;

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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (ageX != null) {
      json['age${ageX!.fhirType.capitalize()}'] = ageX!.toJson();
    }

    if (gender != null) {
      json['gender'] = gender!.toJson();
    }

    if (race != null) {
      json['race'] = race!.toJson();
    }

    if (physiologicalCondition != null) {
      json['physiologicalCondition'] = physiologicalCondition!.toJson();
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return Population(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      ageX: ageX ?? this.ageX,
      gender: gender ?? this.gender,
      race: race ?? this.race,
      physiologicalCondition:
          physiologicalCondition ?? this.physiologicalCondition,
    );
  }
}
