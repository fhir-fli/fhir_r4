import 'package:fhir_r4/fhir_r4.dart';

/// A code that indicates how the server supports conditional delete.
enum ConditionalDeleteStatus {
  /// Display: Not Supported
  /// Definition: No support for conditional deletes.
  not_supported('not-supported'),

  /// Display: Single Deletes Supported
  /// Definition: Conditional deletes are supported, but only single resources at a time.
  single('single'),

  /// Display: Multiple Deletes Supported
  /// Definition: Conditional deletes are supported, and multiple resources can be deleted in a single interaction.
  multiple('multiple'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ConditionalDeleteStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ConditionalDeleteStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionalDeleteStatus.elementOnly.withElement(element);
    }
    return ConditionalDeleteStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ConditionalDeleteStatus withElement(Element? newElement) {
    return ConditionalDeleteStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
