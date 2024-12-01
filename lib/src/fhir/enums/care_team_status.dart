// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates the status of the care team.
class CareTeamStatus {
  // Private constructor for internal use (like enum)
  CareTeamStatus._(this.fhirCode, {this.element});

  /// Factory constructor to create [CareTeamStatus] from JSON.
  factory CareTeamStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CareTeamStatus.elementOnly.withElement(element);
    }
    return CareTeamStatus._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// CareTeamStatus values
  /// proposed
  static final CareTeamStatus proposed = CareTeamStatus._(
    'proposed',
  );

  /// active
  static final CareTeamStatus active = CareTeamStatus._(
    'active',
  );

  /// suspended
  static final CareTeamStatus suspended = CareTeamStatus._(
    'suspended',
  );

  /// inactive
  static final CareTeamStatus inactive = CareTeamStatus._(
    'inactive',
  );

  /// entered_in_error
  static final CareTeamStatus entered_in_error = CareTeamStatus._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final CareTeamStatus elementOnly = CareTeamStatus._('');

  /// List of all enum-like values
  static final List<CareTeamStatus> values = [
    proposed,
    active,
    suspended,
    inactive,
    entered_in_error,
  ];

  /// Returns the enum value with an element attached
  CareTeamStatus withElement(Element? newElement) {
    return CareTeamStatus._(fhirCode, element: newElement);
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
