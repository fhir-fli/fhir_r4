import 'package:fhir_r4/fhir_r4.dart';

/// A unit of time (units from UCUM).
enum UnitsOfTime {
  /// Display: second
  /// Definition:
  s('s'),

  /// Display: minute
  /// Definition:
  min('min'),

  /// Display: hour
  /// Definition:
  h('h'),

  /// Display: day
  /// Definition:
  d('d'),

  /// Display: week
  /// Definition:
  wk('wk'),

  /// Display: month
  /// Definition:
  mo('mo'),

  /// Display: year
  /// Definition:
  a('a'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const UnitsOfTime(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static UnitsOfTime fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UnitsOfTime.elementOnly.withElement(element);
    }
    return UnitsOfTime.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  UnitsOfTime withElement(Element? newElement) {
    return UnitsOfTime.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
