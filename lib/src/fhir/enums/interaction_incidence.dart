// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A categorisation for incidence of occurence of an interaction.
class InteractionIncidence {
  // Private constructor for internal use (like enum)
  InteractionIncidence._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// InteractionIncidence values
  /// Theoretical
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionIncidence Theoretical = InteractionIncidence._(
    'Theoretical',
  );

  /// Observed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionIncidence Observed = InteractionIncidence._(
    'Observed',
  );

  /// For instances where an Element is present but not value

  static final InteractionIncidence elementOnly = InteractionIncidence._('');

  /// List of all enum-like values
  static final List<InteractionIncidence> values = [
    Theoretical,
    Observed,
  ];

  /// Returns the enum value with an element attached
  InteractionIncidence withElement(Element? newElement) {
    return InteractionIncidence._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [InteractionIncidence] from JSON.
  static InteractionIncidence fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InteractionIncidence.elementOnly.withElement(element);
    }
    return InteractionIncidence._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
