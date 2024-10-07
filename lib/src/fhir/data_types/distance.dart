import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Distance] /// A length - a value with a unit that is a physical distance.
class Distance extends Quantity {
  Distance({
    super.id,
    super.extension_,
    super.value,
    super.valueElement,
    super.comparator,
    super.comparatorElement,
    super.unit,
    super.unitElement,
    super.system,
    super.systemElement,
    super.code,
    super.codeElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  @override
  Distance clone() => throw UnimplementedError();
  Distance copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirDecimal? value,
    Element? valueElement,
    FhirCode? comparator,
    Element? comparatorElement,
    FhirString? unit,
    Element? unitElement,
    FhirUri? system,
    Element? systemElement,
    FhirCode? code,
    Element? codeElement,
  }) {
    return Distance(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
      comparator: comparator ?? this.comparator,
      comparatorElement: comparatorElement ?? this.comparatorElement,
      unit: unit ?? this.unit,
      unitElement: unitElement ?? this.unitElement,
      system: system ?? this.system,
      systemElement: systemElement ?? this.systemElement,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
    );
  }
}
