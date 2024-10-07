import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
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
  Population clone() => throw UnimplementedError();
  Population copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Range? ageRange,
    CodeableConcept? ageCodeableConcept,
    CodeableConcept? gender,
    CodeableConcept? race,
    CodeableConcept? physiologicalCondition,
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
    );
  }
}
