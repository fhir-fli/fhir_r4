import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MeasureReportPopulation1 {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept code;
  final FhirInteger count;
  final PrimitiveElement Count;
  final Reference subjectResults;
  const MeasureReportPopulation1({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.count,
    this.Count,
    this.subjectResults,
  });
}
