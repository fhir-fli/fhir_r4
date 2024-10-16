import 'package:fhir_r4/fhir_r4.dart';

/// Whether an operation is a normal operation or a query.
enum OperationKind {
  /// Display: Operation
  /// Definition: This operation is invoked as an operation.
  operation('operation'),

  /// Display: Query
  /// Definition: This operation is a named query, invoked using the search mechanism.
  query('query'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const OperationKind(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static OperationKind fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OperationKind.elementOnly.withElement(element);
    }
    return OperationKind.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  OperationKind withElement(Element? newElement) {
    return OperationKind.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
