import 'package:fhir_r4/fhir_r4.dart';

/// The optical rotation type of a substance.
enum OpticalActivity {
  /// Display: dextrorotary
  /// Definition:
  _('+'),

  /// Display: levorotary
  /// Definition:
  __1('-'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const OpticalActivity(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static OpticalActivity fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OpticalActivity.elementOnly.withElement(element);
    }
    return OpticalActivity.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  OpticalActivity withElement(Element? newElement) {
    return OpticalActivity.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
