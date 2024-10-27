// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Claim Care Team Role codes.
class ClaimCareTeamRoleCodes {
  // Private constructor for internal use (like enum)
  ClaimCareTeamRoleCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ClaimCareTeamRoleCodes values
  /// primary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClaimCareTeamRoleCodes primary = ClaimCareTeamRoleCodes._(
    'primary',
  );

  /// assist
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClaimCareTeamRoleCodes assist = ClaimCareTeamRoleCodes._(
    'assist',
  );

  /// supervisor
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClaimCareTeamRoleCodes supervisor = ClaimCareTeamRoleCodes._(
    'supervisor',
  );

  /// other
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClaimCareTeamRoleCodes other = ClaimCareTeamRoleCodes._(
    'other',
  );

  /// For instances where an Element is present but not value

  static final ClaimCareTeamRoleCodes elementOnly =
      ClaimCareTeamRoleCodes._('');

  /// List of all enum-like values
  static final List<ClaimCareTeamRoleCodes> values = [
    primary,
    assist,
    supervisor,
    other,
  ];

  /// Returns the enum value with an element attached
  ClaimCareTeamRoleCodes withElement(Element? newElement) {
    return ClaimCareTeamRoleCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ClaimCareTeamRoleCodes] from JSON.
  static ClaimCareTeamRoleCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClaimCareTeamRoleCodes.elementOnly.withElement(element);
    }
    return ClaimCareTeamRoleCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
