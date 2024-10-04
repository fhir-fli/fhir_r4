import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Money {
  final String id;
  final List<Extension> extension;
  final FhirDecimal value;
  final PrimitiveElement Value;
  final FhirCode currency;
  final PrimitiveElement Currency;
  const Money({
    this.id,
    this.extension,
    this.value,
    this.Value,
    this.currency,
    this.Currency,
  });
}
