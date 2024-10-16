import 'package:fhir_r4/fhir_r4.dart';

/// The relationship between two substance types.
enum SubstanceAmountType {
  /// Display: Average
  /// Definition:
  Average('Average'),

  /// Display: Approximately
  /// Definition:
  Approximately('Approximately'),

  /// Display: Less Than
  /// Definition:
  LessThan('LessThan'),

  /// Display: More Than
  /// Definition:
  MoreThan('MoreThan'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SubstanceAmountType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SubstanceAmountType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceAmountType.elementOnly.withElement(element);
    }
    return SubstanceAmountType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SubstanceAmountType withElement(Element? newElement) {
    return SubstanceAmountType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
