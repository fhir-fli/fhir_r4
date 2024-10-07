import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class ProductShelfLife extends BackboneType {
  final Identifier? identifier;
  final CodeableConcept type;
  final Quantity period;
  final List<CodeableConcept>? specialPrecautionsForStorage;

  ProductShelfLife({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.type,
    required this.period,
    this.specialPrecautionsForStorage,
  });

@override
ProductShelfLife clone() => throw UnimplementedError();
}

