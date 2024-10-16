import 'package:fhir_r4/fhir_r4.dart';

/// Unified Code for Units of Measure (UCUM). This value set includes all UCUM codes
enum CommonUCUMCodesForDuration {
  /// Display: milliseconds
  /// Definition:
  ms('ms'),

  /// Display: seconds
  /// Definition:
  s('s'),

  /// Display: minutes
  /// Definition:
  min('min'),

  /// Display: hours
  /// Definition:
  h('h'),

  /// Display: days
  /// Definition:
  d('d'),

  /// Display: weeks
  /// Definition:
  wk('wk'),

  /// Display: months
  /// Definition:
  mo('mo'),

  /// Display: years
  /// Definition:
  a('a'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const CommonUCUMCodesForDuration(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static CommonUCUMCodesForDuration fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommonUCUMCodesForDuration.elementOnly.withElement(element);
    }
    return CommonUCUMCodesForDuration.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  CommonUCUMCodesForDuration withElement(Element? newElement) {
    return CommonUCUMCodesForDuration.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
