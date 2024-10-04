import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MeasureReportComponent {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept code;
  final CodeableConcept value;
  const MeasureReportComponent({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.code,
    required this.value,
  });
}
