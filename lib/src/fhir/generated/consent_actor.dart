import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ConsentActor {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept role;
  final Reference reference;
  const ConsentActor({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.role,
    required this.reference,
  });
}
