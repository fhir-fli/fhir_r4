import 'package:fhir_r4/fhir_r4.dart';

/// A code specifying the types of information being requested.
enum EligibilityResponsePurpose {
  /// Display: Coverage auth-requirements
  /// Definition: The prior authorization requirements for the listed, or discovered if specified, converages for the categories of service and/or specifed biling codes are requested.
  auth_requirements('auth-requirements'),

  /// Display: Coverage benefits
  /// Definition: The plan benefits and optionally benefits consumed for the listed, or discovered if specified, converages are requested.
  benefits('benefits'),

  /// Display: Coverage Discovery
  /// Definition: The insurer is requested to report on any coverages which they are aware of in addition to any specifed.
  discovery('discovery'),

  /// Display: Coverage Validation
  /// Definition: A check that the specified coverages are in-force is requested.
  validation('validation'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const EligibilityResponsePurpose(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static EligibilityResponsePurpose fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EligibilityResponsePurpose.elementOnly.withElement(element);
    }
    return EligibilityResponsePurpose.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  EligibilityResponsePurpose withElement(Element? newElement) {
    return EligibilityResponsePurpose.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
