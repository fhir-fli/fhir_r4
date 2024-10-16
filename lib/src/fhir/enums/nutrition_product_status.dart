import 'package:fhir_r4/fhir_r4.dart';

/// Codes identifying the lifecycle stage of a product.
enum NutritionProductStatus {
  /// Display: Active
  /// Definition: The product can be used.
  active('active'),

  /// Display: Inactive
  /// Definition: The product is not expected or allowed to be used.
  inactive('inactive'),

  /// Display: Entered in Error
  /// Definition: This electronic record should never have existed, though it is possible that real-world decisions were based on it. (If real-world activity has occurred, the status should be "cancelled" rather than "entered-in-error".).
  entered_in_error('entered-in-error'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const NutritionProductStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static NutritionProductStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NutritionProductStatus.elementOnly.withElement(element);
    }
    return NutritionProductStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  NutritionProductStatus withElement(Element? newElement) {
    return NutritionProductStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
