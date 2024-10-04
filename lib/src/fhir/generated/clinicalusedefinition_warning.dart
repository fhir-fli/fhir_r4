import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ClinicalUseDefinitionWarning {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final CodeableConcept code;
  const ClinicalUseDefinitionWarning({
    this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.Description,
    this.code,
  });
}
