// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Identifies the purpose for this identifier, if known .
class IdentifierUse {
  // Private constructor for internal use (like enum)
  IdentifierUse._(this.fhirCode, {this.element});

  /// Factory constructor to create [IdentifierUse] from JSON.
  factory IdentifierUse.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IdentifierUse.elementOnly.withElement(element);
    }
    return IdentifierUse._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// IdentifierUse values
  /// usual
  static final IdentifierUse usual = IdentifierUse._(
    'usual',
  );

  /// official
  static final IdentifierUse official = IdentifierUse._(
    'official',
  );

  /// temp
  static final IdentifierUse temp = IdentifierUse._(
    'temp',
  );

  /// secondary
  static final IdentifierUse secondary = IdentifierUse._(
    'secondary',
  );

  /// old
  static final IdentifierUse old = IdentifierUse._(
    'old',
  );

  /// For instances where an Element is present but not value

  static final IdentifierUse elementOnly = IdentifierUse._('');

  /// List of all enum-like values
  static final List<IdentifierUse> values = [
    usual,
    official,
    temp,
    secondary,
    old,
  ];

  /// Returns the enum value with an element attached
  IdentifierUse withElement(Element? newElement) {
    return IdentifierUse._(fhirCode, element: newElement);
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
