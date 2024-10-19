// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates whether this flag is active and needs to be displayed to a user, or whether it is no longer needed or was entered in error.
class FlagStatus {
  // Private constructor for internal use (like enum)
  FlagStatus._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// FlagStatus values
  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FlagStatus active = FlagStatus._(
    'active',
  );

  /// inactive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FlagStatus inactive = FlagStatus._(
    'inactive',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FlagStatus entered_in_error = FlagStatus._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final FlagStatus elementOnly = FlagStatus._('');

  /// List of all enum-like values
  static final List<FlagStatus> values = [
    active,
    inactive,
    entered_in_error,
  ];

  /// Returns the enum value with an element attached
  FlagStatus withElement(Element? newElement) {
    return FlagStatus._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [FlagStatus] from JSON.
  static FlagStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FlagStatus.elementOnly.withElement(element);
    }
    return FlagStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'FlagStatus.$fhirCode';
}
