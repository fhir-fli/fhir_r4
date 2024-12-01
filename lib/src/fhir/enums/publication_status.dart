// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The lifecycle status of an artifact.
class PublicationStatus {
  // Private constructor for internal use (like enum)
  PublicationStatus._(this.fhirCode, {this.element});

  /// Factory constructor to create [PublicationStatus] from JSON.
  factory PublicationStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PublicationStatus.elementOnly.withElement(element);
    }
    return PublicationStatus._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// PublicationStatus values
  /// draft
  static final PublicationStatus draft = PublicationStatus._(
    'draft',
  );

  /// active
  static final PublicationStatus active = PublicationStatus._(
    'active',
  );

  /// retired
  static final PublicationStatus retired = PublicationStatus._(
    'retired',
  );

  /// unknown
  static final PublicationStatus unknown = PublicationStatus._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final PublicationStatus elementOnly = PublicationStatus._('');

  /// List of all enum-like values
  static final List<PublicationStatus> values = [
    draft,
    active,
    retired,
    unknown,
  ];

  /// Returns the enum value with an element attached
  PublicationStatus withElement(Element? newElement) {
    return PublicationStatus._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
