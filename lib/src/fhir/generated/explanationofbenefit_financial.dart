import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ExplanationOfBenefitFinancial {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final double allowedUnsignedInt;
  final PrimitiveElement AllowedUnsignedInt;
  final String allowedString;
  final PrimitiveElement AllowedString;
  final Money allowedMoney;
  final double usedUnsignedInt;
  final PrimitiveElement UsedUnsignedInt;
  final Money usedMoney;
  const ExplanationOfBenefitFinancial({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.type,
    this.allowedUnsignedInt,
    this.AllowedUnsignedInt,
    this.allowedString,
    this.AllowedString,
    this.allowedMoney,
    this.usedUnsignedInt,
    this.UsedUnsignedInt,
    this.usedMoney,
  });
}
