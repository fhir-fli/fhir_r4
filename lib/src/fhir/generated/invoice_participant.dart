import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class InvoiceParticipant {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept role;
  final Reference actor;
  const InvoiceParticipant({
    this.id,
    this.extension,
    this.modifierExtension,
    this.role,
    required this.actor,
  });
}
