import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Population]
/// A populatioof people with some set of grouping criteria.
class Population extends BackboneType {
  /// Primary constructor for
  /// [Population]

  Population({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.ageRange,
    this.ageCodeableConcept,
    this.gender,
    this.race,
    this.physiologicalCondition,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Population.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return Population(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      ageRange: json['ageRange'] != null
          ? Range.fromJson(
              json['ageRange'] as Map<String, dynamic>,
            )
          : null,
      ageCodeableConcept: json['ageCodeableConcept'] != null
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

  /// [ageRange]
  /// The age of the specific population.
  final Range? ageRange;

  /// [ageCodeableConcept]
  /// The age of the specific population.
  final CodeableConcept? ageCodeableConcept;

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

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (ageRange != null) {
      json['ageRange'] = ageRange!.toJson();
    }

    if (ageCodeableConcept != null) {
      json['ageCodeableConcept'] = ageCodeableConcept!.toJson();
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
    Range? ageRange,
    CodeableConcept? ageCodeableConcept,
    CodeableConcept? gender,
    CodeableConcept? race,
    CodeableConcept? physiologicalCondition,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Population(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      ageRange: ageRange ?? this.ageRange,
      ageCodeableConcept: ageCodeableConcept ?? this.ageCodeableConcept,
      gender: gender ?? this.gender,
      race: race ?? this.race,
      physiologicalCondition:
          physiologicalCondition ?? this.physiologicalCondition,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
