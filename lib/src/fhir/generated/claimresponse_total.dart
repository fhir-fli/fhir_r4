import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ClaimResponseTotal {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept category;
  final Money amount;
  const ClaimResponseTotal({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.category,
    required this.amount,
  });
}
