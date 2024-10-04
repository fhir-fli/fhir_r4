import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Money {
  final String id;
  final List<FhirExtension> extension_;
  final FhirDecimal value;
  final PrimitiveElement valueElement;
  final FhirCode currency;
  final PrimitiveElement currencyElement;
  const Money({
    required this.id,
    required this.extension_,
    required this.value,
    required this.valueElement,
    required this.currency,
    required this.currencyElement,
  });
}


