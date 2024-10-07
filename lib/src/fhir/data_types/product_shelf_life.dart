import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class ProductShelfLife extends BackboneType {
  ProductShelfLife({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.type,
    required this.period,
    this.specialPrecautionsForStorage,
  });

  final Identifier? identifier;
  final CodeableConcept type;
  final Quantity period;
  final List<CodeableConcept>? specialPrecautionsForStorage;
  @override
  ProductShelfLife clone() => throw UnimplementedError();
}
