import 'package:fhir_r4/fhir_r4.dart';

/// Unified Code for Units of Measure (UCUM). This value set includes common UCUM codes for units of distance
enum CommonUCUMCodesForDistance {
  /// Display: nanometers
  /// Definition:
  nm('nm'),

  /// Display: micrometers
  /// Definition:
  um('um'),

  /// Display: millimeters
  /// Definition:
  mm('mm'),

  /// Display: meters
  /// Definition:
  m('m'),

  /// Display: kilometers
  /// Definition:
  km('km'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const CommonUCUMCodesForDistance(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static CommonUCUMCodesForDistance fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommonUCUMCodesForDistance.elementOnly.withElement(element);
    }
    return CommonUCUMCodesForDistance.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  CommonUCUMCodesForDistance withElement(Element? newElement) {
    return CommonUCUMCodesForDistance.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
