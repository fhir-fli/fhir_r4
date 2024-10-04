import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MeasureReportGroup {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept code;
  final List<MeasureReportPopulation> population;
  final Quantity measureScore;
  final List<MeasureReportStratifier> stratifier;
  const MeasureReportGroup({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.population,
    this.measureScore,
    this.stratifier,
  });
}
