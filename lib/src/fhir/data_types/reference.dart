import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Reference extends DataType {
  final FhirString? reference;
  final Element? referenceElement;
  final FhirUri? type;
  final Element? typeElement;
  final Identifier? identifier;
  final FhirString? display;
  final Element? displayElement;

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

}



