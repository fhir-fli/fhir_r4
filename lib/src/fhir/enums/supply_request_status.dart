// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Status of the supply request.
class SupplyRequestStatus {
  // Private constructor for internal use (like enum)
  SupplyRequestStatus._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SupplyRequestStatus values
  /// draft
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplyRequestStatus draft = SupplyRequestStatus._(
    'draft',
  );

  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplyRequestStatus active = SupplyRequestStatus._(
    'active',
  );

  /// suspended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplyRequestStatus suspended = SupplyRequestStatus._(
    'suspended',
  );

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplyRequestStatus cancelled = SupplyRequestStatus._(
    'cancelled',
  );

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplyRequestStatus completed = SupplyRequestStatus._(
    'completed',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplyRequestStatus entered_in_error = SupplyRequestStatus._(
    'entered-in-error',
  );

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplyRequestStatus unknown = SupplyRequestStatus._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final SupplyRequestStatus elementOnly = SupplyRequestStatus._('');

  /// List of all enum-like values
  static final List<SupplyRequestStatus> values = [
    draft,
    active,
    suspended,
    cancelled,
    completed,
    entered_in_error,
    unknown,
  ];

  /// Returns the enum value with an element attached
  SupplyRequestStatus withElement(Element? newElement) {
    return SupplyRequestStatus._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SupplyRequestStatus] from JSON.
  static SupplyRequestStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplyRequestStatus.elementOnly.withElement(element);
    }
    return SupplyRequestStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SupplyRequestStatus.$fhirCode';
}
