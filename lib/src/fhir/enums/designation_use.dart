// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Details of how a designation would be used
class DesignationUse {
  // Private constructor for internal use (like enum)
  DesignationUse._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// DesignationUse values
  /// value900000000000003001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DesignationUse value900000000000003001 = DesignationUse._(
    '900000000000003001',
  );

  /// value900000000000013009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DesignationUse value900000000000013009 = DesignationUse._(
    '900000000000013009',
  );

  /// For instances where an Element is present but not value

  static final DesignationUse elementOnly = DesignationUse._('');

  /// List of all enum-like values
  static final List<DesignationUse> values = [
    value900000000000003001,
    value900000000000013009,
  ];

  /// Returns the enum value with an element attached
  DesignationUse withElement(Element? newElement) {
    return DesignationUse._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [DesignationUse] from JSON.
  static DesignationUse fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DesignationUse.elementOnly.withElement(element);
    }
    return DesignationUse.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
