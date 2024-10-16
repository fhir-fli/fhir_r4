import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Exception codes.
enum ExceptionCodes {
  /// Display: Student (Fulltime)
  /// Definition: Fulltime Student
  student('student'),

  /// Display: Disabled
  /// Definition: Disabled
  disabled('disabled'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ExceptionCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ExceptionCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExceptionCodes.elementOnly.withElement(element);
    }
    return ExceptionCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ExceptionCodes withElement(Element? newElement) {
    return ExceptionCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
