import 'package:fhir_r4/fhir_r4.dart';

/// Indicator for type of action performed during the event that generated the event.
enum AuditEventAction {
  /// Display: Create
  /// Definition: Create a new database object, such as placing an order.
  C('C'),

  /// Display: Read/View/Print
  /// Definition: Display or print data, such as a doctor census.
  R('R'),

  /// Display: Update
  /// Definition: Update data, such as revise patient information.
  U('U'),

  /// Display: Delete
  /// Definition: Delete items, such as a doctor master file record.
  D('D'),

  /// Display: Execute
  /// Definition: Perform a system or application function such as log-on, program execution or use of an object's method, or perform a query/search operation.
  E('E'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const AuditEventAction(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static AuditEventAction fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventAction.elementOnly.withElement(element);
    }
    return AuditEventAction.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  AuditEventAction withElement(Element? newElement) {
    return AuditEventAction.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
