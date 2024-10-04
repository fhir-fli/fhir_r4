import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ClinicalImpressionFinding {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept itemCodeableConcept;
  final Reference itemReference;
  final String basis;
  final PrimitiveElement Basis;
  const ClinicalImpressionFinding({
    this.id,
    this.extension,
    this.modifierExtension,
    this.itemCodeableConcept,
    this.itemReference,
    this.basis,
    this.Basis,
  });
}
