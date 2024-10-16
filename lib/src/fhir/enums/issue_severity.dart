import 'package:fhir_r4/fhir_r4.dart';

/// How the issue affects the success of the action.
enum IssueSeverity {
  /// Display: Fatal
  /// Definition: The issue caused the action to fail and no further checking could be performed.
  fatal('fatal'),

  /// Display: Error
  /// Definition: The issue is sufficiently important to cause the action to fail.
  error('error'),

  /// Display: Warning
  /// Definition: The issue is not important enough to cause the action to fail but may cause it to be performed suboptimally or in a way that is not as desired.
  warning('warning'),

  /// Display: Information
  /// Definition: The issue has no relation to the degree of success of the action.
  information('information'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const IssueSeverity(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static IssueSeverity fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IssueSeverity.elementOnly.withElement(element);
    }
    return IssueSeverity.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  IssueSeverity withElement(Element? newElement) {
    return IssueSeverity.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
