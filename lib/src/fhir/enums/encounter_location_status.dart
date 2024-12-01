// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The status of the location.
class EncounterLocationStatus {
  // Private constructor for internal use (like enum)
  EncounterLocationStatus._(this.fhirCode, {this.element});

  /// Factory constructor to create [EncounterLocationStatus] from JSON.
  factory EncounterLocationStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EncounterLocationStatus.elementOnly.withElement(element);
    }
    return EncounterLocationStatus._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// EncounterLocationStatus values
  /// planned
  static final EncounterLocationStatus planned = EncounterLocationStatus._(
    'planned',
  );

  /// active
  static final EncounterLocationStatus active = EncounterLocationStatus._(
    'active',
  );

  /// reserved
  static final EncounterLocationStatus reserved = EncounterLocationStatus._(
    'reserved',
  );

  /// completed
  static final EncounterLocationStatus completed = EncounterLocationStatus._(
    'completed',
  );

  /// For instances where an Element is present but not value

  static final EncounterLocationStatus elementOnly =
      EncounterLocationStatus._('');

  /// List of all enum-like values
  static final List<EncounterLocationStatus> values = [
    planned,
    active,
    reserved,
    completed,
  ];

  /// Returns the enum value with an element attached
  EncounterLocationStatus withElement(Element? newElement) {
    return EncounterLocationStatus._(fhirCode, element: newElement);
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
