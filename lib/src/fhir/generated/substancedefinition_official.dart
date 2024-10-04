import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class SubstanceDefinitionOfficial {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept authority;
  final CodeableConcept status;
  final FhirDateTime date;
  final PrimitiveElement Date;
  const SubstanceDefinitionOfficial({
    this.id,
    this.extension,
    this.modifierExtension,
    this.authority,
    this.status,
    this.date,
    this.Date,
  });
}
