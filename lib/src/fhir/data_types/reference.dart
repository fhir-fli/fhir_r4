import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class Reference extends DataType {
  Reference({
    super.id,
    super.extension_,
    this.reference,
    this.referenceElement,
    this.type,
    this.typeElement,
    this.identifier,
    this.display,
    this.displayElement,
  });

  final FhirString? reference;
  final Element? referenceElement;
  final FhirUri? type;
  final Element? typeElement;
  final Identifier? identifier;
  final FhirString? display;
  final Element? displayElement;
  @override
  Reference clone() => throw UnimplementedError();
}
