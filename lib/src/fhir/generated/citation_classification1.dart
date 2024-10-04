import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CitationClassification1 {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final List<CodeableConcept> classifier;
  final Citation_WhoClassified whoClassified;
  const CitationClassification1({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.classifier,
    this.whoClassified,
  });
}
