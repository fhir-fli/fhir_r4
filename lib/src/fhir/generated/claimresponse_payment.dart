import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ClaimResponsePayment {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final Money adjustment;
  final CodeableConcept adjustmentReason;
  final FhirDate date;
  final PrimitiveElement Date;
  final Money amount;
  final Identifier identifier;
  const ClaimResponsePayment({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.type,
    this.adjustment,
    this.adjustmentReason,
    this.date,
    this.Date,
    required this.amount,
    this.identifier,
  });
}
