import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MeasureSupplementalData {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept code;
  final List<CodeableConcept> usage;
  final String description;
  final PrimitiveElement Description;
  final FhirExpression criteria;
  const MeasureSupplementalData({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.usage,
    this.description,
    this.Description,
    required this.criteria,
  });
}
