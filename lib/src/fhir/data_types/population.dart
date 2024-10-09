import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'population.g.dart';

/// [Population] /// A populatioof people with some set of grouping criteria.
@JsonSerializable()
class Population extends BackboneType {
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
  @override
  String get fhirType => 'Population';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [ageRange] /// The age of the specific population.
  @JsonKey(name: 'ageRange')
  final Range? ageRange;

  /// [ageCodeableConcept] /// The age of the specific population.
  @JsonKey(name: 'ageCodeableConcept')
  final CodeableConcept? ageCodeableConcept;

  /// [gender] /// The gender of the specific population.
  @JsonKey(name: 'gender')
  final CodeableConcept? gender;

  /// [race] /// Race of the specific population.
  @JsonKey(name: 'race')
  final CodeableConcept? race;

  /// [physiologicalCondition] /// The existing physiological conditions of the specific population to which
  /// this applies.
  @JsonKey(name: 'physiologicalCondition')
  final CodeableConcept? physiologicalCondition;
  factory Population.fromJson(Map<String, dynamic> json) =>
      _$PopulationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PopulationToJson(this);

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

  factory Population.fromYaml(dynamic yaml) => yaml is String
      ? Population.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Population.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Population cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Population.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Population.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
