// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// A code that indicates how the server supports conditional read.
@collection
class ConditionalReadStatus {
  /// Constructor for internal use (like enum)
  ConditionalReadStatus({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ConditionalReadStatus values
  /// not_supported
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionalReadStatus not_supported = ConditionalReadStatus(
    fhirCode: 'not-supported',
  );

  /// modified_since
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionalReadStatus modified_since = ConditionalReadStatus(
    fhirCode: 'modified-since',
  );

  /// not_match
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionalReadStatus not_match = ConditionalReadStatus(
    fhirCode: 'not-match',
  );

  /// full_support
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionalReadStatus full_support = ConditionalReadStatus(
    fhirCode: 'full-support',
  );

  /// For instances where an Element is present but not value

  static final ConditionalReadStatus elementOnly = ConditionalReadStatus();

  /// List of all enum-like values
  static final List<ConditionalReadStatus> values = [
    not_supported,
    modified_since,
    not_match,
    full_support,
  ];

  /// Returns the enum value with an element attached
  ConditionalReadStatus withElement(Element? newElement) {
    return ConditionalReadStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ConditionalReadStatus] from JSON.
  static ConditionalReadStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionalReadStatus.elementOnly.withElement(element);
    }
    return ConditionalReadStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ConditionalReadStatus.$fhirCode';
}
