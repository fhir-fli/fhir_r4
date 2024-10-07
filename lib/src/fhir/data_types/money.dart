import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Money extends DataType {
  final FhirDecimal? value;
  final Element? valueElement;
  final FhirCode? currency;
  final Element? currencyElement;

  Money({
    super.id,
    super.extension_,
    this.value,
this.valueElement,
    this.currency,
this.currencyElement,
  });

@override
Money clone() => throw UnimplementedError();
}

