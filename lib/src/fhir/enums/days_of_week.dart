import 'package:fhir_r4/fhir_r4.dart';

/// The days of the week.
enum DaysOfWeek {
  /// Display: Monday
  /// Definition: Monday.
  mon('mon'),

  /// Display: Tuesday
  /// Definition: Tuesday.
  tue('tue'),

  /// Display: Wednesday
  /// Definition: Wednesday.
  wed('wed'),

  /// Display: Thursday
  /// Definition: Thursday.
  thu('thu'),

  /// Display: Friday
  /// Definition: Friday.
  fri('fri'),

  /// Display: Saturday
  /// Definition: Saturday.
  sat('sat'),

  /// Display: Sunday
  /// Definition: Sunday.
  sun('sun'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const DaysOfWeek(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static DaysOfWeek fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DaysOfWeek.elementOnly.withElement(element);
    }
    return DaysOfWeek.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  DaysOfWeek withElement(Element? newElement) {
    return DaysOfWeek.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
