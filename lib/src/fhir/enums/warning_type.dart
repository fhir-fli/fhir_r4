// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Classification of warning type.
class WarningType {
  // Private constructor for internal use (like enum)
  WarningType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// WarningType values
  /// P313
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final WarningType P313 = WarningType._(
    'P313',
  );

  /// P314
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final WarningType P314 = WarningType._(
    'P314',
  );

  /// P315
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final WarningType P315 = WarningType._(
    'P315',
  );

  /// P320
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final WarningType P320 = WarningType._(
    'P320',
  );

  /// P321
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final WarningType P321 = WarningType._(
    'P321',
  );

  /// P322
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final WarningType P322 = WarningType._(
    'P322',
  );

  /// P330
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final WarningType P330 = WarningType._(
    'P330',
  );

  /// P331
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final WarningType P331 = WarningType._(
    'P331',
  );

  /// P361
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final WarningType P361 = WarningType._(
    'P361',
  );

  /// P363
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final WarningType P363 = WarningType._(
    'P363',
  );

  /// For instances where an Element is present but not value

  static final WarningType elementOnly = WarningType._('');

  /// List of all enum-like values
  static final List<WarningType> values = [
    P313,
    P314,
    P315,
    P320,
    P321,
    P322,
    P330,
    P331,
    P361,
    P363,
  ];

  /// Returns the enum value with an element attached
  WarningType withElement(Element? newElement) {
    return WarningType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [WarningType] from JSON.
  static WarningType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return WarningType.elementOnly.withElement(element);
    }
    return WarningType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'WarningType.$fhirCode';
}
