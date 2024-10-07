import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Quantity extends DataType {
  final FhirDecimal? value;
  final Element? valueElement;
  final FhirCode? comparator;
  final Element? comparatorElement;
  final FhirString? unit;
  final Element? unitElement;
  final FhirUri? system;
  final Element? systemElement;
  final FhirCode? code;
  final Element? codeElement;

  Quantity({
    super.id,
    super.extension_,
    this.value,
    this.valueElement,
    this.comparator,
    this.comparatorElement,
    this.unit,
    this.unitElement,
    this.system,
    this.systemElement,
    this.code,
    this.codeElement,
  });

  @override
  Quantity clone() => throw UnimplementedError();
}
