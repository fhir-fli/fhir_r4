import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CoverageCostToBeneficiary {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final Quantity valueQuantity;
  final Money valueMoney;
  final List<CoverageException> exception;
  const CoverageCostToBeneficiary({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.valueQuantity,
    this.valueMoney,
    this.exception,
  });
}
