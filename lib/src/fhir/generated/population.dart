import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Population {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Range ageRange;
  final CodeableConcept ageCodeableConcept;
  final CodeableConcept gender;
  final CodeableConcept race;
  final CodeableConcept physiologicalCondition;
  const Population({
    this.id,
    this.extension,
    this.modifierExtension,
    this.ageRange,
    this.ageCodeableConcept,
    this.gender,
    this.race,
    this.physiologicalCondition,
  });
}
