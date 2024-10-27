// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The workflow/clinical status of the composition.
class CompositionStatus {
  // Private constructor for internal use (like enum)
  CompositionStatus._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// CompositionStatus values
  /// preliminary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CompositionStatus preliminary = CompositionStatus._(
    'preliminary',
  );

  /// final_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CompositionStatus final_ = CompositionStatus._(
    'final',
  );

  /// amended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CompositionStatus amended = CompositionStatus._(
    'amended',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CompositionStatus entered_in_error = CompositionStatus._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final CompositionStatus elementOnly = CompositionStatus._('');

  /// List of all enum-like values
  static final List<CompositionStatus> values = [
    preliminary,
    final_,
    amended,
    entered_in_error,
  ];

  /// Returns the enum value with an element attached
  CompositionStatus withElement(Element? newElement) {
    return CompositionStatus._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CompositionStatus] from JSON.
  static CompositionStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CompositionStatus.elementOnly.withElement(element);
    }
    return CompositionStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
