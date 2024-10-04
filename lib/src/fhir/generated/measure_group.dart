import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MeasureGroup {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept code;
  final String description;
  final PrimitiveElement Description;
  final List<MeasurePopulation> population;
  final List<MeasureStratifier> stratifier;
  const MeasureGroup({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.description,
    this.Description,
    this.population,
    this.stratifier,
  });
}
