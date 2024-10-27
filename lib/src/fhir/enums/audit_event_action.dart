// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indicator for type of action performed during the event that generated the event.
class AuditEventAction {
  // Private constructor for internal use (like enum)
  AuditEventAction._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AuditEventAction values
  /// C
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventAction C = AuditEventAction._(
    'C',
  );

  /// R
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventAction R = AuditEventAction._(
    'R',
  );

  /// U
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventAction U = AuditEventAction._(
    'U',
  );

  /// D
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventAction D = AuditEventAction._(
    'D',
  );

  /// E
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventAction E = AuditEventAction._(
    'E',
  );

  /// For instances where an Element is present but not value

  static final AuditEventAction elementOnly = AuditEventAction._('');

  /// List of all enum-like values
  static final List<AuditEventAction> values = [
    C,
    R,
    U,
    D,
    E,
  ];

  /// Returns the enum value with an element attached
  AuditEventAction withElement(Element? newElement) {
    return AuditEventAction._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AuditEventAction] from JSON.
  static AuditEventAction fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventAction.elementOnly.withElement(element);
    }
    return AuditEventAction.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
