import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Money] /// An amount of economic utility in some recognized currency.
class Money extends DataType {
  Money({
    super.id,
    super.extension_,
    this.value,
    this.valueElement,
    this.currency,
    this.currencyElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [value] /// Numerical value (with implicit precision).
  final FhirDecimal? value;
  final Element? valueElement;

  /// [currency] /// ISO 4217 Currency Code.
  final FhirCode? currency;
  final Element? currencyElement;
  @override
  Money clone() => throw UnimplementedError();
  Money copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirDecimal? value,
    Element? valueElement,
    FhirCode? currency,
    Element? currencyElement,
  }) {
    return Money(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
      currency: currency ?? this.currency,
      currencyElement: currencyElement ?? this.currencyElement,
    );
  }
}
