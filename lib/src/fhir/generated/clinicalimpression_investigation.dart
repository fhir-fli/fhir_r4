import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ClinicalImpressionInvestigation {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept code;
  final List<Reference> item;
  const ClinicalImpressionInvestigation({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.code,
    this.item,
  });
}
