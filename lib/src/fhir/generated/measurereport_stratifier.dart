import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MeasureReportStratifier {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<CodeableConcept> code;
  final List<MeasureReportStratum> stratum;
  const MeasureReportStratifier({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.stratum,
  });
}
