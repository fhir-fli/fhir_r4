import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Population extends BackboneType {
  final Range? ageRange;
  final CodeableConcept? ageCodeableConcept;
  final CodeableConcept? gender;
  final CodeableConcept? race;
  final CodeableConcept? physiologicalCondition;

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

  @override
  Population clone() => throw UnimplementedError();
}
