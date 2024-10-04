import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicinalProductDefinitionName {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String productName;
  final PrimitiveElement ProductName;
  final CodeableConcept type;
  final List<MedicinalProductDefinitionNamePart> namePart;
  final List<MedicinalProductDefinitionCountryLanguage> countryLanguage;
  const MedicinalProductDefinitionName({
    this.id,
    this.extension,
    this.modifierExtension,
    this.productName,
    this.ProductName,
    this.type,
    this.namePart,
    this.countryLanguage,
  });
}
