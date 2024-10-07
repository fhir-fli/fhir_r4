import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
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
  final FhirDecimal? value;
  final Element? valueElement;
  final FhirCode? currency;
  final Element? currencyElement;
  @override
  Money clone() => throw UnimplementedError();
}
