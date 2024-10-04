import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MeasureReportStratum {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept value;
  final List<MeasureReportComponent> component;
  final List<MeasureReportPopulation1> population;
  final Quantity measureScore;
  const MeasureReportStratum({
    this.id,
    this.extension,
    this.modifierExtension,
    this.value,
    this.component,
    this.population,
    this.measureScore,
  });
}
