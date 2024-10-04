import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ClaimResponseAdjudication {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept category;
  final CodeableConcept reason;
  final Money amount;
  final FhirDecimal value;
  final PrimitiveElement Value;
  const ClaimResponseAdjudication({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.category,
    this.reason,
    this.amount,
    this.value,
    this.Value,
  });
}
