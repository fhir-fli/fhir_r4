// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The status of a resource narrative.
class NarrativeStatus {
  // Private constructor for internal use (like enum)
  NarrativeStatus._(this.fhirCode, {this.element});

  /// Factory constructor to create [NarrativeStatus] from JSON.
  factory NarrativeStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NarrativeStatus.elementOnly.withElement(element);
    }
    return NarrativeStatus._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// NarrativeStatus values
  /// generated
  static final NarrativeStatus generated = NarrativeStatus._(
    'generated',
  );

  /// extensions
  static final NarrativeStatus extensions = NarrativeStatus._(
    'extensions',
  );

  /// additional
  static final NarrativeStatus additional = NarrativeStatus._(
    'additional',
  );

  /// empty
  static final NarrativeStatus empty = NarrativeStatus._(
    'empty',
  );

  /// For instances where an Element is present but not value

  static final NarrativeStatus elementOnly = NarrativeStatus._('');

  /// List of all enum-like values
  static final List<NarrativeStatus> values = [
    generated,
    extensions,
    additional,
    empty,
  ];

  /// Returns the enum value with an element attached
  NarrativeStatus withElement(Element? newElement) {
    return NarrativeStatus._(fhirCode, element: newElement);
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
