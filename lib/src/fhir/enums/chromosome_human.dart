import 'package:fhir_r4/fhir_r4.dart';

/// Chromosome number for human.
enum ChromosomeHuman {
  /// Display: chromosome 1
  /// Definition: chromosome 1.
  value1('1'),

  /// Display: chromosome 2
  /// Definition: chromosome 2.
  value2('2'),

  /// Display: chromosome 3
  /// Definition: chromosome 3.
  value3('3'),

  /// Display: chromosome 4
  /// Definition: chromosome 4.
  value4('4'),

  /// Display: chromosome 5
  /// Definition: chromosome 5.
  value5('5'),

  /// Display: chromosome 6
  /// Definition: chromosome 6.
  value6('6'),

  /// Display: chromosome 7
  /// Definition: chromosome 7.
  value7('7'),

  /// Display: chromosome 8
  /// Definition: chromosome 8.
  value8('8'),

  /// Display: chromosome 9
  /// Definition: chromosome 9.
  value9('9'),

  /// Display: chromosome 10
  /// Definition: chromosome 10.
  value10('10'),

  /// Display: chromosome 11
  /// Definition: chromosome 11.
  value11('11'),

  /// Display: chromosome 12
  /// Definition: chromosome 12.
  value12('12'),

  /// Display: chromosome 13
  /// Definition: chromosome 13.
  value13('13'),

  /// Display: chromosome 14
  /// Definition: chromosome 14.
  value14('14'),

  /// Display: chromosome 15
  /// Definition: chromosome 15.
  value15('15'),

  /// Display: chromosome 16
  /// Definition: chromosome 16.
  value16('16'),

  /// Display: chromosome 17
  /// Definition: chromosome 17.
  value17('17'),

  /// Display: chromosome 18
  /// Definition: chromosome 18.
  value18('18'),

  /// Display: chromosome 19
  /// Definition: chromosome 19.
  value19('19'),

  /// Display: chromosome 20
  /// Definition: chromosome 20.
  value20('20'),

  /// Display: chromosome 21
  /// Definition: chromosome 21.
  value21('21'),

  /// Display: chromosome 22
  /// Definition: chromosome 22.
  value22('22'),

  /// Display: chromosome X
  /// Definition: chromosome X.
  X('X'),

  /// Display: chromosome Y
  /// Definition: chromosome Y.
  Y('Y'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ChromosomeHuman(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ChromosomeHuman fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ChromosomeHuman.elementOnly.withElement(element);
    }
    return ChromosomeHuman.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ChromosomeHuman withElement(Element? newElement) {
    return ChromosomeHuman.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
