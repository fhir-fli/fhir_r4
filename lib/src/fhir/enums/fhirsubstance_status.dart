import 'package:fhir_r4/fhir_r4.dart';

/// A code to indicate if the substance is actively used.
enum FHIRSubstanceStatus {
  /// Display: Active
  /// Definition: The substance is considered for use or reference.
  active('active'),

  /// Display: Inactive
  /// Definition: The substance is considered for reference, but not for use.
  inactive('inactive'),

  /// Display: Entered in Error
  /// Definition: The substance was entered in error.
  entered_in_error('entered-in-error'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const FHIRSubstanceStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static FHIRSubstanceStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRSubstanceStatus.elementOnly.withElement(element);
    }
    return FHIRSubstanceStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  FHIRSubstanceStatus withElement(Element? newElement) {
    return FHIRSubstanceStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
