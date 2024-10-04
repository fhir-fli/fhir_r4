import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CitationClassification {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final List<CodeableConcept> classifier;
  const CitationClassification({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.classifier,
  });
}
