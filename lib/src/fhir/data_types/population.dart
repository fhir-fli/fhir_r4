import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [Population] /// A populatioof people with some set of grouping criteria.
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
  int dbId = 0;

  /// [ageRange] /// The age of the specific population.
  final Range? ageRange;

  /// [ageCodeableConcept] /// The age of the specific population.
  final CodeableConcept? ageCodeableConcept;

  /// [gender] /// The gender of the specific population.
  final CodeableConcept? gender;

  /// [race] /// Race of the specific population.
  final CodeableConcept? race;

  /// [physiologicalCondition] /// The existing physiological conditions of the specific population to which
  /// this applies.
  final CodeableConcept? physiologicalCondition;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
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

  factory Population.fromJson(Map<String, dynamic> json) {
    return Population(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      ageRange: json['ageRange'] != null
          ? Range.fromJson(json['ageRange'] as Map<String, dynamic>)
          : null,
      ageCodeableConcept: json['ageCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['ageCodeableConcept'] as Map<String, dynamic>)
          : null,
      gender: json['gender'] != null
          ? CodeableConcept.fromJson(json['gender'] as Map<String, dynamic>)
          : null,
      race: json['race'] != null
          ? CodeableConcept.fromJson(json['race'] as Map<String, dynamic>)
          : null,
      physiologicalCondition: json['physiologicalCondition'] != null
          ? CodeableConcept.fromJson(
              json['physiologicalCondition'] as Map<String, dynamic>)
          : null,
    );
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
