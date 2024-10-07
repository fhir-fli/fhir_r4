import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Quantity] /// A measured amount (or an amount that can potentially be measured). Note
/// that measured amounts include amounts that are not precisely quantified,
/// including amounts involving arbitrary units and floating currencies.
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

  /// [value] /// The value of the measured amount. The value includes an implicit precision
  /// in the presentation of the value.
  final FhirDecimal? value;
  final Element? valueElement;

  /// [comparator] /// How the value should be understood and represented - whether the actual
  /// value is greater or less than the stated value due to measurement issues;
  /// e.g. if the comparator is "<" , then the real value is < stated value.
  final FhirCode? comparator;
  final Element? comparatorElement;

  /// [unit] /// A human-readable form of the unit.
  final FhirString? unit;
  final Element? unitElement;

  /// [system] /// The identification of the system that provides the coded form of the unit.
  final FhirUri? system;
  final Element? systemElement;

  /// [code] /// A computer processable form of the unit in some unit representation system.
  final FhirCode? code;
  final Element? codeElement;
  @override
  Quantity clone() => throw UnimplementedError();
  Quantity copy({
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
    return Quantity(
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
