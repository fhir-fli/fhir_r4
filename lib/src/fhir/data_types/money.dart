import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class Money extends DataType {
  Money({
    super.id,
    super.extension_,
    this.value,
    this.valueElement,
    this.currency,
    this.currencyElement,
  });

  final FhirDecimal? value;
  final Element? valueElement;
  final FhirCode? currency;
  final Element? currencyElement;
  @override
  Money clone() => throw UnimplementedError();
}
