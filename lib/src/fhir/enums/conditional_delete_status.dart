// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A code that indicates how the server supports conditional delete.
class ConditionalDeleteStatus {
  // Private constructor for internal use (like enum)
  ConditionalDeleteStatus._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ConditionalDeleteStatus values
  /// not_supported
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionalDeleteStatus not_supported =
      ConditionalDeleteStatus._(
    'not-supported',
  );

  /// single
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionalDeleteStatus single = ConditionalDeleteStatus._(
    'single',
  );

  /// multiple
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionalDeleteStatus multiple = ConditionalDeleteStatus._(
    'multiple',
  );

  /// For instances where an Element is present but not value

  static final ConditionalDeleteStatus elementOnly =
      ConditionalDeleteStatus._('');

  /// List of all enum-like values
  static final List<ConditionalDeleteStatus> values = [
    not_supported,
    single,
    multiple,
  ];

  /// Returns the enum value with an element attached
  ConditionalDeleteStatus withElement(Element? newElement) {
    return ConditionalDeleteStatus._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ConditionalDeleteStatus] from JSON.
  static ConditionalDeleteStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionalDeleteStatus.elementOnly.withElement(element);
    }
    return ConditionalDeleteStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ConditionalDeleteStatus.$fhirCode';
}
