import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicinalProductDefinitionCountryLanguage {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept country;
  final CodeableConcept jurisdiction;
  final CodeableConcept language;
  const MedicinalProductDefinitionCountryLanguage({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.country,
    this.jurisdiction,
    required this.language,
  });
}
