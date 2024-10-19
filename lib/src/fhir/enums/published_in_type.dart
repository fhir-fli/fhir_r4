// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of publication such as book, database, or journal.
class PublishedInType {
  // Private constructor for internal use (like enum)
  PublishedInType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// PublishedInType values
  /// D020492
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PublishedInType D020492 = PublishedInType._(
    'D020492',
  );

  /// D019991
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PublishedInType D019991 = PublishedInType._(
    'D019991',
  );

  /// D001877
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PublishedInType D001877 = PublishedInType._(
    'D001877',
  );

  /// D064886
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PublishedInType D064886 = PublishedInType._(
    'D064886',
  );

  /// For instances where an Element is present but not value

  static final PublishedInType elementOnly = PublishedInType._('');

  /// List of all enum-like values
  static final List<PublishedInType> values = [
    D020492,
    D019991,
    D001877,
    D064886,
  ];

  /// Returns the enum value with an element attached
  PublishedInType withElement(Element? newElement) {
    return PublishedInType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [PublishedInType] from JSON.
  static PublishedInType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PublishedInType.elementOnly.withElement(element);
    }
    return PublishedInType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'PublishedInType.$fhirCode';
}
