import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicinalProductDefinitionContact {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final Reference contact;
  const MedicinalProductDefinitionContact({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    required this.contact,
  });
}
