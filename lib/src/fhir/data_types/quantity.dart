import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class Quantity extends DataType {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  Quantity clone() => throw UnimplementedError();
}
