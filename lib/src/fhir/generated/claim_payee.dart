import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ClaimPayee {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final Reference party;
  const ClaimPayee({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.type,
    this.party,
  });
}
