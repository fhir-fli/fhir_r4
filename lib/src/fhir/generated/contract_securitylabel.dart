import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ContractSecurityLabel {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<FhirUnsignedInt> number;
  final List<PrimitiveElement> Number;
  final Coding classification;
  final List<Coding> category;
  final List<Coding> control;
  const ContractSecurityLabel({
    this.id,
    this.extension,
    this.modifierExtension,
    this.number,
    this.Number,
    required this.classification,
    this.category,
    this.control,
  });
}
