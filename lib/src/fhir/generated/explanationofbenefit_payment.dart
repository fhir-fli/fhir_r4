import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ExplanationOfBenefitPayment {
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
  const ExplanationOfBenefitPayment({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.adjustment,
    this.adjustmentReason,
    this.date,
    this.Date,
    this.amount,
    this.identifier,
  });
}
