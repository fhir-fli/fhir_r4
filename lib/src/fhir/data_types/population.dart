import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
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
  final Range? ageRange;
  final CodeableConcept? ageCodeableConcept;
  final CodeableConcept? gender;
  final CodeableConcept? race;
  final CodeableConcept? physiologicalCondition;
  @override
  Population clone() => throw UnimplementedError();
}
