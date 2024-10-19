// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates the state of the consent.
class ConsentState {
  // Private constructor for internal use (like enum)
  ConsentState._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ConsentState values
  /// draft
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentState draft = ConsentState._(
    'draft',
  );

  /// proposed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentState proposed = ConsentState._(
    'proposed',
  );

  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentState active = ConsentState._(
    'active',
  );

  /// rejected
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentState rejected = ConsentState._(
    'rejected',
  );

  /// inactive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentState inactive = ConsentState._(
    'inactive',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentState entered_in_error = ConsentState._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final ConsentState elementOnly = ConsentState._('');

  /// List of all enum-like values
  static final List<ConsentState> values = [
    draft,
    proposed,
    active,
    rejected,
    inactive,
    entered_in_error,
  ];

  /// Returns the enum value with an element attached
  ConsentState withElement(Element? newElement) {
    return ConsentState._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ConsentState] from JSON.
  static ConsentState fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentState.elementOnly.withElement(element);
    }
    return ConsentState.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ConsentState.$fhirCode';
}
