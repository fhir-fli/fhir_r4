import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ContractSubject {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<Reference> reference;
  final CodeableConcept role;
  const ContractSubject({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.reference,
    this.role,
  });
}
