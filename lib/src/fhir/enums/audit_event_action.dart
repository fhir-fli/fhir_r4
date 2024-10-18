// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const AuditEventAction(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [AuditEventAction] instances.
  static AuditEventAction fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventAction.elementOnly.withElement(
        element,
      );
    }
    return AuditEventAction.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  AuditEventAction withElement(Element? newElement) {
    return AuditEventAction.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
